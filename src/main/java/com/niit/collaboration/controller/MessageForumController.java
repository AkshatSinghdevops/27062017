package com.niit.collaboration.controller;

import javax.servlet.http.HttpSession;

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

import com.niit.collaboration.dao.CommentDAO;
import com.niit.collaboration.model.Comment;

@RestController
public class MessageForumController {
	
	
	
	@Autowired
	HttpSession session;
	
	@Autowired
	CommentDAO messageForumDAO; 
	
	
	
	 String fid;
	  @RequestMapping(value="chattingpage")
		public  ModelAndView getchatting(@RequestParam("fid") String forumid)
		{
		      fid=forumid;
			  return new ModelAndView("forumchatting");
		}

	 
	
	 @RequestMapping(value="/addMessageforum",method=RequestMethod.POST)
		public ResponseEntity<Comment> createmessageforum(@RequestBody Comment messageforum)
		{
			
	 String id=(String)session.getAttribute("loggedInUserID");
	  messageforum.setUser_id(id);
	  messageforum.setComment_date(new java.util.Date());
			if( messageforum.getId()==null)
			{
				messageforum.setForum_id(fid);
				messageForumDAO.save(messageforum);
			}
			
			return new ResponseEntity<Comment>(messageforum,HttpStatus.OK);
		}
	 

	 @RequestMapping(value="/list_message_forum",method=RequestMethod.GET)
		public ResponseEntity<java.util.List>  listmessageforum(Model model){
		   return new ResponseEntity(messageForumDAO.list(fid),HttpStatus.OK); 
		}
}
