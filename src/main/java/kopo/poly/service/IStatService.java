package kopo.poly.service;

import kopo.poly.dto.StatFourDTO;
import kopo.poly.dto.StatOneDTO;

import java.util.List;

public interface IStatService {

    /* 보건복지부 1군 감염병 가져오기*/
    List<StatOneDTO> getStatOne() throws Exception;

    /* 보건복지부 4군 감염병 가져오기*/
    List<StatFourDTO> getStatFour() throws Exception;

}
