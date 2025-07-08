package cosmetic.domain;


import lombok.Data;

@Data
public class Shortweather {
	
	private String locationCode;
	private String date;
	private String time; 
	private String POP;
	private String PTY;
	private String PCP;
	private String REH;
	private String SNO;
	private String SKY;
	private String TMP;
	private String TMN;
	private String TMX;
	private String UUU;
	private String VVV;
	private String WAV;
	private String VEC;
	private String WSD;

	
	private String fcstDate;
	private String fcstTime;
	private String fcStValue;
	private String category;

	

   
}


