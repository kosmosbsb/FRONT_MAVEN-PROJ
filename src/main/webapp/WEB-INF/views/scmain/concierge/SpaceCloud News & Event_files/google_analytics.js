var GOOGLE_ANAUYTICS = function(){
	var order_info = [];
	<!--결제 정보-->
	var Completepayment = function(order_no,total_price){
		ga('ecommerce:addTransaction', {
			'id': order_no,
			'revenue': total_price
		});
	};
	<!--주문 정보에 넣어줄 데이터 쌓기-->
	var AddorderInfo = function(order_no,prod_name,prod_price,prod_count){
		order_info.push({
			'id': order_no,
			'name': prod_name,
			'price': prod_price,
			'quantity': prod_count
		});
	};
	<!--주문 정보-->
	var CompleteOrder = function(){
		for(var i =0; i<order_info.length; i++){
			ga('ecommerce:addItem',order_info[i]);
		}
		ga('ecommerce:send');
	};
	<!--전화 걸기-->
	var Calltellephone = function(eventLabel){
		ga('send', 'event','전화걸기','링크클릭',eventLabel,'1');
	};
	return {
		"AddorderInfo" : function(order_no,prod_name,prod_price,prod_count){
			AddorderInfo(order_no,prod_name,prod_price,prod_count);
		},
		"CompleteOrder" : function(){
			CompleteOrder();
		},
		"Completepayment" : function(order_no,total_price){
			Completepayment(order_no,total_price);
		},
		"Calltellephone" : function(eventLabel){
			Calltellephone(eventLabel);
		}
	}
}();