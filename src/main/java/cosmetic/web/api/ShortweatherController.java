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
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import cosmetic.domain.Shortweather;
import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;

@ApiIgnore
@RestController
@RequestMapping(value=ApiPath.Keys+"/shortWeather",produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")
public class ShortweatherController {

	

	
private HashMap<String, String> dataArray() {

	HashMap<String, String> datas = new HashMap<>();
	LocalDate now = LocalDate.now();
	LocalTime now_time = LocalTime.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
	DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH00");
	
	int before = Integer.parseInt(now_time.format(formatter2));

	
	
	int after =210;
	if( before == 0 ) {
		now = now.minusDays(1);
		now_time = now_time.of(23, 0);
		
	}else if(before >= 2300 ){
		now_time = now_time.of(23, 0);
	}else if( before >= 100 && before < 200  ) {
		now = now.minusDays(1);
		now_time = now_time.of(23, 0);
		
	}else if( 200<=before && before <500 ) {
		now_time = now_time.of(2, 0);
	}else if( 500<=before && before <800) {
		now_time = now_time.of(5, 0);
	}else if( 800<=before && before <1100) {
		now_time = now_time.of(8, 0);
	}else if( 1100<=before && before <1400) {
		now_time = now_time.of(11, 0);
	}else if( 1400<=before && before <1700) {
		now_time = now_time.of(14, 0);
	}else if( 1700<=before && before <2000) {
		now_time = now_time.of(17, 0);
	}else if( 2000<=before && before <2300) {
		now_time = now_time.of(20, 0);
	}
	
	
	
	datas.put("date", now.format(formatter));
	datas.put("time", now_time.format(formatter2));
	
	return datas;

}
	
	

@GetMapping(value="/onedays",produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")	
public String getOneDays() throws Exception{
			String date = dataArray().get("date");
		    String time = dataArray().get("time");

		    
		
	        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") +"=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
	        urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(date, "UTF-8")); /*‘21년 6월 28일 발표*/
	        urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(time, "UTF-8")); /*06시 발표(정시단위) */
	        urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode("53", "UTF-8")); /*예보지점의 X 좌표값*/
	        urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode("38", "UTF-8")); /*예보지점의 Y 좌표값*/
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

	        String category;
	        
	        String  value;
	        String fcstDate;
	        String fcstTime;
	        Shortweather Sweather = new Shortweather();

	        MultiValueMap<String, Object> mvMap = new LinkedMultiValueMap<>();
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
		      

		        
		     //   System.out.println("gson::::"+gson.toJson(parse_item));
		       
		        
		        // jsonArray를 반복자로 반복
		        for (int temp = 0; temp < parse_item.size(); temp++) {
		            object = (JSONObject) parse_item.get(temp);
		            category = (String) object.get("category"); // item 에서 카테고리를 검색


		          
		        }
		           

		
		return gson.toJson(parse_item);


	
	
	}






@GetMapping(value="/threedays",produces = MediaTypes.HAL_JSON_VALUE+";charset=UTF-8")	
public String gethreeDays() throws Exception{
			String date = dataArray().get("date");
		    String time = dataArray().get("time");
			String setTime =null;

		    if(date == "2300") {
		    	setTime = time;
		    }else {
		    	setTime = "0200";
		    }
		
	        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") +"=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
	        urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(date, "UTF-8")); /*‘21년 6월 28일 발표*/
	        urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(setTime, "UTF-8")); /*06시 발표(정시단위) */
	        urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode("53", "UTF-8")); /*예보지점의 X 좌표값*/
	        urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode("38", "UTF-8")); /*예보지점의 Y 좌표값*/
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
	       // System.out.println(result);
	        String category;
	        
	        String  value;
	        String fcstDate;
	        String fcstTime;
	        Shortweather Sweather = new Shortweather();

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
        

		        
		        
		        // jsonArray를 반복자로 반복
		        for (int temp = 0; temp < parse_item.size(); temp++) {
		            object = (JSONObject) parse_item.get(temp);
		            category = (String) object.get("category"); // item 에서 카테고리를 검색

     
		            value = (String)object.get("fcstValue");
		            fcstDate = (String)object.get("fcstDate");
		            fcstTime = (String)object.get("fcstTime");
		            	             

		       
		          
		        }
		           

		
		return gson.toJson(parse_item);

	        

	}

	
}