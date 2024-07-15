package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BooksDAO {
	public boolean addBooks(BookDtls b);
	public List<BookDtls> getAllBooks();
	public BookDtls getBookById(int id);
	
	public boolean updateEditBooks(BookDtls b);
	
	public boolean deleteBooks(int id);
	
	public List<BookDtls> getE_Book();
	
	public List<BookDtls> getPurchasingBook();
	
	public List<BookDtls> getNotes();
	
	public List<BookDtls> getAllE_Books();
	
	public List<BookDtls> getAllPurchasingBooks();
	
	public List<BookDtls> getAllNotes();
}
