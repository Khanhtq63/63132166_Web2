package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tqk.QLSV.Models.MonHocModel;
import tqk.QLSV.Services.MonHocService;

@Controller
@RequestMapping("/MonHoc")
public class MonHocController {

    @Autowired
    private MonHocService monHocService;

    @GetMapping("/all")
    public String getAllMonHoc(Model model) {
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        return "monhoc";
    }

    @GetMapping("/add")
    public String createMonHocForm(Model model) {
        model.addAttribute("DSMonHoc", new MonHocModel());
        return "addmh";
    }

    @PostMapping("/save")
    public String saveMonHoc(@ModelAttribute("DSMonHoc") MonHocModel monHoc) {
        monHocService.saveMonHoc(monHoc);
        return "redirect:/MonHoc/all";
    }

    @GetMapping("/edit/{maMonHoc}")
    public String editMonHoc(@PathVariable String maMonHoc, Model model) {
        model.addAttribute("DSMonHoc", monHocService.getMonHocByID(maMonHoc));
        return "updatemh";
    }

    @GetMapping("/delete/{maMonHoc}")
    public String deleteMonHoc(@PathVariable String maMonHoc) {
        monHocService.deleteMonHocByID(maMonHoc);
        return "redirect:/MonHoc/all";
    }
}
