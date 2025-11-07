package dao;

import java.util.ArrayList;
import dto.Board;

public class BoardRepository {
	private ArrayList<Board> listOfBoard = new ArrayList<Board>();
	
	public BoardRepository() {
		Board book1 = new Board("자바 마스터 책 추천합니다.", "내용이 좋아요.", "홍길동", "2025-11-06");
		Board book2 = new Board("C# 프로그래밍 책 구성에 대해 건의 드립니다.", "내용이 좋아요.", "홍길동", "2025-11-06");
		Board book3 = new Board("파이썬 프로그래밍 내용이 알찹니다..", "내용이 좋아요.", "홍길동", "2025-11-06");

		listOfBoard.add(book1);
		listOfBoard.add(book2);
		listOfBoard.add(book3);
	}
	
	public ArrayList<Board> getAllBooks() {
		return listOfBoard;
	}
}
