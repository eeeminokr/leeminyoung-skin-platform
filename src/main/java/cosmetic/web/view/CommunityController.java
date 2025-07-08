package cosmetic.web.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import cosmetic.core.EcoVo;
import cosmetic.domain.AuthDetails;
import cosmetic.persistence.BoardMapper;
import cosmetic.service.BoardService;
import cosmetic.web.MobileDetectocr;


@Controller
// @RequestMapping("/community")
public class CommunityController {
	private static final int MAX_ROWS = 1000;
	private static final int DEFAULT_ROWS = 2;

	@Autowired
	private BoardService boardService;

	@Autowired
	private BoardMapper boardMapper;

	private static final Logger LOGGER = LoggerFactory.getLogger(CommunityController.class);

   /**
    * 공지사항 조회
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/community/community_01" })
   public String viewCommunityNotice(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo,
      @RequestParam(name="page", required = false) Integer page,
	  @RequestParam(name = "offset", required = false) Integer rows,Authentication authentication
   ) {
       // paramVo.setCustomer(customer);
		final String CODE = "NOTICE";
		// if ( authDetails.get)
		// authDetails.getAuthorities();
		// authDetails.getAuthorities();
		// SecurityContextHolder.getContext().getAuthentication();


		if (page == null || page <= 0) {
			page = 1;
		}
		if (rows == null || rows <= 0 || rows > MAX_ROWS) {
			rows = DEFAULT_ROWS;
		}

		var data = this.boardService.searchBoardItems(CODE, page, rows);
		model.addAttribute("rows", rows);
		model.addAttribute("items", data.getItems());
		model.addAttribute("total", data.getTotalCount());
		model.addAttribute("page", page);

		String mobileDetect = MobileDetectocr.determinePage(request, "pages/mobile/community/community_01",
                "pages/community/community_01");
		return "pages/community/community_01";
        // return mobileDetect;
   }

   /**
    * 공지사항 상세
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = "/community/community_01/{id}")
   public String viewCommunityNoticeDetail(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute(name = "paramVo") EcoVo paramVol, @PathVariable("id") Long id) {
		final String CODE = "NOTICE";
		
		// Board Item
		var item = this.boardService.getBoardItem(CODE, id);
		if (item == null || item.getBoardItemId() <= 0) {
			return "/common/error-404";
		}

		item.setViewCount(item.getViewCount() + 1);
		model.addAttribute("item", item);
		
		// Board File
		var files = this.boardService.getBoardFiles(id);
		if (files != null && files.size() > 0) {
			model.addAttribute("file", files.get(0));
		}

		// Prev & Next Board Ite
		var prev = this.boardMapper.selectPreviousOneBoardItem(CODE, item.getDateTimeUpdated());
		if (prev != null && prev.getBoardItemId() > 0) {
			model.addAttribute("prev", prev);
		}
		var next = this.boardMapper.selectNextOneBoardItem(CODE, item.getDateTimeUpdated());
		if (next != null && next.getBoardItemId() > 0) {
			model.addAttribute("next", next);
		}

		// Update view count
		try {
			this.boardMapper.updateOneBoardItemViewCount(id);
		}
		catch (Exception ex) {
			LOGGER.error("Error while updating board-item-view-count. [BOARD={}]", id);
		}
		String mobileDetect = MobileDetectocr.determinePage(request, "pages/mobile/community/community_01_view",
                "pages/community/community_01_view");

        // return mobileDetect;
        return "pages/community/community_01_view";

       // paramVo.setCustomer(customer);
   }
   

   /**
    * 동영상 자료
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/community/community_02_1" })
   public String viewCommunityVideoDataroom(HttpServletRequest request, Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo,
      @RequestParam(name="page", required = false) Integer page, @RequestParam(name = "offset", required = false) Integer rows  
   ) {
       // paramVo.setCustomer(customer);
		final String CODE = "MOVIE";
	   if (page == null || page <= 0) {
		   page = 1;
	   }
	   rows = 10;
//		if (rows == null || rows <= 0 || rows > MAX_ROWS) {
//			rows = DEFAULT_ROWS;
//		}
	   var data = this.boardService.searchBoardItems(CODE, page, rows);

	   model.addAttribute("rows", rows);
	   model.addAttribute("items", data.getItems());
	   model.addAttribute("total", data.getTotalCount());
	   model.addAttribute("page", page);

	   String mobileDetect = MobileDetectocr.determinePage(request, "pages/mobile/community/community_02_1",
                "pages/community/community_02_1");

    //    return mobileDetect;
       return "pages/community/community_02_1";
   }

   /**
    * 기타 자료실
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/community/community_02_2" })
   public String viewCommunityEtcDataroom(Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo) {
       // paramVo.setCustomer(customer);
       return "pages/community/community_02_2";
   }

   /**
    * 자주 묻는 질문
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/community/community_02_3" })
   public String viewCommunityFaq(HttpServletRequest request, Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo) {
       // paramVo.setCustomer(customer);
		String mobileDetect = MobileDetectocr.determinePage(request, "pages/mobile/community/community_02_3",
		"pages/community/community_02_3");

		// return mobileDetect;
		return "pages/community/community_02_3";
   }

	@GetMapping(value = "/old/community_01")
	public String community_01(Model model, @RequestParam(name="page", required = false) Integer page, @RequestParam(name = "offset", required = false) Integer rows) {
		final String CODE = "NOTICE";
		
		if (page == null || page <= 0) {
			page = 1;
		}
		if (rows == null || rows <= 0 || rows > MAX_ROWS) {
			rows = DEFAULT_ROWS;
		}
		var data = this.boardService.searchBoardItems(CODE, page, rows);		
		model.addAttribute("items", data.getItems());
		model.addAttribute("total", data.getTotalCount());
		model.addAttribute("page", page);

		return "community/community_01";	
	}

	@GetMapping(value = "/old/community_01/{id}")
	public String getNotice(Model model, @PathVariable("id") Long id) {
		final String CODE = "NOTICE";
		
		// Board Item
		var item = this.boardService.getBoardItem(CODE, id);
		if (item == null || item.getBoardItemId() <= 0) {
			return "/common/error-404";
		}

		item.setViewCount(item.getViewCount() + 1);
		model.addAttribute("item", item);
		
		// Board File
		var files = this.boardService.getBoardFiles(id);
		if (files != null && files.size() > 0) {
			model.addAttribute("file", files.get(0));
		}

		// Prev & Next Board Ite
		var prev = this.boardMapper.selectPreviousOneBoardItem(CODE, item.getDateTimeUpdated());
		if (prev != null && prev.getBoardItemId() > 0) {
			model.addAttribute("prev", prev);
		}
		var next = this.boardMapper.selectNextOneBoardItem(CODE, item.getDateTimeUpdated());
		if (next != null && next.getBoardItemId() > 0) {
			model.addAttribute("next", next);
		}

		// Update view count
		try {
			this.boardMapper.updateOneBoardItemViewCount(id);
		}
		catch (Exception ex) {
			LOGGER.error("Error while updating board-item-view-count. [BOARD={}]", id);
		}
		
		return "community/community_01_view";
	}	


	/*@GetMapping(value = "/community_02_1")
	public String community_02_1() {
			
		return "community/community_02_1";	
	}*/
	@GetMapping(value = "/old/community_02_2")
	public String community_02_2() {
			
		return "community/community_02_2";	
	}
	@GetMapping(value = "/old/community_03_1")
	public String community_03_1() {
			
		return "community/community_03_1";	
	}
	@GetMapping(value = "/old/community_03_2")
	public String community_03_2() {
			
		return "community/community_03_2";	
	}
	@GetMapping(value = "/old/community_04")
	public String community_04() {
			
		return "community/community_04";	
	}

	@GetMapping(value = "/old/community_02_1")
	public String community_02_1(Model model, @RequestParam(name="page", required = false) Integer page, @RequestParam(name = "offset", required = false) Integer rows) {
		final String CODE = "MOVIE";
		page = 1;
		rows = 10;
		var data = this.boardService.searchBoardItems(CODE, page, rows);
		model.addAttribute("items", data.getItems());
		model.addAttribute("total", data.getTotalCount());
		model.addAttribute("page", page);

		return "community/community_02_1";
	}
}
