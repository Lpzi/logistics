$(function(){
//	var json='{'+
//				'"publish":{"name":"新华出版社"},'+
//				'"books":['+
//				       '{"bookname":"java编程思想","author":"张三"},'+
//	                   '{"bookname":"java编程思想","author":"张三"},'+
//	                   '{"bookname":"java编程思想","author":"张三"}'+
//	                  ']'+
//			'}';
//	var jsonObj=eval("("+json+")");
//	alert(jsonObj.publish.name)
//	
//	var jsonObj1=JSON.parse(json);
//	alert(jsonObj1.publish.name)
//	
//	var jsonObj2=$.parseJSON(json);
//	alert(jsonObj2.publish.name)
	
	$("#login").click(function(){
		$.ajax({
			url:"userServlet?cmd=doLogin",
			type:"post",
			dataType:"json",
			data:$("#loginForm").serialize(),
			success:function(resp){
//				var data=eval("("+resp+")");
				if(resp.state){
					alert("恭喜"+resp.user.realName+"登录了");
					location.href="views/main.jsp"
				}else{
					$(".panel-title").html(resp.tip);
				}
			}
		})
	});
})