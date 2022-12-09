//package com.example;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.TestConstructor;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import javax.sql.DataSource;
//import java.sql.Connection;
//import java.sql.SQLException;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/applicationContext.xml"})
//public class DataSourceTest {
//
//    @Autowired
//    private DataSource dataSource;
//
//    @Test
//    public void testConnection(){
//        try{
//            Connection con=dataSource.getConnection();
//            System.out.println("DB연결!");
//        }catch(SQLException e){
//            e.printStackTrace();
//        }
//    }
//}