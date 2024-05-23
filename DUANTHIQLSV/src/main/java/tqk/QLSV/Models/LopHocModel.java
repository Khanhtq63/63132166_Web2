package tqk.QLSV.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="LOP")
public class LopHocModel {

    @Id
    @Column(name="MALOP")
    private String maLop;

    @Column(name="TENLOP")
    private String tenLop;

    @Column(name="HEDAOTAO")
    private String heDaoTao;
    
    @Column(name="SISO")
    private Integer siSo;
    
    @Column(name="MAKHOA")
    private String maKhoa;
    
 // Getters and Setters
	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public String getTenLop() {
		return tenLop;
	}

	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}

	public String getHeDaoTao() {
		return heDaoTao;
	}

	public void setHeDaoTao(String heDaoTao) {
		this.heDaoTao = heDaoTao;
	}

	public Integer getSiSo() {
		return siSo;
	}

	public void setSiSo(Integer siSo) {
		this.siSo = siSo;
	}

	public String getMaKhoa() {
		return maKhoa;
	}

	public void setMaKhoa(String maKhoa) {
		this.maKhoa = maKhoa;
	}

	@Override
	public String toString() {
		return "LopHocModel [maLop=" + maLop + ", tenLop=" + tenLop + ", heDaoTao=" + heDaoTao + ", siSo=" + siSo
				+ ", maKhoa=" + maKhoa + "]";
	}

    
    
    
}