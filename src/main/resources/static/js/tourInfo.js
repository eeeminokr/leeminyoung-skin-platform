


$(function() {
let tourMaps = [];
const countPerPage = 6; //페이비당 데이터 건수
const showPageCnt = 6; // 화면에 보일 페이지 번호 갯수    
    getTourInfo();



  //  var ctx = getContextPath(); 
function getContextPath() {
    return sessionStorage.getItem("contextpath");
    } 

    var CurpageNum;



    function getTourInfo() {
        CurpageNum  =  $("#curPageNum").val();
        $.ajax({
             url: getContextPath()+"/api/TourInfo/tourList",
            type: "GET",
            contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
            data : {
            	'CurpageNum' : CurpageNum, //현재 페이지숫자
              //  'pageScale' : pageScale 
            },  
            success: function(json) {
                var pagelist = '';
                var tourlist = '';
                tourMaps = JSON.parse(json);
         
               
               

                setTable(1);
                setPaging(1);
              
              

                var title ='';
                var label1 ='';
                var label2 ='';
                var label3 ='';
                var thumnailImage ='';
                var prepage;
                var curpage;
                var blockBegin;
                var blockEnd;
                var toBlock;
                var nextPage;
                
                var addHtml =''; 
       
     
  
            },
            error   :   function(request, status, error){
                console.log("AJAX_ERROR");
            }		
        });
    
    };

    try {

    
    $(document).on('click','div.pagination>ul>ul>li>span.nums',function() {
        if (!$(this).parent().hasClass('active')) {
            $(this).parents().find('li.active').removeClass('active');
            $(this).parent().addClass('active');
      
            setTable(Number($(this).text()));
          }
      });
      $(document).on('click','div.pagination>ul>li#arrow',function() {
        const totalPage = Math.floor(tourMaps.length / countPerPage) + (tourMaps.length % countPerPage == 0 ? 0 : 1);
        const classNm = $(this).attr('class');
       
    
        if (classNm == 'first') {
          setTable(1);
          setPaging(1);
        } else if (classNm == 'prev') {
          let arrPages = [];
          $('div.pagination>ul>ul>li>span.nums').each(function(idx, item) {
            arrPages.push(Number($(this).text()));
          });
          
          const prevPage = _.min(arrPages) - showPageCnt;
          setTable(prevPage);
          setPaging(prevPage);
        } else if (classNm == 'next') {
          let arrPages = [];
          $('div.pagination>ul>ul>li>span.nums').each(function(idx, item) {
            arrPages.push(Number($(this).text()));
          });
          
          const nextPage = _.max(arrPages) + 1;
          setTable(nextPage);
          setPaging(nextPage);
        } else if (classNm == 'last') {
          const lastPage = Math.floor((totalPage - 1) / showPageCnt) * showPageCnt + 1;
          setTable(lastPage);
          setPaging(lastPage);
        }
      });
    }
    catch{}
 



    /**
     * 테이블에 데이터 세팅
     * @param {int} pageNum - pageNumber
     */
    function setTable(pageNum){
        $('.tour_list').empty();

        
     const filteredData = _.slice(tourMaps,(pageNum -1)*countPerPage,pageNum*countPerPage);
       const filteredData2 =  JSON.stringify(filteredData);
        //tourMaps(pageNum -1)*countPerPage,pageNum*countPerPage);
      
      
        
        let addHtml = '';

         
        
          
        for(let i =0; i< filteredData.length; i++ ){
    
            addHtml +='<li><div class="inbox">';
            addHtml +='<div class="imgbox">';
            addHtml +='<span class="label1">'+filteredData[i].contentscd.label+'</span>';
            addHtml+='<img width="320" height="170" src="'+filteredData[i].repPhoto.photoid.thumbnailpath+'" alt="" />';
            addHtml+='<span class="t_star s_5"><em class="blind">별5개</em></span>';
            addHtml+='</div>';    
            addHtml+= '<div class="txtbox"><div class="t_tit">'+filteredData[i].title+'</div>';
            addHtml+= '<div class="t_info">';
            addHtml+= '<span class="label2">'+filteredData[i].region1cd.label+'</span>';
            addHtml+= '<span class="gt">&gt;</span>';
            addHtml+= '<span class="label3">'+filteredData[i].region2cd.label+'</span>';
            addHtml+= '</div>';
            addHtml+= '</div>';
            addHtml+= '</div>';
            addHtml+= '</li>';
            
          
    }
      $('.tour_list').append(addHtml)
    }

    function setPaging(pageNum){
        const currentPage = pageNum;
        const totalPage = Math.floor(tourMaps.length / countPerPage) + (tourMaps.length % countPerPage == 0 ? 0 : 1);
        // console.log("listlength:"+tourMaps.length)  //총 리스트 길이
        // console.log("Math.floor(tourMaps.length / countPerPage)" +Math.floor(tourMaps.length / countPerPage)) //총 페이지 넘버수 
        // console.log("(tourMaps.length % countPerPage == 0 ? 0 : 1)" +(tourMaps.length % countPerPage == 0 ? 0 : 1)) //나머지 수
        // console.log("totalPage"+totalPage) //math.ceil써도될듯...혹시나해서씀

        showAllIcon();

        if (currentPage <= showPageCnt) {
            $('.first').hide();
            $('.prev').hide();
          }
          if (
            totalPage <= showPageCnt ||
            Math.floor((currentPage - 1) / showPageCnt) * showPageCnt + showPageCnt + 1 > totalPage
          ) {
            $('.next').hide();
            $('.last').hide();
          }
          let start = Math.floor((currentPage - 1) / showPageCnt) * showPageCnt + 1;
          let sPagesHtml = '';
        for (const end = start + showPageCnt; start < end && start <= totalPage; start++) {
            sPagesHtml += '<li class="' + (start == currentPage ? 'active' : '') + '"><span class="nums">' + start + '</span></li>';
        }
        $('div.pagination>ul>ul').html(sPagesHtml)
    }
    

    //화살표 보이는 함수 선언 
    function showAllIcon() {
        $('.first').show();
        $('.prev').show();
        $('.next').show();
        $('.last').show();
      }


    })