package kopo.poly.dto;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import lombok.*;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class HospitalDTO {

    /* 요청 파라미터 */
    private String stage1;
    private String stage2;

    /* 결과 파라미터 */
    private String resultCode; // 결과 코드
    private String resultMsg; // 결과 메시지
    private String dgidIdName; // 진료과목
    private String dutyAddr; // 주소(전체 주소)
    private String dutyEryn;
    private String dutyHano; //병상수
    private String dutyHayn; // 입원실 가용여부
    private String dutyMapimg; // 간이약도 (찾아오는 주소)
    private String dutyName; // 병원 이름
    private String dutyTel1; // 대표전화
    private String dutyTel3; // 응급실 전화
    private String dutyTime1c; //진료시간
    private String dutyTime1s; // 진료 끝나는 시간
    private String dutyTime2c;
    private String dutyTime2s;
    private String dutyTime3c;
    private String dutyTime3s;
    private String dutyTime4c;
    private String dutyTime4s;
    private String dutyTime5c;
    private String dutyTime5s;
    private String dutyTime6c;
    private String dutyTime6s;
    private String hpbdn; // 병상수
    private String hperyn; // 응급실
    private String hpgryn; // 입원실
    private String hpicuyn; // 일반 중환자실
    private String hpid; // 기관 ID
    private String hpnicuyn; // 신생아 중환자실
    private String hpopyn; // 수술실
    private String hvccc; // 흉부 중환자
    private String hvcc;

    private String hvec; // 응급실
    private String hvgc; // 입원실
    private String hvncc; // 신생중환자
    private String hvoc; // 수술실
    private String MKioskTy1;
    private String MKioskTy10;
    private String MKioskTy11;
    private String MKioskTy2;
    private String MKioskTy25;
    private String MKioskTy3;
    private String MKioskTy4;
    private String MKioskTy5;
    private String MKioskTy6;
    private String MKioskTy7;
    private String MKioskTy8;
    private String MKioskTy9;
    private String postCdn1;
    private String postCdn2;
    private String wgs84Lat; // 병원 위도
    private String wgs84Lon; // 병원 경도

    private String hvicc;
    private String dutyInf;
    private String hpccuyn;
    private String hpcuyn;

    /* JSON 데이터 바로 DTO에 담기*/
    private String numOfRows;
    private String pageNo;
    private String totalCount;
    Map<String, Object> response;
    Map<String, Object> header;
    Map<String, Object> body;
    Map<String, Object> items;
    List<HospitalDTO> item;
}
