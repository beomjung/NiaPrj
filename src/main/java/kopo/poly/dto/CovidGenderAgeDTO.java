package kopo.poly.dto;

import lombok.*;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CovidGenderAgeDTO {

    /* 요청 파라미터 */
    private String pageNo;
    private String numOfRows;
    private String apiType;
    private String create_dt; // 기준일


    /* 결과 파라미터 */
    private String resultCode;
    private String resultMsg;
    private String totalCount;
    private String createDt; // 등록일자
    private String gubun; // 구분 명
    private String confCase; // 확진자 수
    private String confCaseRate; // 확진율
    private String death; // 사망자 수
    private String deathRate; // 사망률
    private String criticalRate; // 치명율

    /* API 파싱 */
    List<CovidGenderAgeDTO> items;

}
