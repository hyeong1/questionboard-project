package dao;

import java.util.ArrayList;

import dto.Borad;

public class BoradRepository {
	private ArrayList<Borad> listOfBorads = new ArrayList<Borad>();
	private static BoradRepository instance = new BoradRepository();
	
	public static BoradRepository getInstance() {
		return instance;
	}
	
	public ArrayList<Borad> getAllBorads() {
		return listOfBorads;
	}

	public void setListOfProducts(ArrayList<Borad> listOfBorads) {
		this.listOfBorads = listOfBorads;
	}
	
	public BoradRepository() {
	}
	
	public void addBorad(Borad borad) {
		listOfBorads.add(borad);
	}
	
	public Borad getBoradByID(String boradID) {
		Borad boradByID = null;
		
		for (int i = 0; i < listOfBorads.size(); i++) {
			Borad borad = listOfBorads.get(i);
			if ((borad != null)	&& borad.getBoradID() != null 
					&& borad.getBoradID().equals(boradID)) {
				boradByID = borad;
				break;
			}
		}
		return boradByID;
	}
}
