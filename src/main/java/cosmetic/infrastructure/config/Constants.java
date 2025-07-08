package cosmetic.infrastructure.config;

public abstract class Constants {
   
   
   public static final String USER_STATUS_ACTIVE = "ACTIVE";
    public static final String USER_STATUS_INACTIVE = "INACTIVE";
    
    public static final String USER_STATUS_UNAPPROVED = "UNAPPROVED";
    /**
     * 장기 미접속일 경우
     */
    public static final String USER_STATUS_EXPIRED = "EXPIRED";
    public static final String USER_STATUS_REMOVED = "REMOVED";

    /**
     * 비밀번호 오류 재시도 횟수 초과할 경우
     */
    public static final String USER_STATUS_LOCKED = "LOCKED";

}