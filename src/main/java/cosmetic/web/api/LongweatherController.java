package cosmetic.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.hateoas.MediaTypes;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;
@ApiIgnore
@RestController
@RequestMapping(value=ApiPath.Keys+"/LongWeather", produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")
public class LongweatherController {

	private HashMap<String, String> dataArray() {

		HashMap<String, String> datas = new HashMap<>();
		LocalDate now = LocalDate.now();
		LocalTime now_time = LocalTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH00");
		
		int before = Integer.parseInt(now_time.format(formatter2));

		
		


		
		
		if( before ==0) {
			now = now.minusDays(1);
			now_time = now_time.of(18, 0);
		}else if( 100<= before && before <= 600 ) {
			now = now.minusDays(1);
			now_time = now_time.of(18, 0);
		}else if( 600 <= before && before <= 1800) {
			now_time = now_time.of(6, 0);
		}else if( 1800 <= before && before <= 2300) {
			now_time = now_time.of(18, 0);
		}
		
		
		
		
		datas.put("date", now.format(formatter));
		datas.put("time", now_time.format(formatter2));
		
		return datas;

	}
	
	@GetMapping(value="/sevenstatus",produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")	
	public String getSevenStatus() throws Exception{
		String date = dataArray().get("date");
	    String time = dataArray().get("time");

		
		   StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/MidFcstInfoService/getMidLandFcst"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON)Default: XML*/
	        urlBuilder.append("&" + URLEncoder.encode("regId","UTF-8") + "=" + URLEncoder.encode("11G00000", "UTF-8")); /*11B0000 서울, 인천, 경기도 11D10000 등 (활용가이드 하단 참고자료 참조)*/
	        urlBuilder.append("&" + URLEncoder.encode("tmFc","UTF-8") + "=" + URLEncoder.encode(date+time, "UTF-8")); /*-일 2회(06:00,18:00)회 생성 되며 발표시각을 입력 YYYYMMDD0600(1800)-최근 24시간 자료만 제공*/
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
	      //  System.out.println("7Status배열값:"+sb.toString());
	        String result = sb.toString();
	        
	        Gson gson = new Gson();
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
	        JSONObject parse_response = (JSONObject) jsonObject.get("response");
	        JSONObject parse_body = (JSONObject) parse_response.get("body"); // response 로 부터 body 찾아오기
	        JSONObject parse_items = (JSONObject) parse_body.get("items"); // body 로 부터 items 받아오기
	        // items 로 부터 itemList : 뒤에 [ 로 시작하므로 jsonArray 이다.
	        JSONArray parse_item = (JSONArray) parse_items.get("item");


	        // item 들을 담은 List 를 반복자 안에서 사용하기 위해 미리 명시
	        JSONObject object;
	        // item 내부의 category 를 보고 사용하기 위해서 사용
	      

	    
	    //    System.out.println("7Statusgson::::"+gson.toJson(parse_item));
	        
	        return gson.toJson(parse_item);
		
		
	}
	
	@GetMapping(value="/sevendays",produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")	
	public String getSevenDays() throws Exception{
		String date = dataArray().get("date");
	    String time = dataArray().get("time");

		  StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON)Default: XML*/
	        urlBuilder.append("&" + URLEncoder.encode("regId","UTF-8") + "=" + URLEncoder.encode("11G00201", "UTF-8")); /*11B10101 서울, 11B20201 인천 등 ( 별첨엑셀자료 참고)*/
	        urlBuilder.append("&" + URLEncoder.encode("tmFc","UTF-8") + "=" + URLEncoder.encode(date+time, "UTF-8")); /*-일 2회(06:00,18:00)회 생성 되며 발표시각을 입력- YYYYMMDD0600(1800) 최근 24시간 자료만 제공*/
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
	      //  System.out.println("7days배열값:"+sb.toString());
	        String result = sb.toString();
	        
	        
	        Gson gson = new Gson();
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
	        JSONObject parse_response = (JSONObject) jsonObject.get("response");
	        JSONObject parse_body = (JSONObject) parse_response.get("body"); // response 로 부터 body 찾아오기
	        JSONObject parse_items = (JSONObject) parse_body.get("items"); // body 로 부터 items 받아오기
	        // items 로 부터 itemList : 뒤에 [ 로 시작하므로 jsonArray 이다.
	        JSONArray parse_item = (JSONArray) parse_items.get("item");


	        // item 들을 담은 List 를 반복자 안에서 사용하기 위해 미리 명시
	        JSONObject object;
	        // item 내부의 category 를 보고 사용하기 위해서 사용
	      

	        
	        //System.out.println("7daysgson::::"+gson.toJson(parse_item));
	        
	        
	        // jsonArray를 반복자로 반복
//	        for (int temp = 0; temp < parse_item.size(); temp++) {
//	            object = (JSONObject) parse_item.get(temp);
//	            category = (String) object.get("category"); // item 에서 카테고리를 검색
//
//
//	          
//	        }
	        
		
		return gson.toJson(parse_item);
	}
	
	
}
