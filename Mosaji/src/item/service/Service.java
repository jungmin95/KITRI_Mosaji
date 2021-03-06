package item.service;

import java.util.ArrayList;

import item.model.Item;
import item.model.Item2;


public interface Service {
	ArrayList<Item> getAll();
	ArrayList<Item> AfterFilter(String category2, int gender,String[] age,String[] skintype, String keyword);
	ArrayList<Item> getRank(String category2, String v1, String v2, String keyword);
	Item detail(int i_no);

	void upload(Item2 i);

	void delete(int i_no);
	
	void avg(int i_no);
	
	ArrayList<Item> search(String keyword);
	
	void update(Item i);
}
