<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
/* 리셋 CSS */
* {margin:0;padding:0;box-sizing:border-box;}
ul, li {list-style:none;}


.slidebox {max-width:1000px;margin:0 auto;position:relative;}
.slidebox .slidelist {position:relative;white-space:nowrap;font-size:0;overflow:hidden;}
.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;width:100%;transition:all 1s;}
.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
.slidebox .slidelist .slideitem > a img {max-width:100%;}

.slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
.slidebox .slide-control [class*="control"] label.prev {left:-50px;background:rgb(242, 235, 230) url('/image/product_banner/left_arrow.png') center center / 30% no-repeat;}
.slidebox .slide-control [class*="control"] label.next {right:-50px;background:rgb(242, 235, 230) url('/image/product_banner/right_arrow.png') center center / 30% no-repeat;}

[name="slide"] {display:none;}
#slide01:checked ~ .slidelist .slideitem {left:0;}
#slide02:checked ~ .slidelist .slideitem {left:-100%;}
#slide03:checked ~ .slidelist .slideitem {left:-200%;}

    
.slide-control [class*="control"] {display:none;}
#slide01:checked ~ .slide-control .control01 {display:block;}
#slide02:checked ~ .slide-control .control02 {display:block;}
#slide03:checked ~ .slide-control .control03 {display:block;}

</style>


<div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
    <input type="radio" name="slide" id="slide05">
	<ul class="slidelist">
		<li class="slideitem">
			<a href="detail3"><img src="/image/product_banner/W_0.png"></a>
		</li>
		<li class="slideitem">
			<a href="detail3"><img src="/image/product_banner/W_1.png"></a>
		</li>
		<li class="slideitem">
			<a href="detail3"><img src="/image/product_banner/W_2.png"></a>
		</li>
	</ul>
	<div class="slide-control">
		<div class="control01">
			<label for="slide03" class="prev"></label>
			<label for="slide02" class="next"></label>
		</div>
		<div class="control02">
			<label for="slide01" class="prev"></label>
			<label for="slide03" class="next"></label>
		</div>
		<div class="control03">
			<label for="slide02" class="prev"></label>
			<label for="slide01" class="next"></label>
		</div>
	</div>
</div>
