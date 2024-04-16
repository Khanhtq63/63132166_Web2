package tqk.QLBH.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tqk.QLBH.Models.Customer;


@Repository
public interface CustomerReposity extends JpaRepository<Customer, Integer>  {
 
}

