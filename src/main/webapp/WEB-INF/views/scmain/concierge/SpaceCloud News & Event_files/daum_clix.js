var DAUM_CTS = function(){
	var daum_cts_id = "";
	var init = function(ID){
		daum_cts_id = ID;//전환추적 ID
	};
	var CompletePayment = function(){ /* 상품 구매 및 예약  type = P */
		 CTSRequest("P");
	};
	var CompleteJoin = function(){ /* 회원가입 type = M */
		 CTSRequest("M");
	};
	var OrderForm = function(){ /* 주문서 작성  type = W */
		 CTSRequest("W");
	};
	function CTSRequest(type){
		if(daum_cts_id != ""){
			window.DaumConversionDctSv="type=" + type + ",orderID=,amount=";
			window.DaumConversionAccountID = daum_cts_id;
			if(typeof DaumConversionScriptLoaded=="undefined" && location.protocol!="file:"){
				DaumConversionScriptLoaded = true;

				document.write(unescape("%3Cscript%20type%3D%22text/javas"+"cript%22%20src%3D%22"+(location.protocol=="https:"?"https":"http")+"%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E"));
			}
		}
	}
	return {
		"init" : function(ID){
			init(ID);
		},
		"Completepayment" : function(){
			CompletePayment();
		},
		"CompleteJoin" : function(){
			CompleteJoin();
		},
		"OrderForm" : function(){
			OrderForm();
		}
	}
}();