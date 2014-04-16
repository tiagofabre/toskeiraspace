<%-- in the name of the putaria --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ToskeiraSpace!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/css/ts.css" rel="stylesheet">
<style>
body {
	padding-top: 60px;
}
</style>
<link rel="shortcut icon" href="favicon.ico">
</head>
<body>
	<jsp:include page="menu.jsp" />

    <div style="max-width: 940px; margin: 0 auto;">
	   <div class="row">
	       <div class="span12">
	           <h1>Super Developers Team</h1>
	       </div>
	   </div>
		<div class="row">
			<ul class="thumbnails developers">
				<li class="span6">
					<div class="thumbnail">
						<div class="media">
							<a class="pull-left" href="https://github.com/sombriks" target="_blank">
							    <img class="media-object"
								src="https://avatars2.githubusercontent.com/u/556695?s=150">
							</a>
							<div class="media-body">
								<h4 class="media-heading">Sombriks</h4>

								<div class="media">Some cool stuff here</div>
								<br/>
								<div class="media"><a href="https://github.com/sombriks">Github</a></div>
							</div>
							<div style="clear: both;" ></div>
						</div>
					</div>
				</li>
				<li class="span6">
					<div class="thumbnail">
						<div class="media">
                            <a class="pull-left" href="https://github.com/eprogramming" target="_blank">
                                <img class="media-object"
                                src="https://avatars2.githubusercontent.com/u/6443576?s=150">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Eprogramming</h4>

                                <div class="media">HULK SMASH</div>
                                <br/>
                                <div class="media"><a href="https://github.com/eprogramming">Github</a></div>
                            </div>
                            <div style="clear: both;" ></div>
                        </div>
					</div>
				</li>
				<li class="span6">
                    <div class="thumbnail">
                        <div class="media">
                            <a class="pull-left" href="https://github.com/danielsoro" target="_blank">
                                <img class="media-object"
                                src="https://avatars1.githubusercontent.com/u/350841?s=150">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Daniel Cunha</h4>

                                <div class="media">Floripa Guy</div>
                                <br/>
                                <div class="media"><a href="https://github.com/danielsoro">Github</a></div>
                            </div>
                            <div style="clear: both;" ></div>
                        </div>
                    </div>
                </li>
				<li class="span6">
					<div class="thumbnail">
						<div class="media">
                            <a class="pull-left" href="https://github.com/efraimgentil" target="_blank">
                                <img class="media-object"
                                src="http://1.gravatar.com/avatar/72cdf06d6642a3d2e896f50aa103fe63?s=150">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Efraim Gentil</h4>

                                <div class="media">The only one that don't have a cool nickname =(</div>
                                <br/>
                                <div class="media"><a href="https://twitter.com/efraimgentil">@efraimgentil</a></div>
                                <div class="media"><a href="https://github.com/efraimgentil">Github</a></div>
                            </div>
                            <div style="clear: both;" ></div>
                        </div>
					</div>
				</li>
			</ul>
		</div>
		<div class="row">
	       <audio controls autoplay>
	           <source id="music" src="http://www.8bitpeoples.com/files/8bp131-01-doomcloud-raw_data.mp3" type="audio/mpeg">
	       </audio>
	   </div>
	</div>
    
	<script type="text/javascript" src="${ctx}/js/st.js"></script>
</body>
</html>
