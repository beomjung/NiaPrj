package kopo.poly.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
// 보건 복지부 제 1군 감염병 현황
public class StatOneDTO {

    /* 요청 파라미터 */
    private String serviceKey; // 서비스 키
    private String pageNo; // 페이지 번호 == 결과포함
    private String numOfRows; // 한 페이지 결과 수 == 결과 포함
    private String apiType; // 결과형식(XML, JSON)
    private String year; // 년도 == 결과포함
    private String dvsd; // 시도구분 == 결과 포함
    private String resultCode; //결과코드

    /* 결과 파라미터 */
    private String resultMsg; //결과메시지
    private String totalCount; //전체 결과 수
    private String typdOcrt; //장티푸스_발생률
    private String chlrNmdth; //콜레라_사망수
    private String bctdsNmdth; //세균성이질_사망수
    private String prfvrNmdth; //파라티푸스_사망수
    private String typdOcnm; //장티푸스_발생수
    private String chlrOcnm; //콜레라_발생수
    private String hptaOcrt; //A형간염_발생률
    private String bctdsOcnm; //세균성이질_발생수
    private String etclifOcrt; //결과코드
    private String hptaNmdth; //A형간염_사망수
    private String typdNmdth; //장티푸스_사망수
    private String bctdsOcrt; //세균성이질_발생률
    private String chlrOcrt; //콜레라_발생률
    private String etclifOcnm; //장출혈성대장균감염증_발생수
    private String prfvrOcnm; //파라티푸스_발생수
    private String prfvrOcrt; //파라티푸스_발생률
    private String hptaOcnm; //A형간염_발생수
    private String etclifNmdth; //장출혈성대장균감염증_사망수

    List<StatOneDTO> items;


}
