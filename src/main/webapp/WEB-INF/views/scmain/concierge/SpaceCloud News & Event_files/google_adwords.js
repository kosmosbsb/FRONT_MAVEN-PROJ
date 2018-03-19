var GOOGLE_ADWORDS = function(){
	var GAmarketing = function(idx,name,price,domain,type,google_adwords_id){
		if(type == 'retail'){
				gtag('event','page_view',{
				'send_to' : 'AW' + google_adwords_id,
				'ecomm_prodid' : idx,
				'ecomm_pagetype' : 'product',
				'title' : name,
				'price' : price,
				'link' : domain
			})
		}else if(type == 'hotel'){
				gtag('event','page_view',{
				'send_to' : 'AW' + google_adwords_id,
				'Destination_ID' : idx,
				'Title' : name,
				'Price' : price,
				'Final_URL' : domain
			})
		}
	};
	return {
		"GAmarketing" : function(idx,name,price,domain,type,google_adwords_id){
			GAmarketing(idx,name,price,domain,type,google_adwords_id);
		}
	}
}();