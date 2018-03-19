var ACE_COUNTER = function(){
	var order_code = "";
	var _AceTM;
	var AM_Cart = function(id, name, count){ /* 장바구니 담기 완료 */
		var c = {
			pd : id,
			pn : name,
			qy : count
		};
		var u = (!AM_Cart) ? [] : AM_Cart;
		u[c.pd] = c;
		return u;
	};

	var CompleteJoin = function(id){ /* 회원가입 완료 */
		var m_jn = 'join';
		var m_jid = id;
	};


	var ProdDetail = function(name,price){ /* 상품 상세페이지 */
		var m_pd = name;
		var m_amt = price;
	};

	var SettingPayment = function(code,total_price){ /* 구매 완료 페이지 */
		order_code = code;
		_AceTM = (_AceTM||{});
		_AceTM.Buy={
			bOrderNo: code, //주문번호
			bTotalPrice: total_price, //주문 총가격
			bItem:[] // 주문리스트
		};
	};

	var AddorderInfo = function(id,name,count,price){
		_AceTM.Buy.bItem.push({
			pCode : id,
			pName : name,
			pQuantity : count,
			pPrice : price
		});
	};
	var CompletePayment = function(){
		var m_order_code= order_code;		// 주문코드 필수 입력
		var m_buy="finish"; //구매 완료 변수(finish 고정값)
	};

	return {
		"AM_Cart" : function(id, name, count){
			AM_Cart(id, name, count);
		},
		"CompleteJoin" : function(id){
			CompleteJoin(id);
		},
		"ProdDetail" : function(name, price){
			ProdDetail(name, price);
		},
		"SettingPayment" : function(code,total_price){
			SettingPayment(code,total_price);
		},
		"AddorderInfo" : function(id,name,count,price){
			AddorderInfo(id,name,count,price);
		},
		"CompletePayment" : function(){
			CompletePayment();
		}
	}
}();