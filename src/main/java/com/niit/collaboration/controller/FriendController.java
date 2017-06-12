package com.niit.collaboration.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.niit.collaboration.dao.FriendDAO;
import com.niit.collaboration.model.Friend;

@RestController
public class FriendController {
	
	
	
	@Autowired
	Friend friend;
	
	@Autowired
	FriendDAO friendDAO;
	
	@Autowired
	HttpSession session;
	
	
	
	
	
	@RequestMapping("/ViewFriend")
	public ModelAndView getBlog()
	{
		String uid=(String)session.getAttribute("loggedInUserID");
		if(uid==null)
 		{
 			return new ModelAndView("singIn");
 		}
		ModelAndView obj=new ModelAndView("ViewFriend");
		
		 obj.addObject("isUserClickedFriendPage", "true");
		
	return obj;
	}
	

}
