package com.bit.struts.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bit.struts.model.DeptDao;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Validateable;

public class InsertAction extends ActionSupport implements Validateable {
	private int deptno;
	private String dname,loc;
	private Map<String, List<String>> errs = new HashMap<String,List<String>>();
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public String getDname() {
		return dname;
	}
	public String getLoc() {
		return loc;
	}
	public Map<String, List<String>> getErrs() {
		return errs;
	}
	@Override
	public void validate() {
		System.out.println("call validate");
		if(deptno==0) {
			addFieldError("deptno", "빈칸입력");
		}
		if(dname.isEmpty()) {
			addFieldError("dname", "빈칸입력");
		}
		if(dname.trim().isEmpty()) {
			addFieldError("dname", "띄워쓰기만 입력");
		}
		if(loc.isEmpty()) {
			addFieldError("loc", "빈칸입력");
		}
	}
	@Override
	public String execute() throws Exception {
		System.out.println("call execute");
		
		if(hasErrors()) return INPUT;
		
		new DeptDao().insertOne(deptno,dname,loc);
		return SUCCESS;
	}
	
}
