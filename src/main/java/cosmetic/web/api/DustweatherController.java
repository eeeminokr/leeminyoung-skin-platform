package cosmetic.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;
@ApiIgnore
@RestController
@RequestMapping(ApiPath.Keys+"/DustWeather")
public class DustweatherController {

	
	@GetMapping(value="/dustone")
	public String getDustOne() throws Exception {
		
		  StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("returnType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*xml 또는 json*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("stationName","UTF-8") + "=" + URLEncoder.encode("이도동", "UTF-8")); /*측정소 이름*/
	        urlBuilder.append("&" + URLEncoder.encode("dataTerm","UTF-8") + "=" + URLEncoder.encode("DAILY", "UTF-8")); /*요청 데이터기간(1일: DAILY, 1개월: MONTH, 3개월: 3MONTH)*/
	        urlBuilder.append("&" + URLEncoder.encode("ver","UTF-8") + "=" + URLEncoder.encode("1.0", "UTF-8")); /*버전별 상세 결과 참고*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	    //    System.out.println("DustOne배열값:"+sb.toString());
	        String result = sb.toString();
	        
	        Gson gson = new Gson();
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
	        JSONObject parse_response = (JSONObject) jsonObject.get("response");
	        JSONObject parse_body = (JSONObject) parse_response.get("body"); // response 로 부터 body 찾아오기
	        // body 로 부터 itemsList : 뒤에 [ 로 시작하므로 jsonArray 이다.
	        JSONArray parse_items = (JSONArray)  parse_body.get("items");
		
	        // item 들을 담은 List 를 반복자 안에서 사용하기 위해 미리 명시
	        JSONObject object;
	        // item 내부의 category 를 보고 사용하기 위해서 사용
	        //System.out.println("DustOnegson::::"+gson.toJson(parse_items));
	      //  return gson.toJson(parse_items);
	        return gson.toJson(parse_items);
	}
	
	
	
	
	
}