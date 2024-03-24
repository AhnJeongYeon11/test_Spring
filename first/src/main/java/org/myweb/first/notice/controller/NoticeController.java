package org.myweb.first.notice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.myweb.first.notice.model.service.NoticeService;
import org.myweb.first.notice.model.vo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	//요청 처리용 메소드 -----------------------------------------------
	@RequestMapping(value="ntop3.do", method=RequestMethod.POST)
	@ResponseBody
	public String noticeTop3() throws UnsupportedEncodingException {
		ArrayList<Notice> list = noticeService.selectTop3();
		
		JSONArray jarr = new JSONArray();
		
		for(Notice notice : list) {
			JSONObject job = new JSONObject();
			
			job.put("no", notice.getNoticeNo());
			//한글 데이터는 반드시 인코딩 처리함
			job.put("title", URLEncoder.encode(notice.getNoticeTitle(), "utf-8"));
			//날짜데이터는 반드시 toString() 으로 바꾸어 저장해야 함 => 날짜 그대로 담으면 뷰에서 출력안됨
			job.put("date", notice.getNoticeDate().toString());
			
			jarr.add(job);
		}
		
		JSONObject sendJson = new JSONObject();
		sendJson.put("nlist", jarr);
		
		return sendJson.toJSONString();
	}
}









