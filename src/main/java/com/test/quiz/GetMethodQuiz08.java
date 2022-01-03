package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "집 근처 맛집이라고 해서 갔는데 맛집이라고 하기엔 부족했어요.",
		        "자축 저 오늘 생일 이에요."));
		String keyword = requset.getParameter("keyword");
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		Iterator<String> iter = list.iterator();
		
//		while (iter.hasNext()) {
//			String line = iter.next();
//			
//			// 검색
//			
//			if (line.contains(keyword)) {
//				String[] words = line.split(" "); // 한 문장을 띄어쓰기 기준으로 자른다
//				for (int i = 0; i< words.length; i++) {
//					String word = words[i]; // 맛집의 
//					if (word.equals(keyword)) { // 자른 단어가 keyword와 같을 때
//						out.print("<b>" + keyword + "</b> ");
//					} else if (word.contains(keyword)) { // 자른 단어에 keyword가 들어가지만 다른 단어가 붙을 때
//						
//						if(word.startsWith(keyword)) { // 키워드로 시작할 때
//							out.print("<b>" + keyword + "</b>");
//							out.print(word.substring(keyword.length(), word.length()) + " ");
//						} else if (word.endsWith(keyword)) { // 키워드로 끝날 때
//							int num = word.indexOf(keyword); // 시작지점
//							out.print(word.substring(0, num));
//							out.print("<b>" + keyword + "</b> ");
//						} else { // 키워드가 중간에 끼어 있을 때
//							int num = word.indexOf(keyword); // 시작지점
//							out.print(word.substring(0, num));
//							out.print("<b>" + keyword + "</b>");
//							out.print(word.substring((num + keyword.length()), word.length()) + " ");
//						}
//
//					} else {
//						out.print(word + " "); // 자른 단어에 keyword가 없을때
//					}
//					
//				}
//				out.print("<br>");
//			}
//		}
		
		
		// 풀이 1)
//		while (iter.hasNext()) {
//			String line = iter.next();
//			if (line.contains(keyword)) {
//				int index = line.indexOf(keyword);
//				if (index > -1) {
//					StringBuffer sb = new StringBuffer();
//					sb.append(line);
//					sb.insert(index, "<b>"); // |맛집  |부분에 <b> 태그 추가
//					sb.insert(index + keyword.length() + 3, "</b>"); // <b>맛집|  |부분에 </b> 태그 추가 +3은 "<", "b", ">" 3개를 의미
//					
//					out.print(sb + "<br>");
//					
//				}
//			}
//		}
		
		
		// 풀이 2)
//		while (iter.hasNext()) {
//			String line = iter.next();
//			if (line.contains(keyword)) {
//				String[] words = line.split(keyword);
//				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
//			}
//		}
		
		// 풀이 3) 모든 맛집 적용
		while (iter.hasNext()) {
		String line = iter.next();
			if (line.contains(keyword)) {
				line = line.replace(keyword, "<b>" + keyword + "</b>");
				
				out.print(line + "<br>");
			}
		}
			
		out.print("</body></html>");
	}
}
