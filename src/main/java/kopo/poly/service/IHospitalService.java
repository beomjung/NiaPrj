package kopo.poly.service;

import kopo.poly.dto.HospitalDTO;

import java.util.List;

public interface IHospitalService {
    /* 전국 응급의료기관 조회 서비스*/
    List<HospitalDTO> getHospital(HospitalDTO hospitalDTO) throws Exception;
}
