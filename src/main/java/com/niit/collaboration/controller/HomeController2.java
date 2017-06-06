/*package com.niit.collaboration.controller;

import java.util.List;

import javax.security.sasl.AuthenticationException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.simp.SimpAttributesContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.collaboration.dao.BlogDAO;
import com.niit.collaboration.dao.ChatDAO;
import com.niit.collaboration.dao.ForumDAO;
import com.niit.collaboration.dao.FriendDAO;
import com.niit.collaboration.dao.UserDAO;
import com.niit.collaboration.model.Blog;
import com.niit.collaboration.model.Chat;
import com.niit.collaboration.model.Forum;
import com.niit.collaboration.model.User;

@RestController
public class HomeController2 {
	
	@Autowired
	private User user;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private Blog blog;
	
	@Autowired
	private BlogDAO blogDAO;
	
	@Autowired
	private Forum forum;
	
	@Autowired
	private ForumDAO forumDAO;
	
	@Autowired
	private  Chat chat;
	
	@Autowired
	private ChatDAO chatDAO;
	
	
	@Autowired
	private FriendDAO friendDAO;
	
	@Autowired
	private HttpSession session;
	
	
	
	@RequestMapping(value= {("/"),("/Home")})
	public ModelAndView showHomePage()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("msg","Welcome To Collaboration Home Page");
		 mv.addObject("isUserClickedHomePage", "true");
		return mv;
		
	}
	
	@RequestMapping(value="/Home")
	public ModelAndView getHomepage()
	{
		System.out.println("inside home page");
		return new ModelAndView("/Home");
	}
	
	@RequestMapping("/login")
	public ModelAndView showSinginPage()
	{
		 ModelAndView mv = new ModelAndView("/singIn");
		 mv.addObject("isUserClickedsingInPage", "true");
		 return mv;
	}
	
	@RequestMapping("/createUser")
	public ModelAndView showSingUpPage()
	{
		return new ModelAndView("createUser");
	}
	@RequestMapping(value="/Blog",method = RequestMethod.GET,headers="Accept=application/json")
	public List showBlogPage()
	{
		 ModelAndView mv = new ModelAndView("/Home");
		 mv.addObject("isUserClickedBlogPage", "true");
		 
		 List<Blog> bloglist = blogDAO.list();
		 return bloglist;
	}
	
	
	@RequestMapping(value="/Forum",method = RequestMethod.GET,headers="Accept=application/json")
	public List showForumPage()
	{
		 ModelAndView mv = new ModelAndView("/Forum");
		 mv.addObject("isUserClickedForumPage", "true");
		 
		 List<Forum> forumlist = forumDAO.list();
		 return forumlist;
		 
	}
	@RequestMapping(value="/Chat",method = RequestMethod.GET,headers="Accept=application/json")
	public List showChatPage()
	{
		 ModelAndView mv = new ModelAndView("/Home");
		 mv.addObject("isUserClickedChatPage", "true");
		 List<Chat> chatlist=	chatDAO.list();
		  return chatlist;
	}
	
	@RequestMapping("/AboutUs")
	public ModelAndView showAboutusPage()
	{
		 ModelAndView mv = new ModelAndView("/Home");
		 mv.addObject("isUserClickedAboutUsPage", "true");
		 return mv;
	}
	
	@RequestMapping(value="/Profile",method = RequestMethod.GET,headers="Accept=application/json")
	public  List showProfilePage()
	{
		 ModelAndView mv = new ModelAndView("/Home");
		 mv.addObject("isUserClickedProfilePage", "true");
		
			List<User> ist=	userDAO.list();
		  return ist;
		 
	}
	
	
	@RequestMapping(value="/NewFile",method = RequestMethod.GET,headers="Accept=application/json")
	public  List showNewPage()
	{
		 ModelAndView mv = new ModelAndView("/Home");
		 mv.addObject("isUserClickedProfilePage", "true");
		
			List<User> ist=	userDAO.list();
		  return ist;
		 
	}
	@RequestMapping("/validate")
	public ModelAndView validateCredentials(@RequestParam("id") String id,@RequestParam("password") String pwd)
	{

		
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserLoggedIn", "false");
		if( userDAO.validate(id, pwd)==true)
		
		{
			//Createntials are correct
			mv.addObject("isUserLoggedIn", "true");
			
			user = userDAO.getUser(id);
			
			if(user.getRole().equals("Role_Admin"))
			{   
				mv.addObject("isAdmin", "true");
				mv.addObject("role", "Admin");
			}
			else
			{
				mv.addObject("isAdmin", "false");
				mv.addObject("role", "User");
			}
			
			mv.addObject("successMessage", "Valid Credentials");
			session.setAttribute("loginMessage", "Welcome :" +id);
			session.setAttribute("loginMessageID",id);
		}
		else
		{
			mv.addObject("errorMessage", "InValid Credentials...please try again");
		}
		
		return mv;
		
		
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session){
		String loggedInUserID=(String) session.getAttribute("loggedInUserID");
		friendDAO.setOffLine(loggedInUserID);
		userDAO.setOffLine(loggedInUserID);
		
		session.invalidate();
		
		user.setErrorCode("200");
		user.setErrorMessage("you have successfully logged out");
		return new ModelAndView("Home");//new ResponseEntity<User>(user,HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value="/user/authenticate/",method=RequestMethod.POST)
	public ResponseEntity<User> login(@RequestBody User u,HttpSession session){
		System.out.println("inside login");
		
	User ur=userDAO.validate(u.getId(),u.getPassword());
	System.out.println(ur);
	
	  		if(ur==null){
	  			
			ur=new User();//Do we need to create new user?
			ur.setErrorCode("404");
			ur.setErrorMessage("Invalid Credential.Please enter valid credentials");
			
	System.out.println(ur.getErrorMessage());
	System.out.println("1");
	  		}else
		{
			ur.setErrorCode("200");
			ur.setErrorMessage("you have successfully logged in.");
			ur.setIsonline('Y');
			session.setAttribute("loggedInUser",ur);
			session.setAttribute("loggedInUserID",ur.getId());
			System.out.println("userid="+ur.getId());
			session.setAttribute("userID",ur);
		    session.setAttribute("loggedInUserRole",ur.getRole() ); 
		    System.out.println(ur+ur.getRole());
		    		
			//friendDAO.setOnline(ur.getId());
			  System.out.println("error code1");
		     userDAO.setOnline(ur.getId());
		     
		     System.out.println("error code");
		     System.out.println(ur.getErrorCode());
		     System.out.println(ur.getErrorMessage());
		     System.out.println("2");
		     
		}
	  		//return new ResponseEntity<User>(ur,HttpStatus.OK);//new ResponseEntity<String>(headers,HttpStatus.FOUND);
	
	  		return new ResponseEntity<User>(ur,HttpStatus.OK);
	}
	
	@RequestMapping(value="/user")
	public ModelAndView getUserForm()
	{
		return new ModelAndView("user");
	}
	
	
	@RequestMapping(value="/user/",method=RequestMethod.GET)
	public ResponseEntity<User> createUser(@RequestBody User user){
		//logger.debug("------calling method createUser");
		if(userDAO.get(user.getId())==null)
		  {
			user.setIsonline('N');
			user.setStatus('N');
					if(userDAO.save(user)==true)
					{
						user.setErrorCode("200");
					    user.setErrorMessage("Thanku for registration.You havesuccessfully registered");
		       session.setAttribute("registered", user.getName());
					}
					else
					{
						user.setErrorCode("404");
					    user.setErrorMessage("could not complete the operation");
					}
					System.out.println(user.getErrorMessage());
					return new ResponseEntity<User>(user,HttpStatus.OK);
		     }
		user.setErrorCode("404");
		user.setErrorMessage("user already exist eith id:"+user.getId());
		System.out.println(user.getErrorMessage());
		return new ResponseEntity<User>(user,HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/users",method=RequestMethod.GET)
	public ResponseEntity<List<User>> getAllUserDetails(){
		List<User> users=userDAO.list();
		if(users.isEmpty()){
		user.setErrorCode("404");
		user.setErrorMessage("no users are available");
		users.add(user);
		}
		return new ResponseEntity(users,HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/showblog")
	public ModelAndView showblog(){
		return new ModelAndView("showblog");
		
	}
	
	@RequestMapping(value="/showprofile")
	public ModelAndView showprofile(){
		return new ModelAndView("showprofile");
		
	}
	
	
	@RequestMapping(value="/showchat")
	public ModelAndView showchat(){
		return new ModelAndView("showchat");
		
	}
	
	@RequestMapping(value="/showforum")
	public ModelAndView showcforum(){
		return new ModelAndView("showforum");
		
	}
	
	
}
*/