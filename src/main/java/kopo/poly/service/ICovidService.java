package kopo.poly.service;

import kopo.poly.dto.*;

import java.util.List;

public interface ICovidService {

    /* 공공데이터 - 건강보험 심사 평가원 코로나19 병원정보(국민안심병원 외)*/
    List<CovidHospitalDTO> getCovidHospital(CovidHospitalDTO covidHospitalDTO) throws Exception;

    /* 질병관리본부 국내 코로나 발생현황 조회*/
    CovidKoreaDTO getCovidKorea() throws Exception;

    List<CovidGenderAgeDTO> getCovidGenderAge() throws Exception;

    List<CovidLocationDTO> getCovidLocation() throws Exception;

    /* 코로나 호흡기 전담 클리닉  조회*/
    List<CovidClinic> getCovidClinic(CovidClinic covidClinic) throws Exception;
}
