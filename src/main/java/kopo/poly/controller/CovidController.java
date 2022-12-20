package kopo.poly.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import kopo.poly.dto.CovidHospitalDTO;
import kopo.poly.dto.CovidKoreaDTO;
import kopo.poly.service.ICovidService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@RequestMapping("/covid")
@RequiredArgsConstructor
@Controller
public class CovidController {

    private final ICovidService covidService;

    @GetMapping("hospital")
    @ResponseBody
    public String covidHospital(Model model) throws Exception {
        log.info(this.getClass().getName() + "코로나 병원정보 가져오기 시작!");

        List<CovidHospitalDTO> covidHospitalDTOList = covidService.getCovidHospital();

        model.addAttribute("cList", covidHospitalDTOList);
        log.info(this.getClass().getName() + "코로나 병원정보 가져오기 종료!");
        return "test";
    }

    @GetMapping("korea")
    @ResponseBody
    public String korea() throws Exception {

        log.info(this.getClass().getName() + " 국내 확진자 발생현황 조회");

        List<CovidKoreaDTO> covidKoreaDTOList = covidService.getCovidKorea();

        CovidKoreaDTO covidKoreaDTO = new CovidKoreaDTO();
        return "test";
    }

    @GetMapping("genderAge")
    @ResponseBody
    public String genderAge()throws Exception {
        log.info(this.getClass().getName() + "성별 나이별 코로나 확진자 조회");

        covidService.getCovidGenderAge();

        return "test";
    }
}
