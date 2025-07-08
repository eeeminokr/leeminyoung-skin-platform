package cosmetic.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;
@ApiIgnore
@RestController
@RequestMapping(ApiPath.Keys+"/TourInfo")
public class TourInfoController {

	
	@GetMapping(value="/tourList")
	public String getTourInfo(@RequestParam (value = "curPageNum", defaultValue = "1", required = false) int curPageNum
	) throws Exception {
		
		  StringBuilder urlBuilder = new StringBuilder("http://api.visitjeju.net/vsjApi/contents/searchList"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("apiKey","UTF-8") + "=lvfgit8oqvz1kjmk"); /*Service Key*/
	       // urlBuilder.append("&" + URLEncoder.encode("category","UTF-8") + "=" + URLEncoder.encode("cl", "UTF-8"));
	     //   urlBuilder.append("&" + URLEncoder.encode("returnType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*xml 또는 json*/
	        urlBuilder.append("&" + URLEncoder.encode("locale","UTF-8") + "=" + URLEncoder.encode("kr", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("page","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
			urlBuilder.append("&" + URLEncoder.encode("category","UTF-8") + "=" + URLEncoder.encode("c1", "UTF-8"));
	  //      urlBuilder.append("&" + URLEncoder.encode("page","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	//	urlBuilder.append("&" + URLEncoder.encode("page","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); 
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json; utf-8");
			conn.setRequestProperty("Accept", "application/json");


			Charset charset = Charset.forName("UTF-8");
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),charset));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(),charset));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();

	        String result = sb.toString();
		
			Gson gson = new Gson();

			JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
			JSONArray parse_items = (JSONArray)  jsonObject.get("items");

	        // item 들을 담은 List 를 반복자 안에서 사용하기 위해 미리 명시
	        JSONObject object;
			JSONObject contentscd;
			JSONObject region1cd;
			JSONObject region2cd;
			JSONObject  repPhoto;
			JSONObject photoid;
			String title = null;
			String labelOne = null;
			String labelTwo = null;
			String labelThree = null;
			String thumnailImage = null;


			//페이지 리스트 count 
			int listcount = 0;
			//List<String> testList  = null;
			LinkedHashMap<String,Object> tourList = new LinkedHashMap<String, Object>();
			
			for (int temp = 0; temp < parse_items.size(); temp++) {
		
				listcount = parse_items.size();
				object = (JSONObject) parse_items.get(temp);
				title = (String) object.get("title"); // item 에서 카테고리를 검색
				contentscd = (JSONObject)object.get("contentscd");
				region1cd = (JSONObject)object.get("region1cd");
				region2cd = (JSONObject)object.get("region2cd");
				repPhoto = (JSONObject)object.get("repPhoto");
				photoid = (JSONObject)repPhoto.get("photoid");
				labelOne = (String)contentscd.get("label");
				labelTwo = (String)region1cd.get("label");
				labelThree = (String)region2cd.get("label");
				
				thumnailImage = (String)photoid.get("thumbnailpath");

			
				tourList.put("labelOne"+temp,labelOne);
				tourList.put("thumnailImage"+temp,thumnailImage);
				tourList.put("title"+temp,title);
				tourList.put("labelTwo"+temp,labelTwo);
				tourList.put("labelThree"+temp,labelThree);
			
					
			}

		
		Map<String, Object> tourResult = new HashMap<String, Object>();
		
	





		
		int count = listcount; // 총 게시글 수
		int pageScale = 6; // 페이지당 게시글 수
		int blockScale = 6;
		int curPage = curPageNum == 1 ? 1 : curPageNum;
		int toPage = (int) Math.ceil(count * 1.0 / pageScale);
		int toBlock = (int) Math.ceil(toPage / blockScale);
		
		// *현재 페이지가 몇번째 페이지 블록에 속하는지 계산
		int curBlock = (int) Math.ceil((curPage - 1) / blockScale) + 1;
		
		// *현재 페이지 블록의 시작, 끝 번호 계산
		int blockBegin = (curBlock-1) * blockScale + 1;
		
		// 페이지 블록의 끝번호
		int blockEnd = blockBegin + blockScale - 1;
		
		// *마지막 블록이 범위를 초과하지 않도록 계산
		if(blockEnd > toPage) blockEnd = toPage;
		
		// *이전을 눌렀을 때 이동할 페이지 번호
		int prevPage = (curPage == 1) ? 1:(curBlock-1) * blockScale;
		
		// *다음을 눌렀을 때 이동할 페이지 번호
		int nextPage = curBlock > toBlock ? (curBlock * blockScale) : (curBlock * blockScale) + 1;
		
		// 마지막 페이지가 범위를 초과하지 않도록 처리
		if(nextPage >= toPage) nextPage = toPage;
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("curBlock", curBlock); 
		pageMap.put("prevPage", prevPage);
		pageMap.put("blockBegin", blockBegin); 
		pageMap.put("blockEnd", blockEnd);
		pageMap.put("curPage", curPage);
		pageMap.put("toBlock", toBlock);
		pageMap.put("nextPage", nextPage); 
		pageMap.put("toPage", toPage);	




	/* 	
			//페이징 처리 선언
			 
			int limit = 6;
					
			System.out.println("listcount:"+listcount);
      // 총 페이지수
      int maxpage = (listcount + limit - 1) / limit; // (13 + 9) / 10


      // 시작 페이지수
      int startpage = ((page - 1) / 10) * 10 + 1;

      // 마지막 페이지수
      int endpage = startpage + 10 - 1;

	  if (endpage > maxpage){
	 	 endpage = maxpage;
		}
	*/

		
		
		tourResult.put("listcount",listcount);
		tourResult.put("pageMap",pageMap);
		tourResult.put("tourList",tourList);

		
		return gson.toJson(parse_items);
	}
	


}
