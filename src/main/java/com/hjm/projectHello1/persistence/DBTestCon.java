package com.hjm.projectHello1.persistence;

import java.sql.*;

public class DBTestCon {
    String driver ="org.mariadb.jdbc.Driver";
    Connection con;
    PreparedStatement pstmt;
    ResultSet rs;

    public DBTestCon() {
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(
                    "jdbc:mariadb://10.10.10.40:3306/hrms",
                    "root",
                    "rhdyd_!@#");

            if(con != null) {
                System.out.println("DB 접속 성공");
            }
        }catch(ClassNotFoundException e) {
            System.out.println("드라이버 로드 실패");
        }catch(SQLException e){
            System.out.println("DB 접속 실패");
            e.printStackTrace();
        }
    }

    public static void main(String[] args){
        DBTestCon dbcon = new DBTestCon();
    }
}