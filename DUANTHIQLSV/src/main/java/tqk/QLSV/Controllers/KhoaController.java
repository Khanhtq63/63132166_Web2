package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tqk.QLSV.Models.KhoaModel;
import tqk.QLSV.Services.KhoaService;

@Controller
@RequestMapping("/Khoa")
public class KhoaController {

    @Autowired
    private KhoaService khoaService;

    @GetMapping("/all")
    public String getAllKhoa(Model model) {
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "khoa";
    }

    @GetMapping("/add")
    public String createKhoaForm(Model model) {
        model.addAttribute("DSKhoa", new KhoaModel());
        return "addk";
    }

    @PostMapping("/save")
    public String saveKhoa(@ModelAttribute("DSKhoa") KhoaModel khoa) {
        khoaService.saveKhoa(khoa);
        return "redirect:/Khoa/all";
    }

    @GetMapping("/edit/{maKhoa}")
    public String editKhoa(@PathVariable String maKhoa, Model model) {
        model.addAttribute("DSKhoa", khoaService.getKhoaByID(maKhoa));
        return "updatek";
    }
    

    @GetMapping("/delete/{maKhoa}")
    public String deleteKhoa(@PathVariable String maKhoa) {
        khoaService.deleteKhoaByID(maKhoa);
        return "redirect:/Khoa/all";
    }
}
