package kopo.poly.service;

import kopo.poly.dto.CovidGenderAgeDTO;
import kopo.poly.dto.CovidHospitalDTO;
import kopo.poly.dto.CovidKoreaDTO;
import kopo.poly.dto.CovidLocationDTO;

import java.util.List;

public interface ICovidService {

    /* 공공데이터 - 건강보험 심사 평가원 코로나19 병원정보(국민안심병원 외)*/
    List<CovidHospitalDTO> getCovidHospital() throws Exception;

    /* 질병관리본부 국내 코로나 발생현황 조회*/
    List<CovidKoreaDTO> getCovidKorea() throws Exception;

    List<CovidGenderAgeDTO> getCovidGenderAge() throws Exception;

    List<CovidLocationDTO> getCovidLocation() throws Exception;
}
