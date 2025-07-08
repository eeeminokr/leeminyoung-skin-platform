let medicalMaps = [];
const countPerPages = 6; //페이비당 데이터 건수
const showPageCnts = 6; // 화면에 보일 페이지 번호 갯수

$(function() {
    getMedicalInfo();



  //  var ctx = getContextPath(); 
function getContextPath() {
    return sessionStorage.getItem("contextpath");
    } 

    var CurpageNum;

   

    function getMedicalInfo() {
        CurpageNum  =  $("#curPageNum").val();
        $.ajax({
             url: getContextPath()+"/api/MedicalInfo/medicalInfoList",
            type: "GET",
            contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
            data : {
            	'CurpageNum' : CurpageNum, //현재 페이지숫자
              //  'pageScale' : pageScale 
            },  
            success: function(data) {
                var pagelist = '';
                var tourlist = '';
                medicalMaps = data;
         
               
               

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
    // function getPaging() {
    //     CurpageNum  =  $("#curPageNum").val();
       
    //     $.ajax({
    //          url: getContextPath()+"/api/TourInfo/getPaging",
    //         type: "GET",
    //         contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
    //         data : {
    //         	'CurpageNum' : CurpageNum, //현재 페이지숫자
    //           //  'pageScale' : pageScale 
    //         },  
    //         success: function(data) {
                

    //         }
    //     });  
    // }; 

    $(document).on('click','div#Mpagination>ul>ul>li>span.Mnums',function() {
        if (!$(this).parent().hasClass('active')) {
            $(this).parents().find('li.active').removeClass('active');
            $(this).parent().addClass('active');
      
            setTable(Number($(this).text()));
          }
      });
      $(document).on('click','div#Mpagination>ul>li#Marrow',function() {
        const totalPage = Math.floor(medicalMaps.length / countPerPages) + (medicalMaps.length % countPerPages == 0 ? 0 : 1);
        const classNm = $(this).attr('class');
       
    
        if (classNm == 'first') {
          setTable(1);
          setPaging(1);
        } else if (classNm == 'prev') {
          let arrPages = [];
          $('div#Mpagination>ul>ul>li>span.Mnums').each(function(idx, item) {
            arrPages.push(Number($(this).text()));
          });
          
          const prevPage = _.min(arrPages) - showPageCnts;
          setTable(prevPage);
          setPaging(prevPage);
        } else if (classNm == 'next') {
          let arrPages = [];
          $('div#Mpagination>ul>ul>li>span.Mnums').each(function(idx, item) {
            arrPages.push(Number($(this).text()));
          });
          
          const nextPage = _.max(arrPages) + 1;
          setTable(nextPage);
          setPaging(nextPage);
        } else if (classNm == 'last') {
          const lastPage = Math.floor((totalPage - 1) / showPageCnts) * showPageCnts + 1;
          setTable(lastPage);
          setPaging(lastPage);
        }
      });



    /**
     * 테이블에 데이터 세팅
     * @param {int} pageNum - pageNumber
     */
    function setTable(pageNum){
        $('.medical_list').empty();

        
     const filteredData = _.slice(medicalMaps,(pageNum -1)*countPerPages,pageNum*countPerPages);
       const filteredData2 =  JSON.stringify(filteredData);
        //medicalMaps(pageNum -1)*countPerPages,pageNum*countPerPages);
      
      
        
        let addHtml = '';

         
    
       
        for(let i =0; i< filteredData.length; i++ ){
    
            addHtml +='<li><div class="inbox">';
            addHtml +='<div class="imgbox">';
            addHtml +='<span class="label1">의료기관</span>';
            addHtml+='<img width="320" height="170" src="'+filteredData[i].image+'" alt="" />';
            addHtml+='<span class="t_star s_5"><em class="blind">별5개</em></span>';
            addHtml+='</div>';    
            addHtml+= '<div class="txtbox"><div class="t_tit">'+filteredData[i].dutyName+'</div>';
            addHtml+= '<div class="t_info">';
            addHtml+= '<span class="label2">'+filteredData[i].dutyTel1+'</span>';
            addHtml+= '<span class="gt">&gt;</span>';
            addHtml+= '<span class="label3">'+filteredData[i].dutyAddr+'</span>';
            addHtml+= '</div>';
            addHtml+= '</div>';
            addHtml+= '</div>';
            addHtml+= '</li>';
            
          
    }
   
      $('.medical_list').append(addHtml)
    }

    function setPaging(pageNum){
        const currentPage = pageNum;
        const totalPage = Math.floor(medicalMaps.length / countPerPages) + (medicalMaps.length % countPerPages == 0 ? 0 : 1);

        showAllIcon();

        if (currentPage <= showPageCnts) {
            $('div#Mpagination>ul>li.first').hide();
            $('div#Mpagination>ul>li.prev').hide();
          }
          if (
            totalPage <= showPageCnts ||
            Math.floor((currentPage - 1) / showPageCnts) * showPageCnts + showPageCnts + 1 > totalPage
          ) {
            $('div#Mpagination>ul>li.next').hide();
            $('div#Mpagination>ul>li.last').hide();
          }
          let start = Math.floor((currentPage - 1) / showPageCnts) * showPageCnts + 1;
          let sPagesHtml = '';
        for (const end = start + showPageCnts; start < end && start <= totalPage; start++) {
            sPagesHtml += '<li class="' + (start == currentPage ? 'active' : '') + '"><span class="Mnums">' + start + '</span></li>';
        }
        $('div#Mpagination>ul>ul').html(sPagesHtml)
    }
    

    //화살표 보이는 함수 선언 
    function showAllIcon() {
        $('div#Mpagination>ul>li.first').show();
        $('div#Mpagination>ul>li.prev').show();
        $('div#Mpagination>ul>li.next').show();
        $('div#Mpagination>ul>li.last').show();
      }

    })
