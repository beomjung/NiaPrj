package kopo.poly.service.impl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import kopo.poly.dto.*;
import kopo.poly.service.ICovidService;
import kopo.poly.util.DeduplicationUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class CovidService implements ICovidService {

    private final RestTemplate restTemplate;

    @Override
    public List<CovidHospitalDTO> getCovidHospital(CovidHospitalDTO covidHospital) throws Exception {
        log.info(this.getClass().getName() + "건강보험심사평가원 코로나19 병원정보 가져오기 시작!");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getpubReliefHospList/")
                .append("numOfRows=").append("100")
                .append("&pageNo").append("1")
                .append("&spclAdmTyCd=").append(covidHospital.getSpclAdmTyCd() != null ? covidHospital.getSpclAdmTyCd() : "97");

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        ResponseEntity<CovidHospitalDTO> response = restTemplate.exchange(url.toString(), HttpMethod.GET, entity, CovidHospitalDTO.class);

        log.info("가져온 코로나 병원 정보 결과는 : " + response.getBody().getResponse());

        CovidHospitalDTO covidHospitalDTO = new CovidHospitalDTO();

        covidHospitalDTO.setBody((Map<String, Object>) response.getBody().getResponse().get("body"));
        covidHospitalDTO.setItems((Map<String, Object>) covidHospitalDTO.getBody().get("items"));
        covidHospitalDTO.setItem((List<CovidHospitalDTO>) covidHospitalDTO.getItems().get("item"));

        List<CovidHospitalDTO> reCovidHospital = covidHospitalDTO.getItem();

        List<CovidHospitalDTO> covidHospitalDTOList = new ObjectMapper().convertValue(reCovidHospital, new TypeReference<List<CovidHospitalDTO>>() {
        });

        for (int i = 0; i < covidHospitalDTOList.size(); i++) {
            if (!covidHospitalDTOList.get(i).getSidoNm().equals(covidHospital.getSidoNm())) {
                covidHospitalDTOList.remove(i--);
            }else{
                log.info("" + covidHospitalDTOList.get(i).getSidoNm()+"\n");
            }
        }

        log.info(this.getClass().getName() + "건강보험심사평가원 코로나19 병원정보 가져오기 종료!");
        return covidHospitalDTOList;
    }

    @Override
    public CovidKoreaDTO getCovidKorea() throws Exception {
        log.info(this.getClass().getName() + "국내 코로나 발생현황 조회 시작!");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        ResponseEntity<CovidKoreaDTO> response = restTemplate.exchange("http://223.130.129.189:9191/getCovid19CurrentStatusConfirmationsJson/numOfRows=100&pageNo=1", HttpMethod.GET, null, CovidKoreaDTO.class);

        List<CovidKoreaDTO> reCovid = (List<CovidKoreaDTO>) response.getBody().getResponse().get("result");

        log.info("reCovid" + reCovid.size());
        List<CovidKoreaDTO> covidKoreaDTOList = new ObjectMapper().convertValue(reCovid, new TypeReference<List<CovidKoreaDTO>>() {
        });

        CovidKoreaDTO covidKoreaDTO = covidKoreaDTOList.get(0);

        log.info(this.getClass().getName() + "국내 코로나 발생현황 조회 종료");

        return covidKoreaDTO;
    }

    @Override
    public List<CovidGenderAgeDTO> getCovidGenderAge() throws Exception {
        log.info(this.getClass().getName() + "국내 코로나 성별 연령별 확진여부 조회");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getCallCovid05Api/")
                .append("numOfRows=").append("100")
                .append("&pageNo=").append("1")
                .append("&apiType=").append("JSON")
                .append("&create_dt=").append("2022-12-19");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        ResponseEntity<CovidGenderAgeDTO> response = restTemplate.exchange(url.toString(), HttpMethod.GET, null, CovidGenderAgeDTO.class);

        return response.getBody().getItems();
    }

    @Override
    public List<CovidLocationDTO> getCovidLocation() throws Exception {
        log.info(this.getClass().getName() + "코로나 각 시도별 현황 조회 시작!");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getCallCovid04Api/")
                .append("numOfRows=").append("15")
                .append("&apiType=").append("JSON")
                .append("&pageNo=").append("1");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        ResponseEntity<CovidLocationDTO> response = restTemplate.exchange(url.toString(), HttpMethod.GET, entity, CovidLocationDTO.class);
        List<CovidLocationDTO> reCovid = response.getBody().getItems();

        List<CovidLocationDTO> covidKoreaDTOList = new ObjectMapper().convertValue(reCovid, new TypeReference<List<CovidLocationDTO>>() {
        });

        log.info("가져온 결과는 : " + covidKoreaDTOList.size());
        /* 토탈값 제거 */

        for (int i = 0; i < covidKoreaDTOList.size(); i++) {
            if (covidKoreaDTOList.get(i).getGubun().equals("합계")) {
                covidKoreaDTOList.remove(i--);
            }
        }
        covidKoreaDTOList = DeduplicationUtils.deduplication(covidKoreaDTOList, CovidLocationDTO::getGubun);

        Collections.sort(covidKoreaDTOList, new Comparator<CovidLocationDTO>() {
            @Override
            public int compare(CovidLocationDTO o1, CovidLocationDTO o2) {
                return Integer.compare(Integer.parseInt(o2.getDefCnt()), Integer.parseInt(o1.getDefCnt()));
            }
        });

        log.info(this.getClass().getName() + "코로나 각 시도별 현황 조회 종료!");

        return covidKoreaDTOList;

    }

    @Override
    public List<CovidClinic> getCovidClinic(CovidClinic covidClinic) throws Exception {
        log.info(this.getClass().getName() + " 코로나 호흡기 클리닉 가져오기 시작!");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getCallCovid09Api/")
                .append("numOfRows=").append("30")
                .append("&pageNo=").append("1")
                .append("&apiType=").append("JSON")
                .append("&sido=").append(covidClinic.getSido() != null ? covidClinic.getSido() : "서울");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        ResponseEntity<CovidClinic> response = restTemplate.exchange(url.toString(), HttpMethod.GET, entity, CovidClinic.class);

        log.info(""+response.getBody().getItems().size());

        return response.getBody().getItems();
    }
}
