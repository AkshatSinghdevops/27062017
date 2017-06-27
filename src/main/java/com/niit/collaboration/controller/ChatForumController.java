package com.niit.collaboration.controller;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.niit.collaboration.dao.ForumDAO;
import com.niit.collaboration.model.Forum;

@RestController
public class ChatForumController {
	
	

	
	@Autowired
	ForumDAO forumDAO;
	
	@Autowired
	HttpSession session;
	
	
	 @RequestMapping(value="/addforum",method=RequestMethod.POST)
		public ResponseEntity<Forum> createforum(@RequestBody Forum chatforum)
		{
			
	 String id=(String)session.getAttribute("loggedInUserID");
	  chatforum.setUser_id(id);
	 
	  chatforum.setCreate_date(new java.util.Date());

			if( chatforum.getId()==null)
			{
				forumDAO.save(chatforum);
			}
			
			return new ResponseEntity<Forum>(chatforum,HttpStatus.OK);
		}
	 
	 
	 @RequestMapping(value="/list_chat_forum",method=RequestMethod.GET)
		public ResponseEntity<java.util.List>  listchatforum(Model model){
		   return new ResponseEntity(forumDAO.list(),HttpStatus.OK); 
		}

	 
	 
	 
	 

	 
	 
	 
	
	 
}
