package com.viewnext.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

	@GetMapping("/helloworld")
	public Map<String, String> helloWorld(){
		
		HashMap<String, String> myMap = new HashMap<>();
		myMap.put("hello", "world");
		
		return myMap;
	}
}
