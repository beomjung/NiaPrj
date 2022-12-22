package kopo.poly.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CovidClinic {

    /* 요청 파라미터 */
    private String pageNo;
    private String numOfRows;
    private String apiType;
    private String std_day; // 기준일
    private String sido; // 시도명
    private String sigungu; // 시구군

    /* 결과 값*/
    private String resultCode;
    private String resultMsg;
    private String totalCnt;
    private String stdDay; // 기준일
    private String hospitalNm; // 클리닉명
    private String hospitalAddr; // 주소
    private String hospitalTel; // 전화번호
    private String sampleTakeYn; // 검체 채취여부

    /* API 파싱*/
    List<CovidClinic> items;

}
