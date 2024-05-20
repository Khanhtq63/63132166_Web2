package tqk.QLSV.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.DiemThiModel;
import tqk.QLSV.Repositories.DiemThiRepository;

@Service
public class DiemThiServiceImp implements DiemThiService {
	
	@Autowired DiemThiRepository diemThiRepository;

	@Override
	public List<DiemThiModel> getAllDiemThi() {
		return diemThiRepository.findAll();
	}

	@Override
	public Page<DiemThiModel> getDiemThiPage(Pageable pageable) {
		return diemThiRepository.findAll(pageable);
	}
	
	
}
