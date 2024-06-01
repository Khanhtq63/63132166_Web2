package tqk.QLSV.Services;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import Serializable.DiemThiId;
import tqk.QLSV.Models.DiemThiModel;

public interface DiemThiService {
    List<DiemThiModel> getAllDiemThi();
    DiemThiModel saveDiemThi(DiemThiModel diemThi);
    DiemThiModel getDiemThiByID(DiemThiId id);
    DiemThiModel updateDiemThi(DiemThiModel diemThi);
    void deleteDiemThiByID(DiemThiId id);
    Page<DiemThiModel> getDiemThiPage(Pageable pageable);
    Page<DiemThiModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable);
    Page<DiemThiModel> findByMaSinhVienContaining(String maSinhVien, Pageable pageable);

}
