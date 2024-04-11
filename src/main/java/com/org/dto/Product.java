package com.org.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private long price;
	private String address;
	private String description;
	private String availability;
	private int watercost;
	private String cctv;
	private int numberofrooms;
	private String typeofroom;
	@ManyToOne(cascade = CascadeType.ALL) //Many products have one seller only
	@JoinColumn
	private Seller seller;
	
	@OneToOne
	private Item item;
	
	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public int getWatercost() {
		return watercost;
	}

	public void setWatercost(int watercost) {
		this.watercost = watercost;
	}

	public String getCctv() {
		return cctv;
	}

	public void setCctv(String cctv) {
		this.cctv = cctv;
	}

	public int getNumberofrooms() {
		return numberofrooms;
	}

	public void setNumberofrooms(int numberofrooms) {
		this.numberofrooms = numberofrooms;
	}

	public String getTypeofroom() {
		return typeofroom;
	}

	public void setTypeofroom(String typeofroom) {
		this.typeofroom = typeofroom;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	

}
