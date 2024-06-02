package tqk.QLSV.Controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Services.LopHocService;
import tqk.QLSV.Services.SinhVienService;

@Controller
@RequestMapping("/SinhVien")
public class SinhVienController {
    @Autowired 
    SinhVienService sinhVienService;
    
    @Autowired 
    LopHocService lopHocService;

    @GetMapping("/all")
    public String getAllSinhVien(Model model, @RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<SinhVienModel> sinhVienPage = sinhVienService.getSinhVienPage(pageable);
        model.addAttribute("DSSinhVien", sinhVienPage.getContent());
        model.addAttribute("totalPages", sinhVienPage.getTotalPages());
        model.addAttribute("currentPage", page);
        return "sinhvien";
    }


    @GetMapping("/addsv")
    public String createSinhVienForm(Model model) {
        model.addAttribute("DSSinhVien", new SinhVienModel());
        model.addAttribute("DSLopHoc", lopHocService.getAllLopHoc());
        return "addsv";
    }

    @PostMapping("/sav")
    public String saveSinhVien(@ModelAttribute("DSSinhVien") SinhVienModel sinhVien, Model model) {
        // Kiểm tra xem mã số sinh viên đã tồn tại chưa
        SinhVienModel existingSinhVien = sinhVienService.getSinhVienByID(sinhVien.getMaSinhVien());
        if (existingSinhVien != null) {
            // Nếu mã số sinh viên đã tồn tại, thông báo cho người dùng
            model.addAttribute("error", "Mã số sinh viên đã tồn tại!");
            model.addAttribute("DSSinhVien", sinhVien); // Trả về lại thông tin sinh viên để hiển thị trên form
            model.addAttribute("DSLopHoc", lopHocService.getAllLopHoc());
            return "addsv"; // Trả về trang cập nhật sinh viên với thông báo lỗi
        } else {
            // Nếu mã số sinh viên chưa tồn tại, thêm sinh viên vào cơ sở dữ liệu
            sinhVienService.SaveSinhVien(sinhVien);
            return "redirect:/SinhVien/all";
        }
    }
    
    @GetMapping("/edit/{maSinhVien}")
    public String editSinhVien(@PathVariable String maSinhVien, Model model) {
    	model.addAttribute("DSSinhVien", sinhVienService.getSinhVienByID(maSinhVien));
    	model.addAttribute("DSLopHoc",lopHocService.getAllLopHoc());
    	return "updatesv";
    }
    
    @PostMapping("/update")
    public String updateSinhVien(@ModelAttribute("DSSinhVien") SinhVienModel sinhVien) {     
         sinhVienService.SaveSinhVien(sinhVien);
         return "redirect:/SinhVien/all";
        
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
    public String searchSinhVien(@RequestParam("searchType") String searchType, 
                                 @RequestParam("searchValue") String searchValue, 
                                 @RequestParam(defaultValue = "0") int page,
                                 Model model) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<SinhVienModel> sinhVienPage;
        
        switch (searchType) {
            case "maSinhVien":
                sinhVienPage = sinhVienService.SearchSinhVienByMaSV(searchValue, pageable);
                break;
            case "gioiTinh":
                sinhVienPage = sinhVienService.SearchSinhVienByGioiTinh(searchValue, pageable);
                break;
            case "maLop":
                sinhVienPage = sinhVienService.SearchSinhVienByMaLop(searchValue, pageable);
                break;
            default:
                sinhVienPage = sinhVienService.SearchSinhVienByName(searchValue, pageable);
                break;
        }
        model.addAttribute("DSSinhVien", sinhVienPage.getContent());
        model.addAttribute("totalPages", sinhVienPage.getTotalPages());
        model.addAttribute("currentPage", page);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);
        return "sinhvien";
    }

}
