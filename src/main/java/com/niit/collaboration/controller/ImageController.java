package com.niit.collaboration.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ImageController {
	
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping("Image")
	public ModelAndView Image()
	{
		return new ModelAndView("Image");
	}

	
	
	
	@RequestMapping(value="/Upload",method=RequestMethod.POST)
	public ModelAndView handleFileUpload(@RequestParam CommonsMultipartFile[] fileupload) throws IOException
	{
		 String loggedInUserID =(String)session.getAttribute("registered");
		 
		 FileOutputStream fout = new FileOutputStream("C:\\Users\\niit1\\Desktop\\collBYA.S.P-Sir-master\\src\\main\\webapp\\static\\images"+loggedInUserID+".jpeg");
         
		 for(CommonsMultipartFile mlt : fileupload)
		 {
			 System.out.println("saving File Name : ==>>  "  +  mlt.getOriginalFilename());
			 
			 byte [] bt = mlt.getBytes();
			 fout.write(bt);
			 fout.flush();
		 }
		 
		 return new ModelAndView("Home");
	}
	
}
