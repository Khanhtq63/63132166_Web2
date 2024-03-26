package thiGK.ntu63132166.models;

public class DTOSinhVien {
	private String maSoSV;
	private String hoVaTen;
	private String DiemTichLuy;
	public String getMaSoSV() {
		return maSoSV;
	}
	public void setMaSoSV(String maSoSV) {
		this.maSoSV = maSoSV;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public String getDiemTichLuy() {
		return DiemTichLuy;
	}
	public void setDiemTichLuy(String DiemTichLuy) {
		this.DiemTichLuy=DiemTichLuy;
	}
	
	public DTOSinhVien() {
		super();
	}
	public DTOSinhVien(String maSoSV, String hoVaTen, String DiemTichLuy) {
		this.maSoSV = maSoSV;
		this.hoVaTen = hoVaTen;
		this.DiemTichLuy = DiemTichLuy;
	}
	// Các getter, setter
}