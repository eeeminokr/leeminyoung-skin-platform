package cosmetic.web.api;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.Map.Entry;

import javax.print.DocFlavor.STRING;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.xml.sax.InputSource;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;

import org.jsoup.Connection;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.NodeList;

import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;


@ApiIgnore
@RestController
@RequestMapping(value = ApiPath.Keys +"/MedicalInfo")
public class MedicalInfoController{


    @GetMapping(value="/medicalInfoList")
   public List<Map<String,String>> getMedicalBinfo() throws Exception{


    StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlMdcncListInfoInqire"); /*URL*/
    urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=LbgzjWQ9mN2O%2FgTrx0bYiLGeRVOWh0HgvOuz2ls%2BTKJmYUsAILEvZJIYHF%2BCLpPuxfKaNGd9eC1V5bTL69ePgA%3D%3D"); /*Service Key*/
    urlBuilder.append("&" + URLEncoder.encode("Q0","UTF-8") + "=" + URLEncoder.encode("제주특별자치도", "UTF-8")); /*주소(시도)*/
  //  urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("강남구", "UTF-8")); /*주소(시군구)*/
    urlBuilder.append("&" + URLEncoder.encode("QZ","UTF-8") + "=" + URLEncoder.encode("B", "UTF-8")); /*CODE_MST의'H000' 참조(B:병원, C:의원)*/
    urlBuilder.append("&" + URLEncoder.encode("QD","UTF-8") + "=" + URLEncoder.encode("D001", "UTF-8")); /*CODE_MST의'D000' 참조(D001~D029)*/
  //  urlBuilder.append("&" + URLEncoder.encode("QT","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*월~일요일(1~7), 공휴일(8)*/
  //  urlBuilder.append("&" + URLEncoder.encode("QN","UTF-8") + "=" + URLEncoder.encode("삼성병원", "UTF-8")); /*기관명*/
 //  urlBuilder.append("&" + URLEncoder.encode("ORD","UTF-8") + "=" + URLEncoder.encode("NAME", "UTF-8")); /*순서*/
    urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
    urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*목록 건수*/
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
    JSONObject parse_response = (JSONObject) jsonObject.get("response");
    JSONObject parse_body = (JSONObject) parse_response.get("body"); // response 로 부터 body 찾아오기
    JSONObject parse_items = (JSONObject) parse_body.get("items"); // body 로 부터 items 받아오기
    // items 로 부터 itemList : 뒤에 [ 로 시작하므로 jsonArray 이다.
    JSONArray parse_item = (JSONArray) parse_items.get("item");











    JSONObject object;
 
 
    String dutyName;
    String dutyAddr;
    String dutyTel1;
    String img;

    String dutytimeC;
    String dutytimeS;

    String keyNm;

    List<Map<String,String>> list = new ArrayList<>();
    List<Map<String,String>> MedicalList = new ArrayList<>();
    MedicalInfoController medical = new MedicalInfoController();





    int parse_itemSize =parse_item.size();


    
    JSONObject jobject =(JSONObject) parse_item.get(0);



    for (int temp = 0; temp < parse_item.size(); temp++) {
        object = (JSONObject) parse_item.get(temp);



   
        String json = gson.toJson(object);

        TreeMap<String,Object> sortMap = gson.fromJson(json, TreeMap.class);
    
        String ascJson = gson.toJson(sortMap);






        int objSize = object.size();
        dutyName = (String) object.get("dutyName") ; // item 에서 병원 NAME를 검색
        dutyAddr = (String) object.get("dutyAddr"); // item에서 병원 address를 검색 
        dutyTel1 = (String) object.get("dutyTel1"); // item에서 병원 TEL를 검색 

        

        Map<String,String> map = new HashMap<>();
        Map<String,String> map2 = new HashMap<>();

         

 
       



        String dutyNm = "제주 "+dutyName;
        map.put("dutyName",dutyNm);

        img =   medical.getCustomImage(dutyNm);
        map2.put("dutyName",dutyName);
        map2.put("dutyAddr",dutyAddr);
        map2.put("dutyTel1",dutyTel1);
        map2.put("image",img);
        

        list.add(map);
        MedicalList.add(map2);

       
        Set<String> keyList = object.keySet(); // 첫번째 객체 받아 keySet을 받아옴

                               
            
    

        Iterator iter = keyList.iterator() ; // interator 객체생성

   


                            //   0      1   2    3    4    5    6   7      8
    String [] weeks  = {"휴무일","월","화","수","목","금","토","일","공휴일"};
        while(iter.hasNext()){
            keyNm  = (String)iter.next();


            
            
            
            if(keyNm.contains("dutyTime") ){

                
            
                
                 String sizes = keyNm.substring(8, 9);

                


                char [] sol = sizes.toCharArray();
                


                  Arrays.sort(sol);

             

             
                int num = Integer.parseInt(keyNm.substring(8, 9) );
                String  week  =  weeks[num];   
         
                
             
         

                String dutyCs = keyNm.substring(9);
             

            
                map2.put("week",week);
         
                
                
                if(dutyCs == "c"){
                    dutytimeC = (String)object.get(keyNm);
                    map2.put("dutytimeC:", dutytimeC);
                  }else if(dutyCs == "s"){
                    dutytimeS = (String)object.get(keyNm);
                    map2.put("dutytimeS:", dutytimeS);
                  }
                




               
                // System.out.println("getTimeNm:"+getTimeNm);
                //keyNm.substring(9);
            
                


            }
            
            // for(int i=1; i<9; i++){
            //     System.out.println("keyNm::"+keyNm);
            //     System.out.println("dutyTimeC::"+"dutyTime"+i+"c");
                /* 
            if(keyNm == "dutyTime"+i+"c"){
                System.out.println("keyNmC::"+keyNm);
            
            }else if(keyNm == "dutyTime"+i+"s"){
                System.out.println("keyNmS::"+keyNm);
            }else{
                System.out.println("없음");
            }
            */
                /*       
                for(int i=1; i<9; i++){
                 // if(object.get(keyNm)==null || object.get(keyNm).equals("")){
                    if(keyNm == getTimeNm+i+"c"){
                    System.out.println("keyNm::"+keyNm);
                    System.out.println("keyVal::"+object.get(keyNm));
                    }else if(keyNm == getTimeNm+i+"s"){
                  System.out.println("keyVal::"+object.get(keyNm));
                }else{
                    System.out.println("값없음");
                }
          }
          */
        // }
    }
         

 
    



    
  

   
    }

 


    return MedicalList;







   } 


   public String getCustomImage(String img) throws IOException {
    List<Map<String,String>> setImglist = new ArrayList<>();
    Object src=null;
    String imageUrl = "";
    /* 
    for(int i = 0; i < list.size(); i++){
        
       Object getdutyNm =  list.get(i);
        System.out.println("이름값:"+getdutyNm);
        System.out.println("list 순서 " + i + "번쨰"); 
        for( Entry<String, String> elem : list.get(i).entrySet() ){ 
            // list 각각 hashmap받아서 출력합니다.
            System.out.println( String.format("키 : %s, 값 : %s", elem.getKey(), elem.getValue()) );
      
*/

       
        try{
            Connection.Response res = Jsoup.connect(
                    "https://www.googleapis.com/customsearch/v1?key=AIzaSyCnorEttNEHEcMpjNMU22U2iFTKuTjRkD0&cx=9f30d7a5361b43f35&searchType=image&start=1&num=1&q="+img)
                    .ignoreContentType(true).userAgent("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36").execute();
            org.json.JSONObject json = null;

            json = new org.json.JSONObject(res.body());
            imageUrl =
            json.getJSONArray("items").getJSONObject(0).getJSONObject("image").getString("thumbnailLink"); 
                  //  json.getJSONArray("items").getJSONObject(0).getJSONObject("pagemap").getJSONArray("cse_thumbnail").getJSONObject(0).getString("src");
            Map<String,String> map = new HashMap<>();
            map.put("image",imageUrl);
            setImglist.add(map);
        }catch (Exception e){
            imageUrl = "";
        }

  //  }

       






        /* 
            String url = "https://www.googleapis.com/customsearch/v1?key=AIzaSyCnorEttNEHEcMpjNMU22U2iFTKuTjRkD0&cx=9f30d7a5361b43f35&searchType=image&start=1&num=1&q=제주 WE병원";
            Document doc = Jsoup.connect(url).ignoreContentType(true).get();
    
            JSONParser par = new JSONParser();
            String body = doc.selectFirst("body").text();
        
            try {


                
                JSONObject jo = (JSONObject) par.parse(body);
                System.out.println("jo:"+jo);
                Object items_obj = jo.get("items");
                JSONArray ja = (JSONArray) items_obj;
             
                JSONObject jao = (JSONObject) ja.get(0);
                JSONObject pm = (JSONObject) jao.get("image");
            /* 
               //	JSONArray ja_cse = (JSONArray) pm.get("thumbnailLink");
                JSONObject jo_cse = (JSONObject) pm.get(0);
                src = jo_cse.get("thumbnailLink");
               
              JSONObject object;
              String thumb;
              for (int temp = 0; temp < pm.size(); temp++) {
                object = (JSONObject) pm.get(temp);
                thumb = (String) object.get("thumbnailLink");
                System.out.println("tumb::"+thumb);
            }  
              
                
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("scr:"+src);   
   
 
    }
	*/	

   
 
    return imageUrl;
   }

  


   public static Map<String,Object> getNodeList(NodeList nodeList){
    Map<String, Object> dataMap = new HashMap<>();
    for(int i = 0; i < nodeList.getLength(); i++){
        String tagName = nodeList.item(i).getNodeName();
        if(!"#text".equals(tagName)){
            if(nodeList.item(i).getChildNodes().getLength()>1){
                dataMap.put(tagName,getNodeList(nodeList.item(i).getChildNodes()));
            }else{
               dataMap.put(tagName, nodeList.item(i).getTextContent());
            }
        }
    }
    return dataMap;
}





}