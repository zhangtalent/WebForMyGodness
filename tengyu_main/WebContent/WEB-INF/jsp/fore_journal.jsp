<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<html><head>
<title>52镂空</title>
<link rel="stylesheet" href="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/resource/layui/css/layui.css">
<script src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/resource/layui/layui.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <style>
        body,html{
            width:100%;
            height:100%;
            margin:0 auto;
            
        }
        
        
        
        #headerdiv{
            background:#fff;
            width:100%;
            height:100%;
            
            vertical-align:middle;
            margin:0 auto;
        }
        
        .showdiv{
            margin-top:50%;
            font-size:27px;
            color:#000;
            text-align:center;
            height:80%;
            
        }
        
        .imgofitem{
            vertical-align:middle;
            height:125px;
            margin:0 auto;
        }
        
        .item{
            background:#fff;
            height:125px;
            line-height:120px;
            font-size:20px;
            color:#000;
            font-weight:300;
            /*margin-top:25px;*/
            width:100%;box-shadow:0 10px 10px #ddd;
        }
        
        #mobile{
            
        }
        botton,bottom {
		-webkit-appearance:none;
		}
    </style>




</head>

<body>
    <div style="padding:5%;">
			
	    <p style="color:#4e4e4e;font-size:25px;font-weight:200;text-align:center;"><b><br>日志</b></p>
	    <br>
		<hr class="layui-bg-green">
	</div>
    
    <ul class="layui-timeline" style="margin-left:5%;padding-right:5%;">
		<c:forEach items="${datas}" var="data">
    	
    	
    		<li class="layui-timeline-item" >
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title"><c:out value="${data.time}"/></h3>
		      <pre><c:out value="${data.journalcontent}"/>
		      </pre>
		    </div>
		  </li>
		</c:forEach>
		  
	</ul>
    
    	
   
    
    

    
<script>

    console.log("ncx:"+nChangX+document.getElementById('one')+"   ncy:"+nChangY)
    
    right = 0;
    right2 = 100;
    len = ${number};
    position= len-1;
    //设置出示图片
    document.getElementById('img1').src = "https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/000"+(position)+".png";
    document.getElementById('img2').src = "https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/000"+(position-1)+".png";
    position--;
    var top =  document.getElementById('one').style.top;
	
	document.getElementById('img1').addEventListener('touchstart',function(e){
            //nStartY = e.targetTouches[0].pageY;
            nChangX = e.targetTouches[0].pageX;
    });
    document.getElementById('img1').addEventListener('touchmove',function(e){
			e.preventDefault(); 
            console.log(e.targetTouches[0].pageX-nChangX)
			//nChangX = e.targetTouches[0].pageX;
          //document.getElementById('headerdiv')
            document.getElementById('one').style.top = top;                                        
            if((e.targetTouches[0].pageX-nChangX)<-3){
                document.getElementById('one').style.right = (right+10)+"%"
                document.getElementById('two').style.left = (right2-10)+"%"
				nChangX = e.targetTouches[0].pageX;
				right = right+10;
				right2 = right2-10;
                }
            
            
    });
    document.getElementById('img1').addEventListener('touchend',function(e){
          //nChangY = e.changedTouches[0].pageY;
          //nChangX = e.changedTouches[0].pageX;
          //console.log("cx:"+nChangX+"   cy:"+nChangY)
          if(position==0){
            position = len-1;
          }
          url = "https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/000"+(position)+".png";
          document.getElementById('one').style.right = "0px";
          document.getElementById('two').style.left = "100%";
          if(right>35){
                    document.getElementById('img1').src = "https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/000"+(position)+".png";
                    pos = position-1;
                    if(position==1){
                        pos = len;
                    }
                    document.getElementById('img2').src = "https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/000"+(pos)+".png";
                    console.log("ri="+right)
                    }
          position--;
          right = 0;
          right2 = 100;
    });

    
    var screenwidth = document.body.clientWidth
    var screenheight = document.body.clientHeight
    
    
    
    if(screenwidth>screenheight){
        document.getElementById('img2').style.width="auto";
        document.getElementById('img2').style.marginLeft="50%";
        document.getElementById('img2').style.height="70%";
        document.getElementById('img1').style.width="auto";
        document.getElementById('img1').style.marginLeft="40%";
        document.getElementById('img1').style.height="70%";
               
    }
    
    var nStartX,nStartY,nChangX,nChangY = 0;
    console.log("w:"+screenwidth+"   h:"+screenheight)
    
    //首页滑动
	document.getElementById('headerdiv').addEventListener('touchstart',function(e){
            nStartY = e.targetTouches[0].pageY;
            nStartX = e.targetTouches[0].pageX;
    });
	document.getElementById('headerdiv').addEventListener('touchmove',function(e){
			//e.preventDefault();
			e.preventDefault(); 
            console.log("changed:"+(e.targetTouches[0].pageY-nStartY))                                      
            if((e.targetTouches[0].pageY-nStartY)<-200){
                document.getElementById('headerdiv').style.zIndex = "1"
                document.getElementById('secondpage').style.zIndex = "3"
				document.getElementById('thirdpage').style.zIndex = "2"
				document.getElementById('headerdiv').style.top = "0px";
				
                }
			else{document.getElementById('headerdiv').style.top = (e.targetTouches[0].pageY-nStartY)+"px";	
            
            nChangX = e.targetTouches[0].pageX;}
    });
    
	
	
	
	//尾页
	//首页滑动
	document.getElementById('thirdpage').addEventListener('touchstart',function(e){
            nStartY = e.targetTouches[0].pageY;
            nStartX = e.targetTouches[0].pageX;
    });
	document.getElementById('thirdpage').addEventListener('touchmove',function(e){
			//e.preventDefault();
			e.preventDefault(); 
            console.log("changed:"+(e.targetTouches[0].pageY-nStartY))                                      
            if((e.targetTouches[0].pageY-nStartY)<-200){
                document.getElementById('headerdiv').style.zIndex = "3"
                document.getElementById('secondpage').style.zIndex = "2"
				document.getElementById('thirdpage').style.zIndex = "1"
				document.getElementById('headerdiv').style.top = "0px";
				document.getElementById('thirdpage').style.top = "0px";
                }
			else{document.getElementById('thirdpage').style.top = (e.targetTouches[0].pageY-nStartY)+"px";	
            
            nChangX = e.targetTouches[0].pageX;}
    });
	
	
	function previous(){
		console.log("-----")
		document.getElementById('headerdiv').style.zIndex = "3"
        document.getElementById('secondpage').style.zIndex = "2"
		document.getElementById('thirdpage').style.zIndex = "1"
		document.getElementById('headerdiv').style.top = "0";	
	}
	
	function next(){
		document.getElementById('headerdiv').style.zIndex = "2"
        document.getElementById('secondpage').style.zIndex = "1"
		document.getElementById('thirdpage').style.zIndex = "3"
		document.getElementById('thirdpage').style.top = "0";	
	}
	
	
	
	function show(){window.scrollTo(0,screenheight-50);}
        

    
    
    setInterval("update_ani_bar()", 100);
    
    
    function update_ani_bar(){
        document.getElementById("ani_bar").innerHTML = "";
        //console.log("---;;;")
        //document.getElementById("ani_bar")
            ani_bar_width = parseInt(screenwidth/50)
            for(i = 0; i < 51;i++){
                var h_data = '<div style="display:inline-block;height:'+(Math.random() * 80 + 30)+'px;width:'+ani_bar_width+'px;background-color:#38e198;"></div>';
                var data = document.getElementById("ani_bar").innerHTML;
                //var htm_data = "<div>";
                document.getElementById("ani_bar").innerHTML = data + h_data;
            }
        
    }

    
</script>



</body></html>