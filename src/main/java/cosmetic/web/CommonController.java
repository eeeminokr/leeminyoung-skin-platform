package cosmetic.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cosmetic.domain.BoardItem;
import cosmetic.service.BoardService;


@Controller
public class CommonController {
	@Autowired
	private BoardService boardService;

	@GetMapping(value="/old")
	public String main(Model model) {
		// TODO Add noticeItems into Model and show them in Main (main.jsp) page
		// Get notice items to show on Main page

		var noticeItems = getNotice(10);
		model.addAttribute("noticeItems", noticeItems);

		//Add
		var bannerItems = this.boardService.getBanner();
		if (bannerItems != null && bannerItems.size() > 0) {
			model.addAttribute("bannerItems", bannerItems);
		}

		return "main";
	}

	@GetMapping(value = "/old/common/terms" )	
	public String CommonTerms() {

		return"common/terms";
	}

	@GetMapping(value = "/old/common/policy" )	
	public String CommonPolicy() {

		return"common/policy";
	}

	private List<BoardItem> getNotice(final int count) {		
		final String CODE = "NOTICE";
		var data = this.boardService.searchBoardItems(CODE, 1, count);

		return data.getItems();
	}
}
