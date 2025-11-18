package dao;

import java.util.ArrayList;
import dto.Board;


public class BoardRepository {
	private ArrayList<Board> listOfBoard = new ArrayList<Board>();
	private static BoardRepository instance = new BoardRepository();
	public static BoardRepository getInstance() {
		return instance;
	}
	// 생성자에서 게시물을 생성 후 각각에 no를 부여
	
	public BoardRepository() {
		Board board1 = new Board(1, "자바 마스터 책 추천합니다.", "내용이 좋아요.", "홍길동", "2025-11-06");
		Board board2 = new Board(2, "C# 프로그래밍 책 구성에 대해 건의 드립니다.", "내용이 좋아요.", "홍길동", "2025-11-06");
		Board board3 = new Board(3, "파이썬 프로그래밍 내용이 알찹니다.", "내용이 좋아요.", "홍길동", "2025-11-06");
		

		listOfBoard.add(board1);
		listOfBoard.add(board2);
		listOfBoard.add(board3);
	}
	
	public ArrayList<Board> getAllBoards() {
		return listOfBoard;
	}
	
	public Board getBoardByNo(int no) {
		Board boardNo=null;
		
		for(int i = 0; i < listOfBoard.size(); i++) {
			Board board = listOfBoard.get(i); //고정 길이 배열의 길이 length 가변길이 배열의 길이: size
			if (board != null && board.getNo()!=0 && board.getNo() == no) {
				boardNo=board;
				break;
			}
		}
		return boardNo;
	}
	
	public void addBoard(Board board) {
		listOfBoard.add(board);
	}
}
	