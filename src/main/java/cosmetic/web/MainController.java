package cosmetic.web;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cosmetic.domain.BoardItem;
import cosmetic.service.BoardService;
import cosmetic.web.api.BoardApiController;
import io.swagger.annotations.ApiOperation;

@Controller
@ApiOperation(value = "mainController")
public class MainController extends HttpServlet {
	@Autowired
	private BoardService boardService;

	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);

	@GetMapping(value = "/")
	public String viewMainHome(HttpServletRequest request, Model model) {

		String page = MobileDetectocr.determinePage(request, "pages/mobile/main", "pages/main");

		var noticeItems = getNotice(10);
		model.addAttribute("noticeItems", noticeItems);

		// Add
		var bannerItems = this.boardService.getBanner();
		if (bannerItems != null && bannerItems.size() > 0) {
			model.addAttribute("bannerItems", bannerItems);
		}
		return "pages/main";
	}

	@GetMapping(value = "/main/terms")
	public String CommonTerms() {

		return "pages/main/terms";
	}

	@GetMapping(value = "/main/policy")
	public String CommonPolicy() {

		return "pages/main/policy";
	}

	private List<BoardItem> getNotice(final int count) {
		final String CODE = "NOTICE";
		var data = this.boardService.searchBoardItems(CODE, 1, count);

		return data.getItems();
	}
}
