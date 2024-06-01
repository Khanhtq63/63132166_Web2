package tqk.QLSV.Models;

import java.sql.Blob;
import java.sql.Date;

import org.thymeleaf.expression.Arrays;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="SINHVIEN")
public class SinhVienModel {
	
	@Id
	@Column(name="MASV")
	private String maSinhVien;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="NGAYSINH")
	private Date ngaySinh;
	@Column(name="GIOITINH")
	private String gioiTinh;
	@Column(name="NOISINH")
	private String noiSinh;
	@Column(name="MALOP")
	private String maLop;
	
	//getter, setter
	
	public String getMaSinhVien() {
		return maSinhVien;
	}
	public void setMaSinhVien(String maSinhVien) {
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
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getNoiSinh() {
		return noiSinh;
	}
	public void setNoiSinh(String noiSinh) {
		this.noiSinh = noiSinh;
	}	
    
	public String getMaLop() {
		return maLop;
	}
	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}
	@Override
	public String toString() {
		return "SinhVienModel [maSinhVien=" + maSinhVien + ", hoTen=" + hoTen + ", ngaySinh=" + ngaySinh + ", gioiTinh="
				+ gioiTinh + ", noiSinh=" + noiSinh + "" +  ", maLop=" + maLop + "]";
	}
	
	
	
	
	
	
}
