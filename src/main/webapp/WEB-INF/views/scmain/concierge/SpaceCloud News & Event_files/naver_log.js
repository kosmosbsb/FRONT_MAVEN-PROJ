if(!_nasa) var _nasa = {};
var NP_LOG = function(){
	var CompletePayment = function(price,key){ /* 결제 및 구매 완료 */
		_nasa["cnv"] = wcs.cnv("1", price);
		npLogRequest("CompletePayment",key);
	};
	var CompleteJoin = function(){ /* 회원가입 완료 */
		_nasa["cnv"] = wcs.cnv("2", "1");
		npLogRequest();
	};
	var AddToCart = function(price){ /* 장바구니 담기 완료 */
		_nasa["cnv"] = wcs.cnv("3", "1");
		npLogRequest();
	};
	var CompleteReservation = function(price){ /* 신청 및 예약 완료 */
		_nasa["cnv"] = wcs.cnv("4", price);
		npLogRequest();
	};
	var EtcPage = function(){ /* 기타 페이지 */
		_nasa["cnv"] = wcs.cnv("5", "1");
		npLogRequest();
	};

	function npLogRequest(type,key){
		if(type == 'CompletePayment'){
			wcs_add["wa"] = key;
		}
		wcs_do(_nasa);
	}
	return {
		"Completepayment" : function(price,key){
			CompletePayment(price,key);
		},
		"CompleteJoin" : function(){
			CompleteJoin();
		},
		"AddToCart" : function(){
			AddToCart();
		},
		"CompleteReservation" : function(price){
			CompleteReservation(price);
		},
		"EtcPage" : function(){
			EtcPage();
		}
	}
}();