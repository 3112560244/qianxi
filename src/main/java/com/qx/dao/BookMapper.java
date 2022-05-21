package com.qx.dao;

import com.qx.pojo.Books;

import java.util.List;


public interface BookMapper {
    int addBook(Books books);

    int deleteBookById(int id);

    int updateBook(Books books);

    Books queryBookById(int id);

    List<Books> queryAllBook();
}
