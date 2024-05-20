package tqk.QLSV.Services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import tqk.QLSV.Models.DiemThiModel;

public interface DiemThiService {
	
	public List<DiemThiModel> getAllDiemThi();
	
	Page<DiemThiModel> getDiemThiPage(Pageable pageable);
}
