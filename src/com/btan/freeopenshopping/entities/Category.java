package com.btan.freeopenshopping.entities;

public class Category {
	private int id;
	private String name;
	private String description;
	private int level;
	private int parentId;
	
	public Category(){}
	
	public Category(int id, String name, String description, int level, int parentId) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.level = level;
		this.parentId = parentId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	
	
}
