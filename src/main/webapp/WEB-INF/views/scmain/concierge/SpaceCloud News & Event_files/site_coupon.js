var SITE_COUPON = function(){
	var $couopn_list;
	var init = function (){
		$couopn_list = $("#couopn_list");
		getMyUseCouponList();
		getUseCouponList();
	};




	//사용 가능 쿠폰 불러오기
	function getMyUseCouponList(){
		$.ajax({
			type: 'POST',
			url: ('/shop/mypage_my_use_coupon_list.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function(res){
				$couopn_list.find("._my_use_coupon_list").html(res.html);
				setCouponTargetDialog();
			}
		});
	}

	//쿠폰 불러오기
	function getUseCouponList(){
		$.ajax({
			type: 'POST',
			url: ('/shop/mypage_use_coupon_list.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function(res){
				$couopn_list.find("._use_coupon_list").html(res.html);

				$couopn_list.find("._down_coupon_btn").off("click._down_coupon_btn").on("click._down_coupon_btn",function(){
					var code = $(this).data("code");
					if(code != ""){
						downCoupon(code);
					}
				});
				setCouponTargetDialog();
			}
		});
	}

	//쿠폰 다운받기
	function downCoupon(code){
		$.ajax({
			type: 'POST',
			data : {code:code},
			url: ('/shop/mypage_down_use_coupon.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function(res){
				if(res.msg == "SUCCESS"){
					history.go(0);
				}else{
					alert(res.msg);
				}
			}
		});
	}


	//쿠폰적용 다이얼로그 설정
	function setCouponTargetDialog(){

		$couopn_list.find("._coupon_target_btn").off("click.coupon_target_btn").on("click.coupon_target_btn",function(){
			var coupon_code = $(this).data("code");
			if(!isBlank(coupon_code)){
				$.ajax({
					type: 'POST',
					data : {coupon_code:coupon_code},
					url: ('/dialog/mypage_coupon_target.cm'),
					dataType: 'html',
					async: true,
					cache: false,
					success: function(res){
						$.cocoaDialog.open({type : 'mypage_coupon_target', custom_popup : $(res)});
					}
				});
			}
		});
	}

	return {
		init:function(){
			init();
		}
	}
}();