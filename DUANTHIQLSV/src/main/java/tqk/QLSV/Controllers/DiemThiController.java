package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import tqk.QLSV.Models.DiemThiModel;
import tqk.QLSV.Services.DiemThiService;
import tqk.QLSV.Services.MonHocService;
import tqk.QLSV.Services.SinhVienService;
import Serializable.DiemThiId;

@Controller
@RequestMapping("/DiemThi")
public class DiemThiController {

    @Autowired
    private DiemThiService diemThiService;
    
    @Autowired
    private SinhVienService sinhVienService;
    
    @Autowired
    private MonHocService monHocService;

    @GetMapping("/all")
    public String getAllDiemThi(Model model) {
        model.addAttribute("DSDiemThi", diemThiService.getAllDiemThi());
        return "diemthi";
    }

    @GetMapping("/adddt")
    public String createDiemThiForm(Model model) {
        model.addAttribute("diemThi", new DiemThiModel());
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        return "adddt";
    }

    @PostMapping("/save")
    public String saveDiemThi(@ModelAttribute("diemThi") DiemThiModel diemThi) {
        diemThiService.saveDiemThi(diemThi);
        return "redirect:/DiemThi/all";
    }

    @GetMapping("/edit/{maMonHoc}/{maSinhVien}")
    public String editDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien, Model model) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        model.addAttribute("diemThi", diemThiService.getDiemThiByID(id));
        return "updatedt";
    }

    @GetMapping("/delete/{maMonHoc}/{maSinhVien}")
    public String deleteDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        diemThiService.deleteDiemThiByID(id);
        return "redirect:/DiemThi/all";
    }
}
