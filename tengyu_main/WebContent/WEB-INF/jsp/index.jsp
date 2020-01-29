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
    
    
    <div id="headerdiv" style="padding-left:3%;padding-top:5%;margin-right:5%;position:absolute;top:0;z-index:3;overflow:hidden;max-height:100%;">
        <div style = "text-align:center;font-size:11px;"><b style="font-size:21px;">to</b><b style="font-size:15px;">-滕钰</b><br>向上划<div style="margin:0 auto;margin-top:8px;height:2px;width:50px;background-color:#4e4e4e;box-shadow:0 0 0px #4e4e4e;"></div></div>
        <img style="margin-top:5%;margin-left:5%;width:70px;max-height:70px;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/icon2.png">
		<ul class="layui-timeline" style="margin-top:5%;margin-left:5%;padding-right:5%;">
		
		  <li class="layui-timeline-item" >
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title"><c:out value="${data.time}"/></h3>
		      <pre><c:out value="${data.journalcontent}"/>
		      </pre>
		    </div>
		  </li>
		  
		  
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <div class="layui-timeline-title"><a href="journals">更多</a></div>
		    </div>
		  </li>
		</ul>

    </div>
    
    
    <div id="secondpage" style="background-color:#fff;width:100%;height:100%;position:absolute;top:0;z-index:2;overflow:hidden;">
        
		<div style="height:90%;width:100%;">		
            <div id="one" style="position:absolute;z-index:3;width:100%;right:0;top:95;overflow:hidden;;
                    height:100%;"><img id="img1" style="width: 100%; overflow: hidden; border-radius: 5px; box-shadow: rgb(221, 221, 221) 0px 0px 5px; height: auto;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0001.png"></div>
            <div id="two" style="position:absolute;z-index:2;width:100%;top:95;left:100%;overflow:hidden;line-height:50%;;
                    height:100%;"><img id="img2" style="vertical-align: middle; width: 100%; overflow: hidden;border-radius: 0px; box-shadow: rgb(221, 221, 221) 0px 0px 50px; height: auto;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0002.png"></div>
            <div style="position:absolute;top:30;text-align:center;color:#4e4e4e;width:100%;font-size:11px;"><b style="font-size:21px;">Photo</b><br>向左划<div style="margin:0 auto;margin-top:8px;height:2px;width:50px;background-color:#4e4e4e;box-shadow:0 0 0px #4e4e4e;"></div></div>
		</div>	
		
		<button id="next" onclick="next()" style="border:none;background-color:transparent;display:inline-block;position:absolute;top:30px;right:15px;">
			下一页
		</button>
		<button id="previous" onclick="previous()" style="border:none;background-color:transparent;display:inline-block;position:absolute;top:30px;left:15px;">
			返回
		</button>
		
        
    </div>
    
    
    
    <div id="thirdpage" style="background-color:#fff;width:100%;height:100%;position:relative;position:absolute;top:0;z-index:1;">
        
        <div id="lrc" style="margin:auto;text-align:center;padding-Top:150px;">
            <p><span style="font-size: 14pt;">​是否很惊讶 讲不出说话</span></p>
            <p><span style="font-size: 14pt;">没错我是说 你想分手吗</span></p>
            <p><span style="color:#38e198;font-size: 17pt;">曾给你驯服到 就像绵羊</span></p>
            <p><span style="font-size: 14pt;">何解会反咬你一下 你知吗</span></p>
            <p><span style="font-size: 14pt;">回头望 伴你走 从来未曾幸福过</span></p>
            <p><span style="font-size: 14pt;">赴过汤 蹈过火 沿途为何没爱河</span></p>
        </div>
        
        <div id="ani_bar" style="position:absolute;bottom:0px;"><div style="display:inline-block;height:67.7891437101183px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:68.52199241610266px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:85.95893564523301px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:94.50439476391477px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:104.95659420845229px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:76.08124445245303px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:59.36108713461433px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:41.88266666714959px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:86.93771175134314px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:94.68582506465324px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:49.878256593588034px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:95.65765512996039px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:77.81096896044619px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:56.587992904347715px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:96.5211400838075px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:55.13590640008799px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:48.45043896632923px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:80.93633449097237px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:78.31119591147191px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:72.6277021709318px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:85.64913395382578px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:105.40530961811032px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:107.98908929563038px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:94.62018750905442px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:69.2609433449945px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:105.74327711175454px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:74.95827675329666px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:66.49106060976146px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:48.30235248571398px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:36.228631650216144px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:61.76724720172905px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:45.089400038234295px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:65.0612368383046px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:92.87910019247303px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:46.94967803455537px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:108.87750638236497px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:75.05163529879651px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:72.4520294220914px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:106.00647824968601px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:31.668114129941323px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:91.7386646566129px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:39.13746707081225px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:85.9981195484564px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:95.85580336650578px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:51.45404000470794px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:96.72008766260157px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:76.53963110572612px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:59.6548759764449px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:108.64478296158794px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:33.01758456580251px;width:40px;background-color:#38e198;"></div><div style="display:inline-block;height:75.10594734332527px;width:40px;background-color:#38e198;"></div></div>
        
    </div>
    
    
    
    <div style="max-width:100%;display:none;">
        <div id="gallery" style="height:100%;width:500%;">
            <div id="pic1" style="width:19%;display:inline-block;
                    height:100%;"><img style="width:80%;overflow:hidden;margin:10%;border-radius:15px;box-shadow:0 0 50px #ddd;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0001.png"></div>
            <div id="pic2" style="width:19%;display:inline-block;
                    height:100%;"><img style="width:80%;overflow:hidden;margin:10%;border-radius:15px;box-shadow:0 0 50px #ddd;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0002.png"></div>
            <div id="pic3" style="width:19%;display:inline-block;
                    height:100%;"><img style="width:80%;overflow:hidden;margin:10%;border-radius:15px;box-shadow:0 0 50px #ddd;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0003.png"></div>
            <div id="pic2" style="width:19%;display:inline-block;
                    height:100%;"><img style="width:80%;overflow:hidden;margin:10%;border-radius:15px;box-shadow:0 0 50px #ddd;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0002.png"></div>
            <div id="pic3" style="width:19%;display:inline-block;
                    height:100%;"><img style="width:80%;overflow:hidden;margin:10%;border-radius:15px;box-shadow:0 0 50px #ddd;" src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/0003.png"></div>
                    
        </div>
    </div>
    
    
    
    
    

    
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
    
	  /***pc****/
    function addEvent(obj,xEvent,fn) {
	    if(obj.attachEvent){
	      obj.attachEvent('on'+xEvent,fn);
	    }else{
	      obj.addEventListener(xEvent,fn,false);
	    }
	}

    
    
	
	  //接着利用我们自己封装的函数给div绑定事件，
	  var headerdiv = document.getElementById('headerdiv');
	  addEvent(headerdiv,'mousewheel',onMouseWheel);
	  addEvent(headerdiv,'DOMMouseScroll',onMouseWheel);
	  // 当滚轮事件发生时，执行onMouseWheel这个函数
	  function onMouseWheel() {
		  var ev = ev || window.event;
          var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
              down = ev.wheelDelta?ev.wheelDelta<0:ev.detail>0;
          if(down){
        	  	document.getElementById('headerdiv').style.zIndex = "1"
                document.getElementById('secondpage').style.zIndex = "3"
  				document.getElementById('thirdpage').style.zIndex = "2"
  				document.getElementById('headerdiv').style.top = "0px";
          }else{
                //oDiv.style.height = oDiv.offsetHeight-10+'px';
          }
          if(ev.preventDefault){/*FF 和 Chrome*/
              ev.preventDefault();// 阻止默认事件
          }
          return false;

	  }
	

	  
	  
	  
	  
	  //Last Page
	  //接着利用我们自己封装的函数给div绑定事件，
	  var thirdpage = document.getElementById('thirdpage');
	  addEvent(thirdpage,'mousewheel',onMouseLastPage);
	  addEvent(thirdpage,'DOMMouseScroll',onMouseLastPage);
	  // 当滚轮事件发生时，执行onMouseWheel这个函数
	  function onMouseLastPage() {
		  var ev = ev || window.event;
          var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
              down = ev.wheelDelta?ev.wheelDelta<0:ev.detail>0;
          if(down){
        	  	document.getElementById('headerdiv').style.zIndex = "3"
                document.getElementById('secondpage').style.zIndex = "2"
  				document.getElementById('thirdpage').style.zIndex = "1"
  				document.getElementById('headerdiv').style.top = "0px";
  				document.getElementById('thirdpage').style.top = "0px";
          }else{
                //oDiv.style.height = oDiv.offsetHeight-10+'px';
          }
          if(ev.preventDefault){/*FF 和 Chrome*/
              ev.preventDefault();// 阻止默认事件
          }
          return false;

	  }
    
    
    /***end*****/
	
	
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
                var h_data = '<div style="display:inline-block;height:'+(Math.random() * 80 + 30)+'px;width:'+ani_bar_width+';background-color:#38e198;"></div>';
                var data = document.getElementById("ani_bar").innerHTML;
                //var htm_data = "<div>";
                document.getElementById("ani_bar").innerHTML = data + h_data;
            }
        
    }

    
</script>



</body></html>