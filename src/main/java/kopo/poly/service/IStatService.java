package kopo.poly.service;

import kopo.poly.dto.StatFourDTO;
import kopo.poly.dto.StatOneDTO;


public interface IStatService {

    /* 보건복지부 1군 감염병 가져오기*/
    StatOneDTO getStatOne(StatOneDTO statOneDTO) throws Exception;

    /* 보건복지부 4군 감염병 가져오기*/
    StatFourDTO getStatFour(StatOneDTO statOneDTO) throws Exception;

}
