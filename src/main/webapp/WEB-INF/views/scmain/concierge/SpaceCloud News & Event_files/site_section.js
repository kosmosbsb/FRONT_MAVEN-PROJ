$(function(){
	var $youtube_player_api = $('#youtube_player_api');
	if($youtube_player_api.length == 0){
		$youtube_player_api = $('<script src="https://www.youtube.com/player_api" id="youtube_player_api" />');
		var $first_script = $('script').eq(0);
		$first_script.before($youtube_player_api);
	}
});
var SITE_SECTION_YOUTUBE = function(){
	var type;
	var tv;
	var vid;
	var playerDefaults = {'autoplay': 1, 'autohide': 1, 'modestbranding': 0, 'rel': 0, 'showinfo': 0, 'controls': 0, 'disablekb': 1, 'enablejsapi': 1, 'iv_load_policy': 3};
	var screen_code;
	var id;
	var $vb;
	var $screen;
	var code;
	var currVid = 0;
	var $section_obj;

	var init = function(t,c,d){
		type = t;
		code = c;
		id = d;
		if(type == 'section'){
			screen_code = "screen_"+code;
			$section_obj = $('#' + code);
		}
		if(type == 'visual'){
			screen_code = "screen_"+code+"_"+id;
			$section_obj = $('#visual_' + code);
		}
		vid = [ {'videoId': id, 'startSeconds': 0, 'endSeconds': 0, 'suggestedQuality': 'default'}];

		youTubePlayer();
	};

	var youTubePlayer  = function (){
		$section_obj.imagesLoaded()
			.always(function(){
				tv = new YT.Player(screen_code, {events: {'onReady': onPlayerReady, 'onStateChange': onPlayerStateChange}, playerVars: playerDefaults});
			});

	};

	var onPlayerReady = function(){
		if(type == 'section'){
			screen_code = "screen_"+code;
		}
		if(type == 'visual'){
			screen_code = "screen_"+code+"_"+id;
		}
		$screen = $('#' + screen_code);
		tv.loadVideoById(vid[currVid]);
		tv.mute();
		vidRescale();
		$('body').off('gridChange.'+code).on('gridChange.'+code,function(){
			vidRescale();
		});
		$(window).on('resize', function(){
			vidRescale();
		});
	};


	var onPlayerStateChange = function(e) {
		$screen = $('#' + screen_code);
		if (e.data === 1){
			$screen.addClass('active');
		} else if (e.data === 0){
			$screen.removeClass('active');
			if(currVid === vid.length - 1){
				currVid = 0;
			} else {
				currVid++;
			}
			tv.loadVideoById(vid[currVid]);
			tv.seekTo(vid[currVid].startSeconds);
		}
	};

	var vidRescale = function(){
		var w = $section_obj.outerWidth()+20,
			h = $section_obj.outerHeight()+20;
		if (w/h > 16/9){ //납작하다는 애기
			tv.setSize(w, w/16*9);
			$screen.css({'left': '-10px', 'top':'-10px'});
		} else { //길죽할때
			tv.setSize(h*(16/9), h);
			$screen.css({'left': -(($screen.outerWidth()-w)/2)-10 , "top":"-10px"});
		}
	};

	return {
		'init' : function(t,c,d){
			init(t,c, d);
		}
	}

};


var SECTION_RESIZE = function(){
	var code;
	var $section;
	var org_inside_width;
	var $main;
	var $aside;
	var $gutter;
	var $inside;
	var init = function(c){
		code = c;
		$section = $('#'+c);
		$main = $section.find('main');
		$aside = $section.find('div[doz_type="aside"]');
		$gutter = $section.find('div._side_gutter');
		$inside = $section.find('main > div[doz_type="inside"]');
		org_inside_width = parseInt($inside.css('width'));
		run();
	};

	var run = function(){
		//calc();
		$(window).off('resize.section_resize_'+code).on('resize.section_resize_'+code,function(){
			//calc();
		});
	};

	var calc = function(){
		var main_width = $main.width();
		if($aside.css('display')=='none')
			return;
		var side_width = $aside.outerWidth() + parseInt($aside.css('margin-left')) + parseInt($aside.css('margin-right'));
		var gutter_width = $gutter.outerWidth();
		var inside_width = $inside.outerWidth();
		var t_width = side_width+gutter_width+inside_width;
		if(main_width < t_width){
			var term = t_width-main_width;
			$inside.outerWidth(inside_width-term);
		}else if(t_width < main_width){
			var term = main_width - t_width;
			$inside.outerWidth(inside_width+term);
		}else{
			$inside.outerWidth(parseInt(org_inside_width));
		}
	};

	return {
		'init' : function(c){
			init(c)
		}
	}
};

var SECTION_PARTICLE_ANIMATION = function(){
	var code;
	var $section;
	var $section_class;
	var SCREEN_WIDTH = window.innerWidth;
	var SCREEN_HEIGHT = window.innerHeight;
	var particle;
	var camera;
	var scene;
	var renderer;
	var mouseX = 0;
	var mouseY = 0;
	var windowHalfX = window.innerWidth / 2;
	var windowHalfY = window.innerHeight / 2;

	var particles = [];
	var particleImage = new Image();
	var animation_interval = {};
	var animation_timeout = {};
	particleImage.src = '/common/img/ParticleSmoke.png';


	var init = function(c, vc){

		$section = $('#'+c);
		$section_class = $('#'+c+'_snowfall');



		if($section_class.length == 0)
			return;

		setTimeout(function(){
			run();
		},1000);

		//윈도우가 리사이즈되면
		//
		$(window).on('resize',function(){
			clearAnimation();
			clearTimeout(animation_timeout);
			animation_timeout = setTimeout(function(){
				run();
			},1000);
		})
	};

	function clearAnimation(){
		clearInterval(animation_interval);
		$(renderer.domElement).remove();
	}

	function run(){
		SCREEN_WIDTH = $section.innerWidth();
		SCREEN_HEIGHT = $section.innerHeight();


		camera = new THREE.PerspectiveCamera(75, SCREEN_WIDTH / SCREEN_HEIGHT, 1, 10000);
		camera.position.z = 1000;
		scene = new THREE.Scene();
		scene.add(camera);

		renderer = new THREE.CanvasRenderer();
		renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);
		var material = new THREE.ParticleBasicMaterial({map: new THREE.Texture(particleImage)});

		for (var i = 0; i < 100; i++) {
			particle = new Particle3D(material);
			particle.position.x = Math.random() * 2000 - 1000;
			particle.position.y = Math.random() * 2000 - 1000;
			particle.position.z = Math.random() * 2000 - 1000;
			particle.scale.x = particle.scale.y = 1;
			scene.add(particle);

			particles.push(particle);
		}
		$section_class.append(renderer.domElement);


		//	$('body').off('mousemove.section_particle_'+code).on('mousemove.section_particle_'+code,function(e){
		//		onDocumentMouseMove(e);
		//	});

		clearInterval(animation_interval);
		animation_interval = setInterval(loop, 30);
	}

	// function onDocumentMouseMove(event) {
	// 	mouseX = event.clientX - windowHalfX;
	// 	mouseY = event.clientY - windowHalfY;
	// }

	function loop() {
		for (var i = 0; i < particles.length; i++) {
			var particle = particles[i];
			particle.updatePhysics();

			with (particle.position) {
				if (y < -1000) y += 2000;
				if (x > 1000) x -= 2000;
				else if (x < -1000) x += 2000;
				if (z > 1000) z -= 2000;
				else if (z < -1000) z += 2000;
			}
		}

		//	camera.position.x += ( mouseX - camera.position.x ) * 0.05;
		//camera.position.y += ( -mouseY - camera.position.y ) * 0.05;
		//	camera.lookAt(scene.position);

		renderer.render(scene, camera);
	}

	return {
		'init' : function(c, vc){
			init(c, vc)
		}
	}
};

var SECTION_SIDE_FIXED = function(){

	var $section;
	var $section_next;
	var $aside;
	var $aside_inside;
	var limit;

	var init = function(c){
		$section = $('#'+c);
		$section_next = $section.next('div[doz_type="section"]');
		$aside = $section.find('div[doz_type="aside"]');
		$aside_inside = $aside.find('div[doz_type="inside"]');

		setTimeout(
			function(){
				limit = $section.offset().top + $aside.outerHeight() - $aside_inside.outerHeight();
				run();
			},1
		)
	};

	var run = function(){
		$aside.scrollToFixed({
			'limit': limit
		});
	};

	return {
		'init' : function(c){
			init(c)
		}
	}
};