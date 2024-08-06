package com.entity;

public class Cart {
	private int Cart_id;
	private int Book_id;
	private int User_id;
	private String BookName;
	private String Author;
	private double Price;
	private double TotalPrice;
	public int getCart_id() {
		return Cart_id;
	}
	public void setCart_id(int cart_id) {
		Cart_id = cart_id;
	}
	public int getBook_id() {
		return Book_id;
	}
	public void setBook_id(int book_id) {
		Book_id = book_id;
	}
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public double getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}
	
	
	
	
}
