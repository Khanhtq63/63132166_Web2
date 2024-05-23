package tqk.QLSV.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "MONHOC")
public class MonHocModel {
	@Id
	@Column(name="MAMONHOC")
	private String maMonHoc;
	@Column(name="TENMONHOC")
	private String tenMonHoc;
	public String getMaMonHoc() {
		return maMonHoc;
	}
	public void setMaMonHoc(String maMonHoc) {
		this.maMonHoc = maMonHoc;
	}
	public String getTenMonHoc() {
		return tenMonHoc;
	}
	public void setTenMonHoc(String tenMonHoc) {
		this.tenMonHoc = tenMonHoc;
	}
	@Override
	public String toString() {
		return "MonHocModel [maMonHoc=" + maMonHoc + ", tenMonHoc=" + tenMonHoc + "]";
	}
	
	

}
