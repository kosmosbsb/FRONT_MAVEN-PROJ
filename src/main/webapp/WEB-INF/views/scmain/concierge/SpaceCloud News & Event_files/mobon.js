var mobon_user_id = '';
var mobon_sc = '';
var MOBON = function(){
	var prod_code, prod_name, prod_img, prod_price, prod_category;
	var init = function(user_id,sc){
		mobon_user_id = user_id;
		mobon_sc = sc;
	};
	var settingProdData = function(code, name, img, price,category){
		prod_code = code;
		prod_name = name;
		prod_img = img;
		prod_price = price;
		prod_category = category;
	};
	var mobRfShop = function(){ /* 상품 상세 페이지 */
		var sh = new EN();
		sh.setData("sc",mobon_sc);
		sh.setData("userid",mobon_user_id);
		sh.setData("pcode",prod_code);
		sh.setData("pnm",encodeURIComponent(encodeURIComponent(prod_name)));
		sh.setData("img",encodeURIComponent(prod_img));
		sh.setData("price",prod_price);
		sh.setData("cate1",encodeURIComponent(encodeURIComponent(prod_category)));
		if(location.protocol == "https"){
			sh.setSSL(true);
		}
		sh.sendRfShop();
	};
	var AddToCart = function(){ /* 장바구니 담기 */
		var sh = new EN();
		sh.setData("sc",mobon_sc);
		sh.setData("userid",mobon_user_id);
		sh.setData("pcode",prod_code);
		sh.setData("pnm",encodeURIComponent(encodeURIComponent(prod_name)));
		sh.setData("img",encodeURIComponent(prod_img));
		sh.setData("price",prod_price);
		if(location.protocol == "https"){
			sh.setSSL(true);
		}
		sh.sendCart();
	};
	var AddToWish = function(){ /* 위시 리스트 담기 */
		var sh = new EN();
		sh.setData("sc",mobon_sc);
		sh.setData("userid",mobon_user_id);
		sh.setData("pcode",prod_code);
		sh.setData("pnm",encodeURIComponent(encodeURIComponent(prod_name)));
		sh.setData("img",encodeURIComponent(prod_img));
		sh.setData("price",prod_price);
		if(location.protocol == "https"){
			sh.setSSL(true);
		}
		sh.sendWish();
	};
	var mobConv = function(order_code, prod_code, count, price, name){ /* 결제 및 구매 완료 */
		var cn = new EN();
		cn.setData("userid",mobon_user_id);
		cn.setData("ordcode", order_code);
		cn.setData("prcode", prod_code);
		cn.setData("qty" , count);
		cn.setData("price" , price);
		cn.setData("pnm" , name);
		cn.setData();
		if(location.protocol == "https"){
			cn.setSSL(true);
		}
		cn.sendConv();
	};
	return {
		"init" : function(user_id,sc){
			init(user_id,sc);
		},
		"settingProdData" : function(code, name, img, price,category){
			settingProdData(code, name, img, price,category);
		},
		"mobRfShop" : function(code, name, img, price){
			mobRfShop(code, name, img, price);
		},
		"AddToCart" : function(){
			AddToCart();
		},
		"mobConv" : function(order_code, prod_code, count, price, name){
			mobConv(order_code, prod_code, count, price, name);
		},
		"AddToWish" : function(){
			AddToWish();
		}
	}
}();