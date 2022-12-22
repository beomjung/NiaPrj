package kopo.poly.service.impl;

import kopo.poly.dto.*;
import kopo.poly.service.IStatService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;


@Slf4j
@Service
@RequiredArgsConstructor
public class StatService implements IStatService {
    private final RestTemplate restTemplate;

    @Override
    public StatOneDTO getStatOne(StatOneDTO statOneDTO) throws Exception {
        log.info(this.getClass().getName() + " 보건복지부 1군 감염병 현황 가져오기 시작!");

        StringBuilder sb = new StringBuilder();
        sb.append("http://223.130.129.189:9191/getCallStat01Api/")
                .append("numOfRows=").append("100")
                .append("&pageNo=").append("1")
                .append("&apiType=").append("JSON")
                .append("&year=").append(statOneDTO.getYear() != null ? statOneDTO.getYear() : "2019")
                .append("&dvsd=").append(statOneDTO.getDvsd() != null ? statOneDTO.getDvsd() : "서울");

        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        ResponseEntity<StatOneDTO> response = restTemplate.exchange(sb.toString(), HttpMethod.GET, entity, StatOneDTO.class);

        log.info("가져온 리스트 사이즈 는 ?" + response.getBody().getItems().size());
        log.info("1군 결과는 : " + response.getBody().getItems());

        log.info(this.getClass().getName() + " 보건복지부 1군 감염병 현황 가져오기 종료!");
        return response.getBody().getItems().get(0);
    }

    @Override
    public StatFourDTO getStatFour(StatOneDTO statOneDTO) throws Exception {
        log.info(this.getClass().getName() + "보건복지부 4군 감염병 현황 가져오기 시작!");

        StringBuilder sb = new StringBuilder();
        sb.append("http://223.130.129.189:9191/getCallStat04Api/")
                .append("numOfRows=").append("100")
                .append("&pageNo=").append("1")
                .append("&apiType=").append("JSON")
                .append("&year=").append(statOneDTO.getYear() != null ? statOneDTO.getYear() : "2019")
                .append("&dvsd=").append(statOneDTO.getDvsd() != null ? statOneDTO.getDvsd() : "서울");
        
        restTemplate.getInterceptors().add((request, body, execution) -> {
            ClientHttpResponse response = execution.execute(request, body);
            response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
            return response;
        });

        HttpHeaders headers = new HttpHeaders();
        HttpEntity entity = new HttpEntity(headers);

        ResponseEntity<StatFourDTO> response = restTemplate.exchange(sb.toString(), HttpMethod.GET, entity, StatFourDTO.class);

        log.info("가져온 리스트 사이즈 는 ?" + response.getBody().getItems().size());
        log.info("4군 결과는 : " + response.getBody().getItems());


        log.info(this.getClass().getName() + "보건복지부 4군 감염병 현황 가져오기 종료!");
        return response.getBody().getItems().get(0);
    }
}
