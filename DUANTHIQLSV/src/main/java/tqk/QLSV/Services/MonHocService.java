package tqk.QLSV.Services;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import tqk.QLSV.Models.MonHocModel;

public interface MonHocService {
    List<MonHocModel> getAllMonHoc();
    MonHocModel saveMonHoc(MonHocModel monHoc);
    MonHocModel getMonHocByID(String maMonHoc);
    MonHocModel updateMonHoc(MonHocModel monHoc);
    void deleteMonHocByID(String maMonHoc);
    Page<MonHocModel> getMonHocPage(Pageable pageable);
    Page<MonHocModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable);
    Page<MonHocModel> findByTenMonHocContaining(String tenMonHoc, Pageable pageable);
}
