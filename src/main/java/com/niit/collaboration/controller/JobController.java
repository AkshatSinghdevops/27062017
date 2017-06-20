package com.niit.collaboration.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.niit.collaboration.dao.JobDAO;
import com.niit.collaboration.dao.UserDAO;
import com.niit.collaboration.model.Job;
import com.niit.collaboration.model.JobApplication;

@RestController
public class JobController {
	
	@Autowired
	JobDAO jobDAO;
	
	@Autowired 
	Job job;
	
	@Autowired 
	JobApplication jobApplication;
	
	
	@Autowired
	UserDAO userdao;
	
	@Autowired
	HttpSession httpSession;
	
	
//==========================Create a job ==================================================	
	
	@RequestMapping("/job")
	public ModelAndView showJobPage()
	{

		String uid=(String)httpSession.getAttribute("loggedInUserID");
		if(uid==null)
 		{
 			return new ModelAndView("singIn");
 		}
		String role=(String) httpSession.getAttribute("loggedInUserRole");
	     if(!role.equals("Admin"))
	     {
	    	return new ModelAndView("Home"); 
	     }
		ModelAndView obj=new ModelAndView("job");
		
	return obj;
		
	}
	
	
	
	@RequestMapping(value="/postAJob",method=RequestMethod.GET)
	public ResponseEntity<List<Job>>  getAJob(){
		List<Job> jobs=jobDAO.getAllOpenedJobs();
		return new ResponseEntity<List<Job>>(jobs,HttpStatus.OK);
	
	}
	
	@RequestMapping(value="/postAJob",method=RequestMethod.POST)
	public ResponseEntity<Job> postAJob(@RequestBody Job job ){
	//	String loggedInUserRole=(String) httpSession.getAttribute("loggedInUserRole");
		//if(loggedInUserRole=="Admin")
		System.out.println("***********************************");
		System.out.println(job.getDateTime());
		String loggedInUserRole=(String) httpSession.getAttribute("loggedInUserRole");
		System.out.println(loggedInUserRole);
		job.setStatus('V');  //V-vacant,F-filled,p-pending
		if(jobDAO.save(job)==false){
		//	job.setErrorCode("404");
			//job.setErrorMessage("not able to post a job");
		}else{
			//job.setErrorCode("200");
			//job.setErrorMessage("job posted");
			
			return new ResponseEntity(job,HttpStatus.OK);
	}
		return new ResponseEntity(job,HttpStatus.OK);
		}
	
	@RequestMapping(value="/postAJob/update",method=RequestMethod.PUT)
	public ResponseEntity<Job> postAJobupdate(@RequestBody Job job ){
		System.out.println(job.getDateTime());
	  //V-vacant,F-filled,p-pending
		if(jobDAO.updateJob(job)==false){
		//	job.setErrorCode("404");
			//job.setErrorMessage("not able to post a job");
		}else{
			//job.setErrorCode("200");
			//job.setErrorMessage("job posted");
			
			return new ResponseEntity(job,HttpStatus.OK);
	}
		return new ResponseEntity(job,HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/postAJob/delete",method=RequestMethod.GET)
	public ModelAndView deleteajob(@RequestParam("id") String jobid ){
	
		Job job=jobDAO.getJobDetails(Long.parseLong(jobid));
	if(jobDAO.delete(job)==false){
	}
	else{
		return new ModelAndView("job");
	}
	return new ModelAndView("job");
	}
	
	
//=========================create job closed===============================================	

	
	
	
}
