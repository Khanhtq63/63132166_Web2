package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tqk.QLSV.Models.LopHocModel;
import tqk.QLSV.Services.KhoaService;
import tqk.QLSV.Services.LopHocService;

@Controller
@RequestMapping("/LopHoc")
public class LopHocController {

    @Autowired
    private LopHocService lopHocService;

    @Autowired
    private KhoaService khoaService;

    @GetMapping("/all")
    public String getAllLopHoc(Model model) {
        model.addAttribute("DSLopHoc", lopHocService.getAllLopHoc());
        return "lophoc";
    }

    @GetMapping("/addlh")
    public String createLopHocForm(Model model) {
        model.addAttribute("DSLopHoc", new LopHocModel());
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "addlh";
    }

    @PostMapping("/save")
    public String saveLopHoc(@ModelAttribute("DSLopHoc") LopHocModel lopHoc) {
        lopHocService.saveLopHoc(lopHoc);
        return "redirect:/LopHoc/all";
    }

    @GetMapping("/edit/{maLop}")
    public String editLopHoc(@PathVariable String maLop, Model model) {
        model.addAttribute("DSLopHoc", lopHocService.getLopHocByID(maLop));
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "updatelh";
    }

    @GetMapping("/delete/{maLop}")
    public String deleteLopHoc(@PathVariable String maLop) {
        lopHocService.deleteLopHocByID(maLop);
        return "redirect:/LopHoc/all";
    }
}
