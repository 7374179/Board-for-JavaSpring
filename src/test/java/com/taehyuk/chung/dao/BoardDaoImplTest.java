package com.taehyuk.chung.dao;

import com.taehyuk.chung.domain.BoardDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDaoImplTest {
    @Autowired
    BoardDao boardDao;

    @Test
    public void insertTestDate() throws Exception{
        boardDao.deleteAll();
        for(int i=1;i<=220;i++){
            BoardDto boardDto = new BoardDto("title" + i, "no content", "asdf");
            boardDao.insert(boardDto);
        }
    }

    @Test
    public void select() {
        assertTrue(boardDao!=null);
        System.out.println("boardDao = " + boardDao);
    }
}