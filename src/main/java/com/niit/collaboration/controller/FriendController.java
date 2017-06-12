package com.niit.collaboration.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	
	
	@RequestMapping("/MyFriendList")
	public ModelAndView getlistoffriend()
	{
		String uid=(String)session.getAttribute("loggedInUserID");
		if(uid==null)
 		{
 			return new ModelAndView("singIn");
 		}
		ModelAndView obj=new ModelAndView("MyFriendList");
		
		 obj.addObject("isUserClickedFriendPage", "true");
		
	return obj;
	}
	

	@RequestMapping(value="/myFriends",method=RequestMethod.GET)
	public ResponseEntity<List> getMyFriends(){
		System.out.println("inside myfriends");
		String loggedInUserID=(String)session.getAttribute("loggedInUserID");
		List<Friend> myFriends=new ArrayList<Friend>();
		if(loggedInUserID==null)
		{
			//friend.setErrorCode("404");
			//friend.setErrorMessage("Please login to know your friend");
			myFriends.add(friend);
			return new ResponseEntity<List>(myFriends,HttpStatus.OK);
		}
		myFriends=friendDAO.getMyFriends(loggedInUserID);
		
		if(myFriends.isEmpty()){
			//friend.setErrorCode("404");
			//friend.setErrorMessage("you does not have any friends");
			myFriends.add(friend);
		}
		return new ResponseEntity<List>(myFriends,HttpStatus.OK);
	}
	
	
}
