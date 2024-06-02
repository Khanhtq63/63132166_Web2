package tqk.QLSV.Services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import Serializable.DiemThiId;
import tqk.QLSV.Models.DiemThiModel;
import tqk.QLSV.Repositories.DiemThiRepository;

@Service
public class DiemThiServiceImp implements DiemThiService {

	 @Autowired
	    private DiemThiRepository diemThiRepository;

	 @Override
	 public List<DiemThiModel> getAllDiemThi() {
	     List<DiemThiModel> result = diemThiRepository.findAll();
	     return result != null ? result : new ArrayList<>();
	 }

	    @Override
	    public DiemThiModel saveDiemThi(DiemThiModel diemThi) {
	        return diemThiRepository.save(diemThi);
	    }

	    @Override
	    public DiemThiModel getDiemThiByID(DiemThiId id) {
	        Optional<DiemThiModel> opt = diemThiRepository.findById(id);
	        return opt.orElse(null);
	    }

	    @Override
	    public DiemThiModel updateDiemThi(DiemThiModel diemThi) {
	        return diemThiRepository.save(diemThi);
	    }

	    @Override
	    public void deleteDiemThiByID(DiemThiId id) {
	        diemThiRepository.deleteById(id);
	    }
	    
	    @Override
	   	public Page<DiemThiModel> getDiemThiPage(Pageable pageable) {
	   		Page<DiemThiModel> page = diemThiRepository.findAll(pageable);
	   	    if (page == null) {
	   	        // Trường hợp không tìm thấy dữ liệu, trả về một trang rỗng
	   	        return Page.empty(pageable);
	   	    }
	   	    return page;
	   	}
	    
	    @Override
	    public Page<DiemThiModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable) {
	        return diemThiRepository.findByMaMonHocContaining(maMonHoc, pageable);
	    }

	    @Override
	    public Page<DiemThiModel> findByMaSinhVienContaining(String maSinhVien, Pageable pageable) {
	        return diemThiRepository.findByMaSinhVienContaining(maSinhVien, pageable);
	    }
	    
	    @Override
	    public boolean existsById(DiemThiId id) {
	        return diemThiRepository.existsById(id);
	    }
}
