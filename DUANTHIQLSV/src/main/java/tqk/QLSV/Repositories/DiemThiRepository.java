package tqk.QLSV.Repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tqk.QLSV.Models.DiemThiModel;

@Repository
public interface DiemThiRepository extends JpaRepository<DiemThiModel, Serializable.DiemThiId> {
	Page<DiemThiModel> findAll(Pageable pageable);
	   Page<DiemThiModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable);
	    Page<DiemThiModel> findByMaSinhVienContaining(String maSinhVien, Pageable pageable);
}
