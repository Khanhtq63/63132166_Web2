package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.LopHocModel;
import tqk.QLSV.Repositories.LopHocRepository;

@Service
public class LopHocServiceImp implements LopHocService {

    @Autowired
    private LopHocRepository lopHocRepository;

    @Override
    public List<LopHocModel> getAllLopHoc() {
        return lopHocRepository.findAll();
    }

    @Override
    public LopHocModel saveLopHoc(LopHocModel lopHoc) {
        return lopHocRepository.save(lopHoc);
    }

    @Override
    public LopHocModel getLopHocByID(String maLop) {
        Optional<LopHocModel> opt = lopHocRepository.findById(maLop);
        return opt.orElse(null);
    }

    @Override
    public LopHocModel updateLopHoc(LopHocModel lopHoc) {
        return lopHocRepository.save(lopHoc);
    }

    @Override
    public void deleteLopHocByID(String maLop) {
        lopHocRepository.deleteById(maLop);
    }

    @Override
    public Page<LopHocModel> searchLopHoc(String maLop, String tenLop, String heDaoTao, String maKhoa, Pageable pageable) {
        return lopHocRepository.findByMaLopContainingAndTenLopContainingAndHeDaoTaoContainingAndMaKhoaContaining(maLop, tenLop, heDaoTao, maKhoa, pageable);
    }
    
    @Override
   	public Page<LopHocModel> getLopHocPage(Pageable pageable) {
   		Page<LopHocModel> page = lopHocRepository.findAll(pageable);
   	    if (page == null) {
   	        // Trường hợp không tìm thấy dữ liệu, trả về một trang rỗng
   	        return Page.empty(pageable);
   	    }
   	    return page;
   	}
    
    @Override
    public LopHocModel getLopHocByTenLop(String tenLop) { // Thêm phương thức này
        return lopHocRepository.findByTenLop(tenLop);
    }
}
