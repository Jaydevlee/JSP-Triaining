package ch04.com.dao;

public class GuGuDan {
	public int[] process(int m) {
		int arr[] = new int[9];
		for(int i = 1; i <= 9; i++) 
			arr[i - 1] = m * i;
			return arr;
	}
}
