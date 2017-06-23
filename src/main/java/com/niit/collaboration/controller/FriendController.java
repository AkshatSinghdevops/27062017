package com.niit.collaboration.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping("/ViewRequest")
	public ModelAndView showRequest()
	{
		 String userid =(String) session.getAttribute("loggedInUserID");
		 if(userid==null)
		 {
			  return new ModelAndView("singIn");
			  
		 }
		 ModelAndView mv = new ModelAndView("ViewRequest");
		 
		 mv.addObject("isUserClickedRequest", "true");
		 
		 return mv;
	}
	
	
	
	

	@RequestMapping(value="/myFriends",method=RequestMethod.GET)
	public ResponseEntity<List> getMyFriends(){
		System.out.println("inside myfriends");
		String loggedInUserID=(String)session.getAttribute("loggedInUserID");
		List<Friend> myFriends=new ArrayList<Friend>();
		if(loggedInUserID==null)
		{
			friend.setErrorCode("404");
			friend.setErrorMessage("Please login to know your friend");
			myFriends.add(friend);
			return new ResponseEntity<List>(myFriends,HttpStatus.OK);
		}
		myFriends=friendDAO.getMyFriends(loggedInUserID);
		
		if(myFriends.isEmpty()){
			friend.setErrorCode("404");
			friend.setErrorMessage("you does not have any friends");
			myFriends.add(friend);
		}
		return new ResponseEntity<List>(myFriends,HttpStatus.OK);
	}
	
	@RequestMapping(value="/addFriend/{friend_id}",method=RequestMethod.GET)
	public ModelAndView sendFriendRequest(@PathVariable("friend_id")String friend_id){
		
		
		String LoggedInUserID = (String) session.getAttribute("loggedInUserID");
		friend.setUser_id(LoggedInUserID);
		friend.setFriend_id(friend_id);
		friend.setStatus('N'); //N-new ,A- Acccept R- Reject
	    friend.setIs_online('N');
	    
	    if(friendDAO.get(LoggedInUserID, friend_id)!=null){
			 friend.setErrorCode("404");
			 friend.setErrorMessage("you already sent the friend request");
			 ModelAndView obj=new ModelAndView("MessagePage").addObject("successmessage", "you already sent friend request to "+friend_id);;
			 return obj;
		 }else{
			 friendDAO.save(friend);
			friend.setErrorCode("200");
		    friend.setErrorMessage("friend request successfull..."+friend_id);
			 ModelAndView obj=new ModelAndView("ErrorPage").addObject("successmessage", "successfully sent friend request to "+friend_id);;
			 return obj;
		 }    
	
	
	}
	
	
	
 	private Friend updateRequest(String friend_id,String status)
 	{
 		 String loggedInUserID = (String) session.getAttribute("loggedInUserID");
 		 
 		 if(isFriendRequestAvailable(friend_id)==false)
 		 {
 		    	 friend.setErrorCode("404");
 		    	 friend.setErrorMessage("You can not update status ");
 			 
 		 }
 		 
 		 if(status.equals("A")||status.equals("R"))
 		 {
 			     friend=friendDAO.get(loggedInUserID,friend_id );
 			    // System.out.println(friend.getUser_id() + " : " + friend.getErrorMessage());
 		 }
 		 
 		 else
 		 {
 			     friend=friendDAO.get(loggedInUserID, friend_id);
 			     //System.out.println(friend.getErrorCode()+ " : " + friend.getErrorMessage());
 		 }
 		 
 		         friend.setStatus(status.charAt(0));
 		         
 		         System.out.println(friend.getStatus());
 		         
 		         friendDAO.update(friend);
 		         
 		         friend.setErrorCode("200");
 		         
 		         friend.setErrorMessage("Request From " + friend.getUser_id() + " To " + friend.getFriend_id());
 		         
 		         return friend;
 	     }
	
	
	    
 	
 	      private boolean isFriendRequestAvailable(String friend_id)
 	      {
 	    	  
 	    	  String loggedInUserID =(String) session.getAttribute("loggedInUserID");
 	    	  
 	    	  if(friendDAO.get(loggedInUserID,friend_id)==null)
 	    		  return false;
 	    	  
 	    	  else
 	    		  return true;
 	      }
	
	     
 	      
 	      @RequestMapping(value="/acceptFriend/{friend_id}",method=RequestMethod.GET)
 	      public ModelAndView acceptFriendRequest(@PathVariable("friend_id")String friend_id)
 	      {
 	    	   friend=updateRequest(friend_id,"A");
 	    	  return new ModelAndView("ErrorPage").addObject("successmessage", "friend request accepted of "+friend_id); 	     
 	    	  
 	      }
	      
 	      
 	      
 	     @RequestMapping("/getRequestsSendToMe")
 		 public ResponseEntity<List<Friend>> getRequestsSendToMe(){
 		
 	    	 String loggedInUserID=(String) session.getAttribute("loggedInUserID");
 		 
 		     List<Friend> myFriendRequests=friendDAO.getNewFriendRequests(loggedInUserID);
 		 
 		    System.out.println(myFriendRequests);
 		 
 		 return new ResponseEntity<List<Friend>>(myFriendRequests,HttpStatus.OK);
 	   }
 	      
 	    
 	     @RequestMapping(value="/rejectFriend/{friend_id}",method=RequestMethod.GET)
 		public ModelAndView rejectFriend(@PathVariable("friend_id") String friend_id){
 			
 	     	updateRequest(friend_id,"R");
 			
 	    	return new ModelAndView("ErrorPage").addObject("successmessage", "friend request rejected for "+friend_id);
 			
 		}
 	     
 	    @RequestMapping(value="/unFriend/{friend_id}",method=RequestMethod.GET)
 		public ModelAndView unFriend(@PathVariable("friend_id") String friend_id){
 			
 	    	updateRequest(friend_id,"U");
 			
 	    	return new ModelAndView("ErrorPage");
 		}
 	      
 	      
 	      
 	      
}
