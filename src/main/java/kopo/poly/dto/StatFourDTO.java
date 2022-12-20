package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
// 보건 복지부 제 4군 감염병 현황
public class StatFourDTO {

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
    private String	nwifOcnm;//신종감염병증후군_발생수
    private String	srptsNmdth	;//	중증급성호흡기증후군_사망수
    private String	btntxOcnm;//	보툴리눔독소증_발생수
    private String	ylfvOcnm;//	황열_발생수
    private String	lydsOcrt;//	라임병_발생률
    private String	pstOcrt;//	페스트_발생률
    private String	lydsOcnm	;//	라임병_발생수
    private String	pckOcnm;//	두창_발생수
    private String	tlrmOcnm;//야토병_발생수
    private String	mdrsdOcnm;//	중동호흡기증후군_발생수
    private String	tbepNmdth	;//진드기매개뇌염_사망수
    private String	ylfvNmdth;//	황열_사망수
    private String	sfvtsNmdth;//	중증열성혈소판감소증후군_사망수
    private String	nwifNmdth	;//신종감염병증후군_사망수
    private String	chfvrNmdth	;//치쿤구니야열_사망수
    private String	mdrsdNmdth;//	중동호흡기증후군_사망수
    private String	ylfvOcrt	;//	황열_발생률
    private String	zkvfNmdth	;//	지카바이러스감염증_사망수
    private String	tbepOcrt	;//	진드기매개뇌염_발생률
    private String	ubrOcrt;//유비저_발생률
    private String pckNmdth	;//	두창_사망수
    private String	tlrmOcrt;//야토병_발생률
    private String	srptsOcrt	;//중증급성호흡기증후군_발생률
    private String	chfvrOcnm;//	치쿤구니야열_발생수
    private String	tlrmNmdth;//	야토병_사망수
    private String	pckOcrt;//	두창_발생률
    private String	amifhOcrt	;//	동물인플루엔자인체감염증_발생률
    private String	queNmdth;//	큐열_사망수
    private String	wsnfvOcnm;//	웨스트나일열_발생수
    private String	pstNmdth;//	페스트_사망수
    private String	sfvtsOcnm;//	중증열성혈소판감소증후군_발생수
    private String	swiflNmdth;//	신종인플루엔자_사망수
    private String	vrhfvNmdth;//바이러스성출혈열_사망수
    private String	mdrsdOcrt;//중동호흡기증후군_발생률
    private String	lydsNmdth;//	라임병_사망수
    private String	vrhfvOcnm;//	바이러스성출혈열_발생수
    private String	amifhNmdth;//	동물인플루엔자인체감염증_사망수
    private String	vrhfvOcrt;//바이러스성출혈열_발생률
    private String	zkvfOcnm;//	지카바이러스감염증_발생수
    private String	srptsOcnm;//중증급성호흡기증후군_발생수
    private String	amifhOcnm;//동물인플루엔자인체감염증_발생수
    private String	chfvrOcrt;//	치쿤구니야열_발생률
    private String	ubrOcnm;//	유비저_발생수
    private String	btntxNmdth;//	보툴리눔독소증_사망수
    private String	queOcrt;//큐열_발생률
    private String	dgfvrOcrt;//	뎅기열_발생률
    private String	wsnfvOcrt;//	웨스트나일열_발생률
    private String	queOcnm;//	큐열_발생수
    private String	tbepOcnm;//	진드기매개뇌염_발생수
    private String	swiflOcnm;//	신종인플루엔자_발생수
    private String	pstOcnm;//	페스트_발생수
    private String	swiflOcrt	;//	신종인플루엔자_발생률
    private String	nwifOcrt;//	신종감염병증후군_발생률
    private String	btntxOcrt;//보툴리눔독소증_발생률
    private String	zkvfOcrt;//	지카바이러스감염증_발생률
    private String	sfvtsOcrt;//	중증열성혈소판감소증후군_발생률
    private String	dgfvrOcnm	;//	뎅기열_발생수
    private String	dgfvrNmdth;//	뎅기열_사망수
    private String	ubrNmdth;//유비저_사망수
    private String	wsnfvNmdth;//웨스트나일열_사망수

    List<StatFourDTO> items;
}
