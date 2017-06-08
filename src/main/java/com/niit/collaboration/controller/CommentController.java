package com.niit.collaboration.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.niit.collaboration.dao.BlogCommentDAO;
import com.niit.collaboration.model.BlogComment;

@RestController
public class CommentController {
	
	
	
	@Autowired
	BlogComment blogcomment;
	
	
	@Autowired
	BlogCommentDAO blogcommentDAO;
	
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping(value="/commentlist",method=RequestMethod.GET)
	public ResponseEntity<java.util.List> listComment(Model model)
	{
		 String id=(String)session.getAttribute("loggedInUserID");
		   return new ResponseEntity(blogcommentDAO.commentlist(id),HttpStatus.OK);
	}
	
	@RequestMapping(value="/addcomment",method=RequestMethod.POST)
	public ResponseEntity<BlogComment> createComment(@RequestBody BlogComment blogcomment)
	{
		 String id=(String)session.getAttribute("loggedInUserID");
		 blogcomment.setUser_id(id);
		 blogcomment.setComment_date(new java.util.Date());
	  if(blogcomment.getId()==null)
	  {
		  blogcommentDAO.save(blogcomment);
	  }
		 
		return new ResponseEntity<BlogComment>(blogcomment,HttpStatus.OK);//"blog added success fully";
		}

}
