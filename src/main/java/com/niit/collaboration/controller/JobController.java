package com.niit.collaboration.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
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
import com.niit.collaboration.model.User;

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

	
	
	
	@RequestMapping("/joblist")
	public ModelAndView getBlog()
	{
		String uid=(String)httpSession.getAttribute("loggedInUserID");
		if(uid==null)
 		{
 			return new ModelAndView("singIn");
 		}
		ModelAndView obj=new ModelAndView("joblist");
		
	return obj;
	}
	
//===============================================================================================	
//======view applied job (THIS 	SECTION ONLY ADMIN CAN SEE)===================	
	
	@RequestMapping("/viewappliedprofile")
	public ModelAndView getviewappliedforjob()
	{
		String uid=(String)httpSession.getAttribute("loggedInUserID");
		if(uid==null)
 		{
 			return new ModelAndView("singIn");
 		}
		ModelAndView obj=new ModelAndView("viewappliedprofile");
		
	return obj;
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/getJobdetails/{jobID}",method=RequestMethod.GET)
	public ResponseEntity<List<User>> getJobDetails(@PathVariable("jobID") String jobID){
		List<JobApplication> job=jobDAO.getJobApplication1(Long.parseLong(jobID.trim()));
		List<User> userlist=new ArrayList<User>();
        System.out.println(job);
		for(JobApplication j:job)
		{
		  String userid=j.getUserID();
		 User user=  userdao.get(userid);
		   userlist.add(user);
		}
    	return new ResponseEntity<List<User>>(userlist,HttpStatus.OK);
	}
//==================================================================================================	
	
	@RequestMapping(value="applyForJob/{jobID}",method=RequestMethod.GET)
	public ResponseEntity<JobApplication> applyForJob(@PathVariable("jobID") String jobID,HttpSession httpSession){
	String loggedInUserID=(String) httpSession.getAttribute("loggedInUserID");
	
	if(loggedInUserID==null||loggedInUserID.isEmpty()){
		jobApplication.setErrorCode("404");
		jobApplication.setErrorMessage("you have login to apply for a job" );
	}else{
		if(jobDAO.getJobApplication(loggedInUserID,jobID)==null)
		{
			jobApplication.setJobID(jobID);
			jobApplication.setUserID(loggedInUserID);
			jobApplication.setStatus('N'); //N-newly applied,C-call for interview,S-selcted
			jobApplication.setDate_applied(new Date(System.currentTimeMillis()));
			
			if(jobDAO.save(jobApplication)){
				jobApplication.setErrorCode("200");
				jobApplication.setErrorMessage("you have successfully applied for the job"+jobID);
			}
		}
		else   //if the user already applied for the job
		{
			jobApplication.setErrorCode("404");
			jobApplication.setErrorMessage("you already applied for the job"+jobID);
		}
	}
	return new ResponseEntity<JobApplication>(jobApplication,HttpStatus.OK);
	}
	
	
	
	
	
}
