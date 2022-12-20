package kopo.poly.controller;

import kopo.poly.dto.HospitalDTO;
import kopo.poly.service.IHospitalService;
import kopo.poly.service.impl.HospitalService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@RequestMapping("/hospital")
@RequiredArgsConstructor
@Controller
public class HospitalController {
    private final IHospitalService hospitalService;

    @GetMapping("searchHospital")
    @ResponseBody
    public String searchHospital(Model model)throws Exception {
        log.info(this.getClass().getName()+"전국 응급의료기관 조회 서비스 시작!");

        List<HospitalDTO> hospitalServiceList = hospitalService.getHospital();
        log.info("가져온 응급의료기관 조회 수는 : " + hospitalServiceList.size());

        model.addAttribute("hList", hospitalServiceList);

        return "test";
    }


}
