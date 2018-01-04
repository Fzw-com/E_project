require(['config'],function(){
    require(['jquery'],function(){

        /*---------用户名--------------*/
        $('#username').on('blur',function(){ 

            //昵称只能输入中文
            var $username = $('#username').val(); 
            console.log($username)
            if(!/^[\u2E80-\u9FFF]+$/.test($username)){
            $('.ts_use').html('!请输入中文的昵称');
                return false;
            }else{
                $('.ts_use').html('');
            }
        });

        //密码
        var $pass;
        $pass = $('#password').val();
        if(!/^[^\s]{1,19}$/.test($pass)){
            $('.ts_pas').html('你输入的密码不符合要求');
            return false;
        }else{
            $('.ts_pas').html('');
        }
        /*-------------电话---------------*/
        var $phone =$('#phone').val();
        if(!/^1[34578]\d{9}$/.test($phone)){
            $('.ts_phone').html('!输入电话号码有误');
            return false;
        }else{
            $('.ts_phone').html('');
        }
        /*----验证码---------------------*/
        var $yzm=$('#yzm').val();
        if($('#yzm').val()!=$('.yzm').html()){  
            $('.ts_yzm').html('!输入验证码有误');
            //输入不正确，重新生成验证码
            yzm($('.yzm'));
            return false;
        }else{
            $('.ts_yzm').html('');
        }


        //短信验证码。用验证码代替
        var $dx=$('#dx').val();
        if($('#dx').val()!=$('.yzm').html()){   
            $('.ts_dx').html('!输入短信码有误');
            return false;
        }else{
            $('.ts_dx').html('');
        }
       


        // 确认密码
        
        var $password1 = $('#next_password').val();
        if($password1!=$pass){
            $('.ts_nextpas').html('请重新确认您设置的密码');
            return false;
        }else{
            $('.ts_nextpas').html('');
        }

    
        if(!$('#checkbox').is(':checked')){
            $('.ts_check').html('请查看阅读并同意');
            return false;
        }else if($('#checkbox').is(':checked')){
            $('.ts_check').html('');    
        }

        $.ajax({
                url:'http://localhost:1811/api/reg.php',
                data:{
                tel:$('#phone').val(),
                username:$('#username').val(),
                password:$('#password').val()
                },
                success:function(data){
                    if(data == 'fail'){
                        //用户名已经存在
                        $('.ts_use').html('用户名已经存在');
                        return false;

                    }else{
                        $('.ts_use').html('恭喜');
                        location.href='../html/f_reg.html';
                    }
                }
        });         
    

        /*-------封装-在jq基础上的随机数------*/  
        function yzm(ele){
            // 4位数字随机验证码
            var code = parseInt(Math.random()*10000);//0.0194,0.0050

            console.log($('#checkbox').val())
            // 补0操作
            if(code < 10){
                code = '000' + code;
            }else if(code < 100){
                code = '00' + code;
            }else if(code<1000){
                code = '0' + code;
            }

            ele.html(code);         
        }
        //页面生成随机数
        yzm($('.yzm'));
    })
})

