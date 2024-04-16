package tqk.QLBH.services;

import java.util.List;

import org.springframework.stereotype.Service;

import tqk.QLBH.Models.Customer;

@Service
public interface CustomerService {
	List<Customer> findAllCustomer();
	Customer findCustomerByID(int id);
    void addCustomer(Customer customer);
    void deleteCustomer(int id);
}