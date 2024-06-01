package tqk.QLSV.Repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import tqk.QLSV.Models.KhoaModel;


public interface KhoaRepository extends JpaRepository<KhoaModel, String> {
	Page<KhoaModel> findAll(Pageable pageable);
	Page<KhoaModel> findByMaKhoaContaining(String maKhoa, Pageable pageable);
	Page<KhoaModel> findByTenKhoaContaining(String tenKhoa, Pageable pageable);

}
