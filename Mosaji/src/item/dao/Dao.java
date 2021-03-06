package item.dao;

import java.util.ArrayList;

import item.model.Item;
import item.model.Item2;

public interface Dao {
	ArrayList<Item> selectAll_product();
	ArrayList<Item> selectAfter_filter(String category2, int gender,String[] age,String[] skintype, String keyword);
	ArrayList<Item> selectRank_product(String category2, String v1, String v2, String keyword);
	Item detail(int i_no);
	
	void insert(Item2 i);

	void delete(int i_no);
	
	void avg(int i_no);
	
	ArrayList<Item> search(String keyword);
	
	void update(Item i);

}
