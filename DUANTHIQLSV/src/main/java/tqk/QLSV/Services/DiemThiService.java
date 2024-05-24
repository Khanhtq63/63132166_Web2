package tqk.QLSV.Services;

import java.util.List;

import Serializable.DiemThiId;
import tqk.QLSV.Models.DiemThiModel;

public interface DiemThiService {
    List<DiemThiModel> getAllDiemThi();
    DiemThiModel saveDiemThi(DiemThiModel diemThi);
    DiemThiModel getDiemThiByID(DiemThiId id);
    DiemThiModel updateDiemThi(DiemThiModel diemThi);
    void deleteDiemThiByID(DiemThiId id);
}
