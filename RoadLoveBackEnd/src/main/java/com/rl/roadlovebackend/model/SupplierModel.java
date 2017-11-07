package com.rl.roadlovebackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SupplierModel {
		@Id  @GeneratedValue(strategy=GenerationType.IDENTITY)
		private String supplierID;
		@Column
		private String supplierName;
		@Column
		private String address;
		@Column
		private long contactNo;
		public String getSupplierID() {
			return supplierID;
		}
		public void setSupplierID(String supplierID) {
			this.supplierID = supplierID;
		}
		public String getSupplierName() {
			return supplierName;
		}
		public void setSupplierName(String supplierName) {
			this.supplierName = supplierName;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public long getContactNo() {
			return contactNo;
		}
		public void setContactNo(long contactNo) {
			this.contactNo = contactNo;
		}
		
		
		
	}

