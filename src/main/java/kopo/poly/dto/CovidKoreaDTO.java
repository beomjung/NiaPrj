package kopo.poly.dto;

import kopo.poly.controller.CovidController;
import lombok.*;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CovidKoreaDTO {

    /* 결과 파라미터*/
    private String resultCode; // 결과코드
    private String resultMsg; // 결과 메시지
    private String resultCnt; // 결과 갯수
    private String mmddhh; // 데이터 조회 기준 일시
    private String mmdd1; //기준 일자 -6
    private String cnt1; // 일일발생현황_1
    private String rate1; // 인구 10만명당 발생현황
    private String mmdd2; // 데이터 조회일 기준 -5
    private String cnt2; // 일일 발생현황
    private String rate2; // 인구 10만명당 발생현황 _2

    private String mmdd3; // 데이터 조회일 기준 -4
    private String cnt3; // 일일 발생현황
    private String rate3; // 인구 10만명당 발생현황 _2

    private String mmdd4; // 데이터 조회일 기준 -3
    private String cnt4; // 일일 발생현황
    private String rate4; // 인구 10만명당 발생현황 _2

    private String mmdd5; // 데이터 조회일 기준 -2
    private String cnt5; // 일일 발생현황
    private String rate5; // 인구 10만명당 발생현황 _2

    private String mmdd6; // 데이터 조회일 기준 -1
    private String cnt6; // 일일 발생현황
    private String rate6; // 인구 10만명당 발생현황 _2

    private String mmdd7; // 데이터 조회일 기준
    private String cnt7; // 일일 발생현황
    private String rate7; // 인구 10만명당 발생현황 _2

    private String mmdd8; // 주간 일평균
    private String cnt8; // 일일 발생현황
    private String rate8; // 인구 10만명당 발생현황 _2

    /* API 파싱 */
    Map<String, Object> response;
    List<CovidKoreaDTO> result;
}
