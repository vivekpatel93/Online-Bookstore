package com.entity;

public class BookDtls {
	private int Book_id;
	private String BookName;
	private String Author;
	private String Price;
	private String BookCategory;
	private String Status;
	private String Photo;
	private String Email;
	
	public BookDtls() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookDtls(int book_id,String bookName, String author, String price, String bookcategory, String status, String photo,
			String email) {
		super();
		Book_id=book_id;
		BookName = bookName;
		Author = author;
		Price = price;
		BookCategory = bookcategory;
		Status = status;
		Photo = photo;
		Email = email;
	}

	public int getBook_id() {
		return Book_id;
	}

	public void setBook_id(int book_id) {
		Book_id = book_id;
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

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public String getBookCategory() {
		return BookCategory;
	}

	public void setBookCategory(String bookcategory) {
		BookCategory = bookcategory;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	@Override
	public String toString() {
		return "BookDtls [Book_id=" + Book_id + ", BookName=" + BookName + ", Author=" + Author + ", Price=" + Price
				+ ", BookCategory=" + BookCategory + ", Status=" + Status + ", Photo=" + Photo + ", Email=" + Email
				+ "]";
	}
	
}
