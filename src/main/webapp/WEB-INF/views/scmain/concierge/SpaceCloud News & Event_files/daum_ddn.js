var DAUM_DDN = function(){
	var ddn_id = '';
	var ddn_label = '';
	var order_info = [];
	var init = function(id,label){
		ddn_id = id;
		ddn_label = label;
	};
	var ViewItem = function(idx,price){ /* 상품 상세 페이지 */
		var roosevelt_params = {
			retargeting_id : ddn_id,
			tag_label : ddn_label,
			bag : [
				{
					pin: "view_item", item:
					[
						{ id : idx , price : price}
					]
				} ]
		};
	};

	var AddToCart = function(idx , price, ea){  /* 장바구니 담기 */
		var roosevelt_params = {
			retargeting_id : ddn_id,
			tag_label : ddn_label,
			bag : [
				{
					pin: "cart", item:
					[
					{ id : idx, price : price, ea : ea }
					]
				} ]
		};
	};

	var AddOrderInfo = function(idx, price, ea){
		order_info.push({
			id : idx,
			price : price,
			ea : ea
		});
	};

	var CompletePayment = function(order_no,total_price){ /* 결제 완료 */
		var roosevelt_params = {
			retargeting_id : ddn_id,
			tag_label : ddn_label,
			bag: [
				{
					pin: "order",
					order_no: order_no,
					item: [
					order_info
					],
					total_amount: total_price
				}
			] };

	};
	return {
		"init" : function(id,label){
			init(id,label);
		},
		"ViewItem" : function(idx,price){
			ViewItem(idx,price);
		},
		"AddToCart" : function(idx, total_price){
			AddToCart(idx, total_price);
		},
		"AddOrderInfo" : function(idx, price, ea){
			AddOrderInfo(idx, price, ea);
		},
		"CompletePayment" : function(order_no,total_price){
			CompletePayment(order_no,total_price);
		}
	}
}();