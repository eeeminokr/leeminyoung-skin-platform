package cosmetic.web;

import javax.servlet.http.HttpServletRequest;

public class MobileDetectocr {
    public static String determinePage(HttpServletRequest request, String mobilePage, String desktopPage) {
        String userAgent = request.getHeader("User-Agent");
        String userAgent2 = "userAgent=Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148Safari/604.1";

        boolean isMobile = userAgent != null && userAgent.matches(
                ".*(?:Mobile|iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson).*");

        return isMobile ? mobilePage : desktopPage;
    }
}
 