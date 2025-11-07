package dto;

import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepository() {
		Book book1 = new Book("ISBN1234", "C# 프로그래밍", 27000);
		book1.setAuthor("우재남");
		book1.setDescription("설명설명설명설명설명");
		book1.setPublisher("한빛아카데미");
		book1.setCategory("IT모바일");
	}
}
