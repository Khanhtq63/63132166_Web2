package tqk.QLSV.Controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
    public String getAllDiemThi(Model model,@RequestParam(defaultValue = "0") int page) {
    	Pageable pageable = PageRequest.of(page, 5);
    	Page<DiemThiModel> diemThiPage = diemThiService.getDiemThiPage(pageable);
        model.addAttribute("DSDiemThi", diemThiService.getAllDiemThi());
        model.addAttribute("totalPages", diemThiPage.getTotalPages());
        model.addAttribute("currentPage", page);
        return "diemthi";
    }

    @GetMapping("/adddt")
    public String createDiemThiForm(Model model) {
        model.addAttribute("diemThi", new DiemThiModel());
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        model.addAttribute("DSSinhVien", sinhVienService.getAllSinhVien());
        return "adddt";
    }

    @PostMapping("/save")
    public String saveDiemThi(@ModelAttribute("diemThi") DiemThiModel diemThi) {
        // Kiểm tra và thiết lập giá trị mặc định cho các trường điểm nếu chúng không được cung cấp
        if (diemThi.getDiemQuaTrinh() == null) {
            diemThi.setDiemQuaTrinh(0f); // Giá trị mặc định cho điểm quá trình là 0
        }
        if (diemThi.getDiemGiuaKy() == null) {
            diemThi.setDiemGiuaKy(0f); // Giá trị mặc định cho điểm giữa kỳ là 0
        }
        if (diemThi.getDiemCuoiKy() == null) {
            diemThi.setDiemCuoiKy(0f); // Giá trị mặc định cho điểm cuối kỳ là 0
        }

        // Lưu điểm thi vào cơ sở dữ liệu
        diemThiService.saveDiemThi(diemThi);
        return "redirect:/DiemThi/all";
    }

    @GetMapping("/edit/{maMonHoc}/{maSinhVien}")
    public String editDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien, Model model) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        model.addAttribute("diemThi", diemThiService.getDiemThiByID(id));
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        model.addAttribute("DSSinhVien", sinhVienService.getAllSinhVien());
        return "updatedt";
    }
    
    @PostMapping("/updatedt")
    public String updateDiemThi(@ModelAttribute("diemThi") DiemThiModel diemThi) {
        // Kiểm tra và thiết lập giá trị mặc định cho các trường điểm nếu chúng không được cung cấp
        if (diemThi.getDiemQuaTrinh() == null) {
            diemThi.setDiemQuaTrinh(0f); // Giá trị mặc định cho điểm quá trình là 0
        }
        if (diemThi.getDiemGiuaKy() == null) {
            diemThi.setDiemGiuaKy(0f); // Giá trị mặc định cho điểm giữa kỳ là 0
        }
        if (diemThi.getDiemCuoiKy() == null) {
            diemThi.setDiemCuoiKy(0f); // Giá trị mặc định cho điểm cuối kỳ là 0
        }

        // Lưu điểm thi vào cơ sở dữ liệu
        diemThiService.updateDiemThi(diemThi);
        return "redirect:/DiemThi/all";
    }

    @GetMapping("/delete/{maMonHoc}/{maSinhVien}")
    public String deleteDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        diemThiService.deleteDiemThiByID(id);
        return "redirect:/DiemThi/all";
    }
    
    @GetMapping("/search")
    public String searchDiemThi(Model model, @RequestParam(defaultValue = "0") int page,
                                 @RequestParam(name = "maMonHoc", required = false) String maMonHoc,
                                 @RequestParam(name = "maSinhVien", required = false) String maSinhVien) {
        Pageable pageable = PageRequest.of(page, 10); // Số lượng item trên mỗi trang là 10, bạn có thể thay đổi tùy ý
        
        if (maMonHoc != null && !maMonHoc.isEmpty() && maSinhVien != null && !maSinhVien.isEmpty()) {
            // Nếu cả hai mã đều được nhập, sử dụng phương thức getDiemThiByID để chỉ tìm ra một bản ghi duy nhất
            DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
            DiemThiModel diemThi = diemThiService.getDiemThiByID(id);
            
            if (diemThi != null) {
                List<DiemThiModel> result = new ArrayList<>();
                result.add(diemThi);
                model.addAttribute("DSDiemThi", result);
            } else {
                // Nếu không tìm thấy, trả về trang không có dữ liệu
                model.addAttribute("DSDiemThi", new ArrayList<DiemThiModel>());
            }
        } else if (maMonHoc != null && !maMonHoc.isEmpty()) {
            model.addAttribute("DSDiemThi", diemThiService.findByMaMonHocContaining(maMonHoc, pageable));
        } else if (maSinhVien != null && !maSinhVien.isEmpty()) {
            model.addAttribute("DSDiemThi", diemThiService.findByMaSinhVienContaining(maSinhVien, pageable));
        } else {
            // Nếu không có tiêu chí tìm kiếm, chuyển hướng về trang danh sách điểm thi
            return "redirect:/DiemThi/all";
        }
        return "diemthi";
    }
}