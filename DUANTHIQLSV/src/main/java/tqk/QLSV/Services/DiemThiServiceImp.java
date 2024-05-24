package tqk.QLSV.Services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
