package kopo.poly.controller;

import kopo.poly.dto.CovidClinic;
import kopo.poly.dto.CovidHospitalDTO;
import kopo.poly.dto.CovidKoreaDTO;
import kopo.poly.dto.CovidLocationDTO;
import kopo.poly.service.ICovidService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@RequestMapping("/covid")
@RequiredArgsConstructor
@Controller
public class CovidController {

    private final ICovidService covidService;

    @GetMapping("main")
    public String main(Model model) throws Exception {
        log.info(this.getClass().getName() + "페인 메이지 시작!");

        CovidKoreaDTO covidKoreaDTO = covidService.getCovidKorea();
        List<CovidLocationDTO> covidLocationDTOList = covidService.getCovidLocation();

        model.addAttribute("cDTO", covidKoreaDTO);
        model.addAttribute("cList", covidLocationDTOList);

        return "covid/main";
    }

    @GetMapping("hospital")
    public String covidHospital(Model model, CovidHospitalDTO covidHospitalDTO) throws Exception {
        log.info(this.getClass().getName() + "코로나 병원정보 가져오기 시작!");

        if (covidHospitalDTO.getSidoNm() == null) {
            covidHospitalDTO.setSidoNm("서울");
        }
        List<CovidHospitalDTO> covidHospitalDTOList = covidService.getCovidHospital(covidHospitalDTO);


        log.info("가져온 코로나 안심병원 : " + covidHospitalDTOList.size());

        model.addAttribute("cList", covidHospitalDTOList);

        log.info(this.getClass().getName() + "코로나 병원정보 가져오기 종료!");
        return "covid/covidHospital";
    }

    @GetMapping("clinic")
    public String clinic(Model model, CovidClinic covidClinic) throws Exception {
        log.info(this.getClass().getName()+"코로나 클리닉 병원 시작!");

        List<CovidClinic> covidClinicList = covidService.getCovidClinic(covidClinic);

        model.addAttribute("cList", covidClinicList);

        return "covid/covidClinic";
    }
}
