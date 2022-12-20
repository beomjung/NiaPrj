package kopo.poly.service.impl;

import kopo.poly.dto.HospitalDTO;
import kopo.poly.service.IHospitalService;
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
public class HospitalService implements IHospitalService {

    private final RestTemplate restTemplate;

    @Override
    public List<HospitalDTO> getHospital() throws Exception {
        log.info(this.getClass().getName() + "전국 의료기관 조회 시작!");

        StringBuilder url = new StringBuilder();
        url.append("http://223.130.129.189:9191/getEgytBassInfoInqire/")
                .append("STAGE1=").append("서울")
                .append("&STAGE2=").append("강남구");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        ResponseEntity<HospitalDTO> response = restTemplate.exchange(url.toString(), HttpMethod.GET, entity, HospitalDTO.class);

        HospitalDTO hospitalDTO = new HospitalDTO();
        hospitalDTO.setBody((Map<String, Object>) response.getBody().getResponse().get("body"));
        hospitalDTO.setItems((Map<String, Object>) hospitalDTO.getBody().get("items"));
        hospitalDTO.setItem((List<HospitalDTO>) hospitalDTO.getItems().get("item"));

        log.info(this.getClass().getName() + "전국 의료기관 조회 종료!");

        return hospitalDTO.getItem();
    }
}
