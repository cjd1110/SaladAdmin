/**
 *  delivery ajax jquery 부분
 */

    $(document).ready(function(){
      $("#confirm").click(function(){ //1. 버튼을 클릭할때
          callAjax(); //2. callAjax 함수를 부른다.
      });
      $("#request").click(function(){
    	  callAjax2();
      })
      $("#direct").click(function(){
    	  callAjax3();
      })
      $("#shipping").click(function(){
    	  callAjax4();
      })
      $("#completed").click(function(){
    	  callAjax5();
      })
    });
    function callAjax(){
        $.ajax({
	        type: "post",  //통신방식 : post
	        url : "/delivery/confirm.do", // 통신 성공시 불러오는 페이지 
	        success: whenSuccess,
	        error: whenError
     	});
    }
    
      function callAjax2(){
          $.ajax({
  	        type: "post",  //통신방식 : post
  	        url : "/delivery/request.do", // 통신 성공시 불러오는 페이지 
  	        success: whenSuccess,
  	        error: whenError
       	});
      }
      
      function callAjax3(){
          $.ajax({
  	        type: "post",  //통신방식 : post
  	        url : "/delivery/direct.do", // 통신 성공시 불러오는 페이지 
  	        success: whenSuccess,
  	        error: whenError
       	});
      }
      
      function callAjax4(){
          $.ajax({
  	        type: "post",  //통신방식 : post
  	        url : "/delivery/shipping.do", // 통신 성공시 불러오는 페이지 
  	        success: whenSuccess,
  	        error: whenError
       	});
      }
    
      function callAjax5(){
          $.ajax({
  	        type: "post",  //통신방식 : post
  	        url : "/delivery/completed.do", // 통신 성공시 불러오는 페이지 
  	        success: whenSuccess,
  	        error: whenError
       	});
      }
    function whenSuccess(resdata){
        $("#ajaxReturn").html(resdata);  //성공할때 .html 부분을 바꿔줌 
        console.log(resdata);
    }

    function whenError(){
        alert("Error"); //실패할때 자바스크립트 error메세지 띄우기
    }