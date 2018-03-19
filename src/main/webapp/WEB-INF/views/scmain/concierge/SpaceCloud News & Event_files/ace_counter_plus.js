var ACE_COUNTER_PLUS = function(){
	var CompleteJoin = function(id){ /* 회원가입 완료 */
		var _AceTM=(_AceTM||{});
		_AceTM.uJoin = id;  // 회원가입 고유 값 (가입 아이디)
		_AceTM.uWorth = 1 ; // 회원가입 가치
	};

	var CompleteWithdraw = function(id){ /* 회원탈퇴 완료 */
		var _AceTM=(_AceTM||{});
		_AceTM.uWithdraw = id; // 회원탈퇴 고유값 (탈퇴 아이디)
	};

	var CompleteSearch = function(keyword){ /* 내부 검색 완료 */
		var _AceTM=(_AceTM||{});
		_AceTM.pSearch = keyword; //내부 검색 고유값(검색어)
	};


	var ProdDetail = function(prod_code, prod_name, price, img_url){ /* 상품 상세페이지 */
		var _AceTM=(_AceTM||{});
		_AceTM.Product={
			pCode : prod_code,  //제품코드
			pName : prod_name,  //제품이름
			pPrice : price,  //판매가
			pImageURl : img_url,//제품이미지url 주소
			oItem : []
		};
	};

	var CompletePayment = function(order_code,total_price){ /* 구매 완료 페이지  구매 정보 세팅보다 먼저 출력되야함 */
		var _AceTM=(_AceTM||{});
		_AceTM.Buy={
			bOrderNo : order_code, //주문번호
			bTotalPrice : total_price, //주문 총가격
			bItem:[] // 주문리스트
		};
	};

	var AddorderInfo = function(id,name,count,price){ /* 구매 정보 세팅 */
		var _AceTM=(_AceTM||{});
		_AceTM.Buy.bItem.push({
			pCode : id, // 제품 아이디
			pName : name, // 제품 이름
			pQuantity : count, // 구매 수량
			pPrice : price // 제품 가격
		});
	};

	var ShareSns = function(type){ /* sns 공유 전환 */
		_AceTM.SNS(type);
	};

	var CompleteSubmit = function(){ /* 입력폼 작성 완료 전환 */
		_AceTM.PV('/form/complete.php');
	};

	var AddReview = function(prod_code,rating){ /*리뷰 작성*/
		_AceTM.ReView(prod_code,'평점',rating);
	};

	return {
		"CompleteJoin" : function(id){
			CompleteJoin(id);
		},
		"CompleteWithdraw" : function(id){
			CompleteWithdraw(id);
		},
		"CompleteSearch" : function(keyword){
			CompleteSearch(keyword);
		},
		"ProdDetail" : function(prod_code, prod_name, price, img_url){
			ProdDetail(prod_code, prod_name, price, img_url);
		},
		"CompletePayment" : function(order_code,total_price){
			CompletePayment(order_code,total_price);
		},
		"AddorderInfo" : function(id,name,count,price){
			AddorderInfo(id,name,count,price);
		},
		"ShareSns" : function(type){
			ShareSns(type);
		},
		"AddReview" : function(prod_code,rating){
			AddReview(prod_code,rating);
		},
		"CompleteSubmit" : function(){
			CompleteSubmit();
		}
	}
}();