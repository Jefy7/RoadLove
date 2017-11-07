package com.rl.roadlovebackend.dao;

import java.util.List;

import com.rl.roadlovebackend.model.SupplierModel;

public interface SupplierDao {

	
	public	boolean insertSupplier(SupplierModel suppliermodel);
	
	public List<SupplierModel> allSupplier();
	public boolean deleteSupplier(String supplierID);
	public SupplierModel displaySupplierEdit(String supplierID);
	public boolean updateSupplier(SupplierModel suppliermodel);

	}
