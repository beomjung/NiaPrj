package kopo.poly.dto;

import lombok.*;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CovidHospitalDTO {

    /* 요청 파라미터 */
    private String pageNo; // 페이지 번호
    private String numOfRows; // 한 페이지 결과 수
    private String spclAdmTyCd; // 구분 코드 == 결과 파라미터 공통

    /* 결과 파라미터 */
    private String resultCode; // 결과 코드
    private String resultMsg; // 결과 메시지
    private String totalCount; // 전체 결과 수
    private String sidoNm; // 시도명
    private String sgguNm; // 시구군 이름
    private String yadmNm; // 기관명
    private String hospTyTpCd; // 선정 유형
    private String telno; // 전화번호
    private String adtFrDd; // 운영가능 일자


    /* API 결과 파싱 */
    Map<String, Object> response;
    Map<String, Object> body;
    Map<String, Object> items;
    List<CovidHospitalDTO> item;
}
