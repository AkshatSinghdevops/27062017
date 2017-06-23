package com.niit.collaboration.controller;

import java.util.List;

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
	
	
	
	
	
	  String blogno;
	  @RequestMapping(value="comment")
		public  ModelAndView getcomments(@RequestParam("blogid") String blogid)
		{
		  blogno=blogid;
		  String uid=(String)session.getAttribute("loggedInUserID");
			if(uid==null)
	 		{
	 			return new ModelAndView("singIn");
	 		}
		  
			  return new ModelAndView("comment");
		}
	
	 
	
	@RequestMapping(value="/comment",method = RequestMethod.GET,headers="Accept=application/json")
	public List showcommentPage()
	{
		 ModelAndView mv = new ModelAndView("/comment");
		 mv.addObject("isUserClickedForumPage", "true");
		 
		 List<BlogComment> list = blogcommentDAO.list();
		 return list;
	}
	
	@RequestMapping(value="/addforumcomment",method=RequestMethod.POST)
	public ResponseEntity<BlogComment> createcomment(@RequestBody BlogComment comment)
	{
		
 String id=(String)session.getAttribute("loggedInUserID");
  comment.setUser_id(id);
  comment.setBlog_comment(blogno);
  comment.setComment_date(new java.util.Date());

		if( comment.getId()==null)
		{
			blogcommentDAO.save(comment);
		}
		
		return new ResponseEntity<BlogComment>(comment,HttpStatus.OK);
	}
	
	
	
	
}
