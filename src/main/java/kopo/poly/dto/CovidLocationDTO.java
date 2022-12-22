package kopo.poly.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CovidLocationDTO {

    /* 요청 파라미터 */
    private String pageNo;
    private String numOfRows;
    private String apiType;
    private String std_day; // 기준일
    private String gubun; // 시도 명

    /* 결과 파라미터 */
    private String resultCode;
    private String resultMsg;
    private String totalCount;
    private String defCnt;
    private String gubunCn; // 시도명(중문)
    private String gubunEn; // 시도명(영문)
    private String incDec; // 전일대비 확진자 증감 수
    private String isolClearCnt; // 누적격리해제수
    private String isolIngCnt; // 격리 중환자 수
    private String localOccCnt; // 지역발생 수
    private String overFlowCnt; // 해외유입 수
    private String qurRate; // 만명당 발생율
    private String stdDay; // 기준일자


    /* API 파싱 */
    List<CovidLocationDTO> items;

}
