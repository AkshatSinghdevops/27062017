package com.niit.collaboration.controller;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/serverendpointdemo")
public class ServerEndPointDemo {
	
	
	@OnOpen
	public void handleOpen()
	{
		 System.out.println("clint side connection is open........");
	}
	
	@OnMessage
	public String handelMessage(String Message)
	{
		 
		System.out.println("received From clienyt " +  Message);
		 String replymessage = "echo " + Message;
		 System.out.println("send to client.. " + replymessage);
		 return replymessage;
		
	}
	
	@OnClose
	public void handleclose()
	{ 
		System.out.println("client id desconnected.............");
	}
	
	@OnError
	public void handleError(Throwable t)
	{
		 t.printStackTrace();
	}
	

}
