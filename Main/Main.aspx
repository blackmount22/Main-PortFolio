<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Main.Main" %>
<%@ OutputCache Duration="30" VaryByParam="none" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Main</title>
    <meta name="viewport" content="initial-scale=1.0, width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <style>
        /* Reset CSS */
        body{position:relative; margin:0; padding:0; font-family:"Malgun Gothic",Dotum,arial,sans-serif; font-weight:normal; font-size:12px; color:#212121; -webkit-text-size-adjust:none;}
        dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote{margin:0; padding:0; -webkit-text-size-adjust:none;}
        th, td, input, textarea, select{font-size:12px; color:#212121; font-family:"Malgun Gothic",Dotum,arial,sans-serif; -webkit-text-size-adjust:none;}
        th, td{word-break:break-all; word-wrap:break-word; -webkit-text-size-adjust:none;}
        table{border-spacing:0; -webkit-text-size-adjust:none; border:0; table-layout:fixed;}
        address, cite, code, dfn, var{font-style:normal; font-weight:normal; -webkit-text-size-adjust:none;}
        em{font-style:normal; -webkit-text-size-adjust:none;}
        ol, ul{list-style:none;}
        abbr, acronym{border:0;}
        hr{clear:both; display:none;}
        legend, caption{visibility:hidden; overflow:hidden; line-height:0; width:0; height:0; margin:0; padding:0;}
        img, fieldset{border:0 none;}
        label{cursor:pointer;}
        a{color:#212121; text-decoration:none;}
        input, img{vertical-align:middle;}
        pre{font-family:"Malgun Gothic",Dotum,arial,sans-serif; margin:0;}
        button{border:0; background-color:transparent; padding:0; margin:0; cursor:pointer; font-family:"Malgun Gothic",Dotum,arial,sans-serif;}
        textarea{resize:none;}
        input[disabled=disabled]{background-color:#eee;}
        li {list-style:none;}

        /* html5 */
        article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section{display:block;}

        /* skip navigation */
        .skip_nav a{position:absolute; top:-100%; left:0px; border:1px solid #dad0d0; background:#f9f9f9; height:20px; line-height:20px; font-size:13px;}
        .skip_nav a:focus{top:0px;}

        /* hide text */
        .hide{position:absolute; visibility:hidden; text-indent:-9999px;}

        /* Layout */
        .main_wrp{border:20px solid #000; min-width:320px; -webkit-box-sizing:border-box; box-sizing:border-box; transition:0.5s all;}
        .main_inr{margin:0 auto; max-width:1260px;}
        .main_sg{padding:0 15px;}
        .main_gr{margin:55px 0;}
        .main_tt{margin-bottom:25px; font-size:23px;}
        .main_hg{padding:50px 20px 40px;}
        .main_hg h1{font-size:30px;}
        .main_nv{overflow:hidden;}
        .main_nv ul{float:right; font-size:15px;}
        .main_nv li{float:left;}
        .main_nv li a{display:block; padding:0 12px; height:40px; line-height:40px; -webkit-transition:0.3s all; transition:0.3s all;}
        .main_nv li:hover a{-webkit-transform:scale(1.2); transform:scale(1.2);}
        .main_nv button{background:url(../img/ic_nvbt.png) 0 0 no-repeat; background-size:33px auto; width:33px; height:34px; text-indent:-9999px;}
        .main_cmt{margin:35px 0; color:#777; font-size:14px; text-align:center;}
        .main_img { position:relative; background-image:url("https://images.pexels.com/photos/34600/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"); height:100vh;background-size:cover;        }
        .img_cover {position:absolute; height:100%;width:100%;background-color:rgba(0,0,0,0.4);z-index:1; display:inline;     }

        @-webkit-keyframes bn_scale{
            0%{-webkit-transform:scale(0.3); transform:scale(0.3); opacity:0.4;} 
            100%{-webkit-transform:scale(1); transform:scale(1); opacity:1;}
        }
        @keyframes bn_scale{
            0%{-webkit-transform:scale(0.3); transform:scale(0.3); opacity:0.4;}
            100%{-webkit-transform:scale(1); transform:scale(1); opacity:1;}
        }

        .main_lst{font-size:17px; list-style:none;}
        .main_lst li{position:relative; margin-top:12px; padding-left:10px;}
        .main_lst li:before{top:15px; left:0; border-radius:50%; background:#777; width:2px; height:2px; content:"";}
        .main_lst li a{display:inline-block; padding:5px; -webkit-transition:0.4s all; transition:0.4s all;}
        .main_lst li a:hover{background:#888; color:#fff;}
        
        .main_glr{margin-top:-20px; font-size:0;}
        .main_glr li{display:inline-block; padding:16px; width:33.3%; text-align:center; vertical-align:middle; -webkit-box-sizing:border-box; box-sizing:border-box;}
        .main_glr li a{display:block;}
        .main_glr li a:hover img{-webkit-transform:scale(1.15); transform:scale(1.15);}
        .main_glr .thmb{position:relative; padding-top:100%; overflow:hidden;}
        .main_glr .thmb img{position:absolute; top:0; left:0; right:0; bottom:0; margin:auto; max-width:100%; width:auto; height:auto; -webkit-transition:0.5s all; transition:0.5s all;}
        .main_glr .tt{display:block; margin-top:18px; font-size:15px;}
        .main_glr .dsc{margin-top:8px; color:#777; font-size:11px;}
        
        .main_inf{font-size:15px;}
        .main_inf li{margin-top:15px;}
        .main_inf .sbj{display:inline-block; margin-right:10px; min-width:90px; color:#555;}
        .main_fg{padding:20px 0; background:#e6e6e6; text-align:center;}
        .main_fg p{color:#000;}
        .main_me{position:relative; display:inline-block; font-size:2.4em; font-weight:400; margin:30px 0; width:100%; text-align:center; margin-top: 7rem;}
        .main_me:after{position:absolute; top:100%; height:2px; width:50px; left:0; right:0; margin:0 auto; background:#7b7cd4;}
        .main_me_content{font-family:'Noto Sans CJK KR', sans-serif; margin-bottom:4rem; margin-top: 4rem; box-sizing:border-box; padding:1rem; margin-right:8vw; width:100%;}

        .about_me {background:#fff; display:flex;justify-content: flex-start; margin:0; height:100%; }
        .about_project{background:#888;width:100%;}

        .first_category {padding: 40px 0 40px 0; display: flex;}
        .work_tt {font-size:15px;}
        .work_desc {color:#777; font-size:11px;}

        /*text*/
        .typer {font-size:4vw; letter-spacing: .1rem; font-family: 'Noto Sans CJK KR', sans-serif; color:#fff;justify-content:center;display:flex;vertical-align:middle;}

        /* Loading */
        .ld_bg{position:fixed; top:0; right:0; bottom:0; left:0; background:rgba(0, 0, 0, 0.4); z-index:100;}
        .ld_bg .ld{position:fixed; top:50%; left:50%; margin:-30px 0 0 -30px; border:5px solid transparent; width:60px; height:60px; -webkit-box-sizing:border-box; box-sizing:border-box; -webkit-animation:ld_square 1.4s 1; animation:ld_square 1.4s 1; text-indent:-9999px;}

        @-webkit-keyframes ld_square{
            25%{border-color:#fff transparent transparent transparent; }
            50%{border-color:#fff #fff transparent transparent; }
            75%{border-color:#fff #fff #fff transparent; }
            100%{border-color:#fff;}
        }
        @keyframes ld_square{
            25%{border-color:#fff transparent transparent transparent;}
            50%{border-color:#fff #fff transparent transparent;}
            75%{border-color:#fff #fff #fff transparent;}
            100%{border-color:#fff;}
        }

        /* Top Button */
        .bt_top{position:fixed; bottom:25px; right:25px; background:#fff url(../img/scrollTop.png) no-repeat 10px 6px; background-size:20px 30px; width:40px; height:40px; -webkit-box-shadow:2px 3px 3px rgba(0, 0, 0, 0.3); box-shadow:2px 3px 3px rgba(0, 0, 0, 0.3); text-indent:-9999px;}
        .bt_top:after{position:absolute; top:50%; left:50%; margin:-2px 0 0 -7px; border:solid #333; border-width:2px 2px 0 0; width:14px; height:14px; -webkit-transform:rotate(-45deg); transform:rotate(-45deg); content:""; transition:0.5s all;}
        .bt_top:hover{background:#000;}
        .bt_top:hover:after{border-color:#fff; -webkit-transform:rotate(315deg); transform:rotate(315deg);}

        /* Media Query */
        @media screen and (max-width:640px){
            .main_wrp{border-width:10px;} 
            .main_hg{text-align:center;}
            .main_nv ul{float:none; margin-top:0; text-align:center; overflow:hidden;} 
            .main_nv li{padding:10px; width:50%; -webkit-box-sizing:border-box; box-sizing:border-box;}
        }
        /* 갤러리형 리스트 별 반응형 너비 */
        @media screen and (max-width:640px) and (min-width:376px){
            .main_glr li{width:50%;}
        }

        @media screen and (max-width:375px){
            .main_glr li{padding:16px 0; width:100%;}
        }


    </style>
</head>
<body>
    <!-- skip Nav -->
	<div class="skip_nav">
		<a href="#nav">네비게이션 메뉴 바로가기</a>
		<a href="#content">콘텐츠 메뉴 바로가기</a>
	</div>

	<div class="main_wrp">
		<div class="">
			<!-- SECTION : Navigation -->
			<nav id="nav" class="main_nv">
				<ul>
                    <li><a href="#div_home">Home</a></li>
                    <li><a href="#section_about_me">About Me</a></li>
					<li><a href="#section_project">Project</a></li>
                    <li><a href="#section_skills">Skills</a></li>
					<li><a href="#section_contact">Contact</a></li>
				</ul>
			</nav>
			
			<!-- SECTION : Main Content -->
			<div id="content" class="main_cg">
                 <div class=" main_img">
                        <div class="img_cover" id="div_home">
                                <h2 class="typer" style="line-height:100vh;">Developer 문경민의 포트폴리오 입니다</h2>
                        </div>
                 </div>

				<div class="main_sg main_inr">
                    <%--Group: About ME--%>
                      <section class="main_gr about_me" id="section_about_me">
                        <h1 class="main_me">About Me</h1>
                        <div class="main_me_content">
                            <h1>분석하는 개발자</h1>
                            <section>
                                <p class="desc">
                                    3 년차 웹 개발자로 서버사이드 및 프론트 개발자 입니다. ASP.NET, MSSQL, jQuery, JavaScript, Java, Spring Framework, Oracle 등 기술을 이용하여 서비스를 개발한 경험이 있으며 항상 프로세스 개선을위해노력하고생각하고있습니다.  
                                    개인 시간에는 토이 프로젝트 또는 알고리즘 문제 풀이를 즐겨하고 있으며 기술 및 알고리즘 정리를 위해 블로그를 시작하여 기술 공유 글을 작성하고 있습니다.
                                </p>
                            </section>
                        </div>
                    </section>

                    <!-- Group : 업무 프로젝트 (갤러리 타입) -->
                    <section class="main_gr" id="section_project">
                        <h2 class="main_tt" style="margin-left:45%;">Project</h2>
                        <ul class="main_glr">
                            <li>
								<a href="https://www.qoo10.sg/robots.txt" target="_blank" title="">
									<div class="thmb">
										<img src="https://www.eebew.com/wp-content/uploads/2015/03/seo-sitemap-710x400.png" width="378" height="378" alt="" />
									</div>
                                    <span class="tt">Qoo10 SiteMap Files</span>
                                    <p class="dsc">2018.11 ~ 2019.01 Qoo10 SiteMap Files 제작</p>
								</a>
							</li>
                            <li>
								<a href="#" target="_blank" title="">
									<div class="thmb">
										<img src="https://www.sapsme.co.kr/images/oxford-icon2.png" width="378" height="378" alt="" />
									</div>
                                    <span class="tt">실시간 사용중 데이터 처리 형식 변경</span>
                                    <p class="dsc">2019.06 ~ 2019.08 Qoo10 실시간 데이터 형식 변경</p>
								</a>
                            </li>
                            <li>
								<a href="https://www.qoo10.sg/shop/icc" target="_blank" title="">
									<div class="thmb">
										<img src="https://images.clipartlogo.com/files/istock/previews/8113/81134999-online-store-icon-business-concept.jpg" width="378" height="378" alt="" />
									</div>
                                    <span class="tt">셀러들만의 Online Shop</span>
                                    <p class="dsc">2019.11 ~ 2020.02 Qoo10 SellerShop</p>
								</a>
                            </li>
                        </ul>
                    </section>

                	<section class="main_gr" id="section_skills">
						<h2 class="main_tt" style="margin-left:45%;">Skills</h2>
                        <div  class="first_category" style="display:inline-flex; margin-left:10%;">
                            <div style="padding: 110px 50px;"">
                                <img src="https://file.mk.co.kr/meet/neds/2019/02/image_readtop_2019_119050_15512292813650894.jpg" width="100"/>
                                <p class="dsc" >Qoo10 웹개발 2017.06 ~</p>
                            </div>
                            <div style="float:right;display:inline-block;">
						        <ul class="main_lst" >
                                    <li>
                                        <img src="https://i0.wp.com/www.venturesquare.net/wp-content/uploads/2014/09/net-logo-d203ac9ee3cdd26d3f31b0b98a7dea71.png?resize=405%2C200" width="90" height="60"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">.NET </p>
                                            <p class="work_desc">Web Application 개발</p>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="data:image/png;base64,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" style="width:90px;height:80px;"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">MSSQL</p>
                                            <p class="work_desc">DB JOB / Worker SQL 작성 능력</p>
                                        </div>
                                    </li>
                                    <li>
								        <img src="https://github.githubassets.com/images/modules/open_graph/github-logo.png" style="width:90px; height:70px;" />
                                        <div class="thmb" style="display:inline-block;">
                                            <span class="work_tt" style="display:inline-block;">Github</span>
                                            <p class="work_desc">형상관리에 필요한 기본적인 사용법</p>
                                        </div>
                                    </li>
						        </ul>
                           </div>
                             <div style="margin-left:50px; float:right;display:inline-block; ">
						        <ul class="main_lst" >
                                    <li>
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq44sFQF6Bqg-6tnwScHgrwKTd12ycmAM6Ol9jhbcbo_cS9WUd&s" width="60" height="60"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">HTML </p>
                                            <p class="work_desc">태그 활용 마크업</p>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="http://theeye.pe.kr/wp-content/uploads/2018/01/js_logo.jpg" style="width:70px;height:60px;"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">JavaScript</p>
                                            <p class="work_desc">Java Script</p>
                                        </div>
                                    </li>
                                    <li>
								        <img src="https://t1.daumcdn.net/cfile/tistory/2541853857EA02BC16" style="width:70px; height:70px;" />
                                        <div class="thmb" style="display:inline-block;">
                                            <span class="work_tt" style="display:inline-block;">JQuery</span>
                                            <p class="work_desc">JQuery</p>
                                        </div>
                                    </li>
						        </ul>
                           </div>
                        </div>


                        <div  class="first_category" style="display:inline-flex; margin-left:10%;">
                            <div style="padding: 70px 50px;"">
                                <img src="https://footballk.net/w/images/c/cb/%EC%88%98%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90.jpg" width="100"/>
                                <p class="dsc" >대학교 2011.03 ~ 2017.02</p>
                            </div>
                            <div style="float:right;display:inline-block;">
						        <ul class="main_lst" >
                                    <li>
                                        <img src="http://wiki.hash.kr/images/thumb/b/bb/%EC%9E%90%EB%B0%94_%EB%A1%9C%EA%B3%A0.png/200px-%EC%9E%90%EB%B0%94_%EB%A1%9C%EA%B3%A0.png" width="80" height="70"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">JAVA </p>
                                            <p class="work_desc">Web 개발 MVC</p>
                                        </div>
                                    </li>
                                    <li>
								        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzD7vm82vZI9yabdHmZn85fp2ilZNVm5lHInzhX3AF0aB-sQ2aGQ&s" style="width:90px; height:80px;" />
                                        <div class="thmb" style="display:inline-block;">
                                            <span class="work_tt" style="display:inline-block;">MySQL</span>
                                            <p class="work_desc">SQL 작성 능력</p>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiI7Hp4xhS8tP3z2O4iyDDkQs8F6QCZY2Fw9WiIhM9zFBctC1P&s" style="width:78px;height:70px;"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">Spring Framework</p>
                                            <p class="work_desc">Spring Web 개발</p>
                                        </div>
                                    </li>
						        </ul>
                           </div>
                            <div style="margin-left:90px; float:right;display:inline-block;">
                                <ul class="main_lst" >
                                    <li>
                                        <img src="https://www.creartbot.com/files/attach/images/1718/777/001/20c6043731e58613e81870ff0702f379.png" width="100" height="70"/>
                                        <div class="thmb" style="display:inline-block;">
								            <p class="work_tt" style="display:inline-block;">C 언어 </p>
                                            <p class="work_desc">C 언어</p>
                                        </div>
                                    </li>
                                    <li>
								        <img src="http://mixedcode.com/Upload/Board/arduinotitle.jpg" style="width:100px; height:80px;" />
                                        <div class="thmb" style="display:inline-block;">
                                            <span class="work_tt" style="display:inline-block;">ARDUINO</span>
                                            <p class="work_desc">아두이노</p>
                                        </div>
                                    </li>
						        </ul>
                            </div>

                        </div>
					</section>
                    
                    <section class="main_gr about_me" id="section_contact">
                        <h1 class="main_me">Contact</h1>
                        <div class="main_me_content">
                            <%--<img src="img/me.jpg" style="margin-left:10%; width:230px;height:300px;"/>--%>
                            <section>
                                <ul class="main_inf" style="display:inline-block; margin-left:5%;">
							        <li>
								        <strong class="sbj">이메일</strong>
								        <a title="메일 보내기">moongang1022@naver.com</a>
							        </li>
							        <li>
								        <strong class="sbj">휴대폰 번호</strong>
								        <a  title="전화걸기">010-8904-7092</a>
							        </li>
                                    <li>
								        <strong class="sbj">Tistory</strong>
								        <a href="https://thinksdev.tistory.com/" title="Tistory" target="_blank">개발바닥 Tistory</a>
							        </li>
						        </ul>
                            </section>
                        </div>
                    </section>
				</div>
			</div>
		</div>
		<!-- SECTION : Footer -->
		<footer id="footer" class="main_fg">
			<p></p>
		</footer>
	</div>

	<!-- Page Loading -->
	<div class="ld_bg">
		<div class="ld">Page Loading</div>
	</div>

	<!-- Top Button -->
	<button type="button" class="bt_top">Go to Top</button>
	
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	
	(function(){
		// loading
		setTimeout(loading, 1500);
		function loading(){
			$(".ld_bg").fadeOut();
		};

		// Top Button
		$(".bt_top").on("click", function(){
			$("html, body").stop().animate({"scrollTop" : 0}, 400);
		});
	})();
	
	
	</script>
</body>
</html>
