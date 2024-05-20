package tqk.QLSV.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tqk.QLSV.Models.DiemThiModel;


@Repository
public interface DiemThiRepository extends JpaRepository<DiemThiModel, Serializable.DiemThiId> {
	
	
}
