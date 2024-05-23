package tqk.QLSV.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="KHOA")
public class KhoaModel {
	
	@Id
	@Column(name="MAKHOA")
	private String maKhoa;
	@Column(name="TENKHOA")
	private String tenKhoa;
	public String getMaKhoa() {
		return maKhoa;
	}
	public void setMaKhoa(String maKhoa) {
		this.maKhoa = maKhoa;
	}
	public String getTenKhoa() {
		return tenKhoa;
	}
	public void setTenKhoa(String tenKhoa) {
		this.tenKhoa = tenKhoa;
	}
	@Override
	public String toString() {
		return "KhoaModel [maKhoa=" + maKhoa + ", tenKhoa=" + tenKhoa + "]";
	}
	
	

}
