package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import tqk.QLSV.Models.MonHocModel;
import tqk.QLSV.Repositories.MonHocRepository;

@Service
public class MonHocServiceImp implements MonHocService {

    @Autowired
    private MonHocRepository monHocRepository;

    @Override
    public List<MonHocModel> getAllMonHoc() {
        return monHocRepository.findAll();
    }

    @Override
    public MonHocModel saveMonHoc(MonHocModel monHoc) {
        return monHocRepository.save(monHoc);
    }

    @Override
    public MonHocModel getMonHocByID(String maMonHoc) {
        Optional<MonHocModel> opt = monHocRepository.findById(maMonHoc);
        return opt.orElse(null);
    }

    @Override
    public MonHocModel updateMonHoc(MonHocModel monHoc) {
        return monHocRepository.save(monHoc);
    }

    @Override
    public void deleteMonHocByID(String maMonHoc) {
        monHocRepository.deleteById(maMonHoc);
    }
    
    @Override
	public Page<MonHocModel> getMonHocPage(Pageable pageable) {
		Page<MonHocModel> page = monHocRepository.findAll(pageable);
	    if (page == null) {
	        // Trường hợp không tìm thấy dữ liệu, trả về một trang rỗng
	        return Page.empty(pageable);
	    }
	    return page;
	}
    
    @Override
    public Page<MonHocModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable) {
        return monHocRepository.findByMaMonHocContaining(maMonHoc, pageable);
    }

    @Override
    public Page<MonHocModel> findByTenMonHocContaining(String tenMonHoc, Pageable pageable) {
        return monHocRepository.findByTenMonHocContaining(tenMonHoc, pageable);
    }
    
    @Override
    public MonHocModel getMonHocByName(String tenMonHoc) {
        return monHocRepository.findByTenMonHoc(tenMonHoc); // Thêm phương thức này trong repository
    }
}
