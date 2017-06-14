package com.niit.collaboration.controller;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.json.Json;
import javax.json.JsonWriter;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;



@ServerEndpoint("/serverendpointdemo")
public class ServerEndPointDemo {
	
	
	static Set<Session> chatroomUsers = Collections.synchronizedSet(new HashSet<Session>());
	
	
	@OnOpen
	public void handleOpen(Session userSession)
	{
		 //System.out.println("clint side connection is open........");
		 chatroomUsers.add(userSession);
	}
	
	@OnMessage
	public void handleMessage(String message,Session userSession) throws IOException 
	{
		 
		String username = (String) userSession.getUserProperties().get("username");
		if(username==null){
			userSession.getUserProperties().put("username",message);
			userSession.getBasicRemote().sendText(buildJsonData("System","you are connect" + message));
		}
		else
		{
			Iterator<Session> iterator = chatroomUsers.iterator();
			while (iterator.hasNext())iterator.next().getBasicRemote().sendText(buildJsonData(username,message));
		}
		
		
		//System.out.println("received From client " +  message);
		// String replymessage = "echo " + message;
		// System.out.println("send to client.. " + replymessage);
		// return replymessage;
		
	}
	
	@OnClose
	public void handleClose(Session userSession)
	{ 
		chatroomUsers.remove(userSession);
		System.out.println("client id desconnected.............");
	}
	
	/*@OnError
	public void handleError(Throwable t)
	{
		 t.printStackTrace();
	}*/
	
    
	private String buildJsonData(String username , String message)
	{   
		
		javax.json.JsonObject jsonObject = Json.createObjectBuilder().add("message",username+":"+message).build();
		
		StringWriter stringWriter = new StringWriter();
		try (JsonWriter jsonWriter = Json.createWriter(stringWriter))
		{
			jsonWriter.write(jsonObject);
		}
		
		
		
		 return stringWriter.toString();
	}
	
	
}
