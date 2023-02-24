package com.bit.struts.action;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.Action;

public class SuccessAction implements Action {
	Logger log = LogManager.getLogger(getClass().getCanonicalName());

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

}