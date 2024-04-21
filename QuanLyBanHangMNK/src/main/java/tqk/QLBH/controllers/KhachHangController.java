package tqk.QLBH.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import tqk.QLBH.Models.KhachHang;
import tqk.QLBH.services.KhachHangService;

@SpringBootApplication
@ComponentScan
@RestController
public class KhachHangController {
	@Autowired KhachHangService khachHangService;
	@GetMapping("/dsKhachHang")
	public List<KhachHang> getAllKhachHang()
	{
		return khachHangService.getAllKhachHang();
	}

}
