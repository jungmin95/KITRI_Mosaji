package item.dao;

import java.util.ArrayList;

import item.model.Item;

public interface Dao {
	ArrayList<Item> selectAll_product();
	ArrayList<Item> selectAfter_filter();
}
