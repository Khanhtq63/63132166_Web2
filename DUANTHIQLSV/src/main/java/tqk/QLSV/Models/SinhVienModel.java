package tqk.QLSV.Models;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="SINHVIEN")
public class SinhVienModel {
	
	@Id
	@Column(name="MASV")
	private int maSinhVien;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="NGAYSINH")
	private Date ngaySinh;
	@Column(name="GIOITINH")
	private String gioiTInh;
	@Column(name="NOISINH")
	private String noiSinh;
	@Column(name="MALOP")
	private int maLop;
	
	//getter, setter
	public int getMaSinhVien() {
		return maSinhVien;
	}
	public void setMaSinhVien(int maSinhVien) {
		this.maSinhVien = maSinhVien;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getGioiTInh() {
		return gioiTInh;
	}
	public void setGioiTInh(String gioiTInh) {
		this.gioiTInh = gioiTInh;
	}
	public String getNoiSinh() {
		return noiSinh;
	}
	public void setNoiSinh(String noiSinh) {
		this.noiSinh = noiSinh;
	}
	public int getMaLop() {
		return maLop;
	}
	public void setMaLop(int maLop) {
		this.maLop = maLop;
	}
	
	
}
