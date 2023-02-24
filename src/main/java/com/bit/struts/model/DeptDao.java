package com.bit.struts.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.mysql.cj.jdbc.MysqlDataSource;

public class DeptDao {
	DataSource dataSource;
	
	public DeptDao() {
		MysqlDataSource ds = new MysqlDataSource();
		ds.setURL("jdbc:mysql://localhost:3306/lecture");
		ds.setUser("scott");
		ds.setPassword("tiger");
		dataSource = ds;
	}
	
	
	public List<DeptVo> selectAll() throws SQLException{
		String sql = "select * from dept";
		List<DeptVo> list = new ArrayList<DeptVo>();
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();){
			while(rs.next()) {
				list.add(new DeptVo(
							rs.getInt("deptno"),
							rs.getNString("dname"),
							rs.getNString("loc")
						));
			}	
		}
		return list;
	}


	public void insertOne(int deptno, String dname, String loc) throws SQLException {
		String sql = "insert into dept values(?,?,?)";
		try(Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, deptno);
			pstmt.setNString(2, dname);
			pstmt.setNString(3, loc);
			pstmt.executeUpdate();
		}
	}
	
	public DeptVo findOne(int deptno) throws SQLException {
		String sql = "select * from dept where deptno=?";
		try(Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, deptno);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				return new DeptVo(
							rs.getInt("deptno"),
							rs.getNString("dname"),
							rs.getNString("loc")
						);
			}
		}
		return null;
		
		
	}
}
