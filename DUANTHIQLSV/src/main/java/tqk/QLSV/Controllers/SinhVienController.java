package tqk.QLSV.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Services.SinhVienService;

@Controller
@RequestMapping("/SinhVien")
public class SinhVienController {
    @Autowired 
    SinhVienService sinhVienService;

    @GetMapping("/all")
    public String getAllSinhVien(Model model) {
        List<SinhVienModel> dssvList = sinhVienService.getAllSinhVien();
        model.addAttribute("DSSinhVien", dssvList);
        return "sinhvien";
    }

    @GetMapping("/addsv")
    public String createSinhVienForm(Model model) {
        model.addAttribute("DSSinhVien", new SinhVienModel());
        return "addsv";
    }

    @PostMapping("/sav")
    public String saveSinhVien(@ModelAttribute("DSSinhVien") SinhVienModel sinhVien) {
        sinhVienService.SaveSinhVien(sinhVien);
        return "redirect:/SinhVien/all";
    }
    
    @GetMapping("/edit/{maSinhVien}")
    public String editSinhVien(@PathVariable String maSinhVien, Model model) {
    	model.addAttribute("DSSinhVien", sinhVienService.getSinhVienByID(maSinhVien));
    	return "updatesv";
    }
    
    @GetMapping("/read/{maSinhVien}")
    public String readSinhVien(@PathVariable String maSinhVien, Model model) {
        SinhVienModel sinhVien = sinhVienService.getSinhVienByID(maSinhVien);
        model.addAttribute("sinhVien", sinhVien);
        return "readsv";
    }
   
    @GetMapping("/delete/{maSinhVien}")
    public String deleteSinhVien(@PathVariable String maSinhVien) {
        sinhVienService.DeleteStudentByID(maSinhVien);
        return "redirect:/SinhVien/all";
    }
    
    @GetMapping("/search")
    public String searchSinhVien(@RequestParam("hoTen") String tenSinhVien, Model model) {
        List<SinhVienModel> dssvList = sinhVienService.SearchSinhVienByName(tenSinhVien);
        model.addAttribute("DSSinhVien", dssvList);
        return "sinhvien";
    }
}
