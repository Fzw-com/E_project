require(['config'],function(){
    require(['jquery','bootstrapJs'],function(){
    var $username;
    var $pass;
    var $phone;
    var $password1;
    var $yzm;
    function cc(){
        /*---------用户名--------------*/
        $('#username').on('blur',function(){ 
            //昵称只能输入中文
            $username = $.trim($('#username').val()); 
            if(!/^[\u2E80-\u9FFF]+$/.test($username)){
            $('.ts_user').html('!请输入中文的昵称');
                return false;
            }else{
                $('.ts_user').html('');
                $.ajax({
                    url:'http://localhost:1811/api/reg.php',
                    type:'get',
                    data:{
                            username:$username,
                            reg:'reg'
                        },
                    success:function(res){
                        if(res=='fail'){
                           $('.ts_user').html('!此用户名已被注册'); 
                        }else{
                            $('.ts_user').html(''); 
                        }
                    }
                })
            }
        });

        //密码
        $('#password').on('blur',function(){

            $pass = $.trim($('#password').val());
            
            if(!/^[^\s]{1,19}$/.test($pass)){
                $('.ts_pas').html('你输入的密码不符合要求');
                return false;
            }
            $('.ts_pas').html('');
        })

         // 确认密码
        $('#next_pas').on('blur',function(){
           
            $password1 = $.trim($('#next_pas').val());
            
            if($password1!=$pass){
                $('.ts_nextpas').html('请重新确认您设置的密码');
                return false;
            }
            $('.ts_nextpas').html('');
        }) 
        /*-------------电话---------------*/
        $('#phone').on('blur',function(){
           
            $phone =$.trim($('#phone').val());
            if(!/^1[34578]\d{9}$/.test($phone)){
                $('.ts_phone').html('!输入电话号码有误');
                return false;
            }
            $('.ts_phone').html('');
        })
        /*----验证码---------------------*/
        $('#vCode').on('blur',function(){
            $yzm=$.trim($('#vCode').val());
            if($('#vCode').val()!=$('.yzm').html()){  
                $('.ts_yzm').html('!输入验证码有误');
                //输入不正确，重新生成验证码
                yzm($('.yzm'));
                return false;
            }
            $('.ts_yzm').html('');
        })
        console.log($username,$pass,$phone,$password1,$yzm)
        if($username==undefined||$pass==undefined||$phone==undefined||$password1==undefined||$yzm==undefined){
            return false;
        }
    }
    cc();
    $('.btn_zhuce').on('click',function(event){
        event.preventDefault();
        cc();
        var $ts = $('.ts');
        var $modalBody = $('.MB');
        if($username==undefined||$pass==undefined){
            console.log($username,$pass,$phone,$password1,$yzm)
            $('#myModal').modal();
            disabled="disabled"
            $('.deng').attr({disabled:"disabled"});
            $modalBody.html('请完善个人信息');
            return false;
        }

         /*----勾选阅读协议--------------*/ 
        if(!$('#checkbox').is(':checked')){
            $('.ts_check').html('请查看阅读并同意');
            return false;
        }else if($('#checkbox').is(':checked')){
            $('.ts_check').html('');    
        }

        $.ajax({
            url:'../api/reg.php',
            data:{
                tel:$phone,
                username:$username,
                password:$pass,
                reg:'reg'
            },
            success:function(data){
                if(data == 'fail'){
                    //用户名已经存在
                    $('.ts_user').html('用户名已经存在');
                    return false;

                }else{
                    // $('.ts_user').html('恭喜');
                    //location.href='../html/login.html';
                }
            }
        });         
            
        
    })
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

