package kopo.poly.service.impl;

import kopo.poly.dto.*;
import kopo.poly.service.ICovidService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class CovidService implements ICovidService {

    private final RestTemplate restTemplate;

    @Override
    public List<CovidHospitalDTO> getCovidHospital() throws Exception {
        log.info(this.getClass().getName() + "건강보험심사평가원 코로나19 병원정보 가져오기 시작!");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getpubReliefHospList/")
                .append("numOfRows=").append("100")
                .append("&pageNo").append("1")
                .append("&spclAdmTyCd=").append("");

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        ResponseEntity<CovidHospitalDTO> response = restTemplate.exchange(url.toString(), HttpMethod.GET, entity, CovidHospitalDTO.class);

        log.info("가져온 코로나 병원 정보 결과는 : " + response.getBody().getResponse().get("body"));

        CovidHospitalDTO covidHospitalDTO = new CovidHospitalDTO();

        covidHospitalDTO.setBody((Map<String, Object>) response.getBody().getResponse().get("body"));
        covidHospitalDTO.setItems((Map<String, Object>) covidHospitalDTO.getBody().get("items"));
        covidHospitalDTO.setItem((List<CovidHospitalDTO>) covidHospitalDTO.getItems().get("item"));

        log.info(this.getClass().getName() + "건강보험심사평가원 코로나19 병원정보 가져오기 종료!");
        return covidHospitalDTO.getItem();
    }

    @Override
    public List<CovidKoreaDTO> getCovidKorea() throws Exception {
        log.info(this.getClass().getName() + "국내 코로나 발생현황 조회 시작!");

        //TODO 이건 다시 봐야겠다 왜 LinkedHashMap으로 나오지?
        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        ResponseEntity<CovidKoreaDTO> response = restTemplate.exchange("http://223.130.129.189:9191/getCovid19CurrentStatusConfirmationsJson/numOfRows=100&pageNo=1", HttpMethod.GET, null, CovidKoreaDTO.class);

        log.info(this.getClass().getName() + "국내 코로나 발생현황 조회 종료");

        return (List<CovidKoreaDTO>) response.getBody().getResponse().get("result");
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
        return null;
    }
}
