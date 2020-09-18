package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import model.User;
import service.LoadService;

@Controller
public class LoadController {

	@Autowired
	private LoadService loadService;
	
	
	static String locality = "";
	
	
	//getter & setter
	

	@RequestMapping("/load.do")
	@ResponseBody
	public void loadProvince(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("开始加载");
		response.setCharacterEncoding("UTF-8");
		
//		locality="";
		
		String flag = request.getParameter("flag");
		String username = request.getParameter("username");
		List<HashMap<String, String>> alhs = null;
		
		System.out.println("test username "+username);

		PrintWriter out;
		if (flag == null) {
			alhs = loadService.selectProvinceAll();
			locality = alhs.get(0).get("name");
		} else if (flag != null && flag.equals("1")) {
			String code = request.getParameter("code");//1
			alhs = loadService.selectCityByCode(code);
			locality += alhs.get(0).get("name");
		}else if(flag != null && flag.equals("2")) {
			String code = request.getParameter("code");
			alhs = loadService.selectAreaByCode(code);//2
			locality += alhs.get(0).get("name");
			
		}
		
//		this.setLocality(locality);
		
		System.out.println("locality + "+locality);
		
		try {
			out = response.getWriter();
			Gson g = new Gson();
			String json = g.toJson(alhs);
			System.out.println(json);
			out.print(json);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	

	public static String getLocality() {
		return locality;
	}



	public static void setLocality(String locality) {
		LoadController.locality = locality;
	}



	@RequestMapping("/save.do")
	@ResponseBody
	public void saveLocToDB(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("开始保存");
		response.setCharacterEncoding("UTF-8");
		String neckname = request.getParameter("neckname");
		
		int status=0;
		
		PrintWriter out;
		try {
			loadService.addToDB(locality, neckname);
			status = 1;
			out = response.getWriter();
			out.print(status);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
}
