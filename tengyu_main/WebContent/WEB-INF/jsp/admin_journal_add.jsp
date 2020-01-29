<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html><head>
<title>52镂空</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/resource/layui/css/layui.css">
<script src="https://yss-1253784481.cos.ap-shanghai.myqcloud.com/loukong/resource/layui/layui.js"></script>
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
            
            text-align:center;
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
    
    <ul class="layui-nav layui-bg-blue" >
	  <li class="layui-nav-item"><a href="../index"><i class="layui-icon">&#xe68e;</i> 后台</a></li>
	  <li class="layui-nav-item"><a href="../journal"><i class="layui-icon">&#xe637;</i>日志</a></li>
	  <li class="layui-nav-item  layui-this"><a href="">写日志</a></li>
	  <li class="layui-nav-item" ><a  href=""><i class="layui-icon">&#x1006;</i>退出</a></li>
	</ul>

 
	 <form class="layui-form layui-form-pane" style="margin-top:15px;width:90%;margin-left:5%;" method="post" action="../journal_add">
        

        
        
        
        <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">日志内容</label>
          <div class="layui-input-block">
            <textarea style="height:35%;" name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
          </div>
        </div>
        <div class="layui-form-item">
          <button class="layui-btn" type="submit" lay-submit="" lay-filter="formDemoPane">立即提交</button>
        </div>
      </form>
 
<script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  console.log(element);
  //…
});
</script>



</body></html>