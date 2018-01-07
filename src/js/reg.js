require(['config'],function(){
    require(['jquery','bootstrapJs'],function(){
    var $username;
    var $password;
    var $phone;
    var $password1;
    var $yzm;
    // $('#reg_center').on('blur','input',function(){
    //     console.log($(this))
    //     /*---------用户名--------------*/
    //     $username = $.trim($('#username').val());
    //     if(!/^[\u2E80-\u9FFF]+$/.test($username)){
    //         $('.ts_user').html('!请输入中文的昵称');
    //         return false;
    //     }else{
    //         $('.ts_user').html('');
    //         $.ajax({
    //             url:'http://localhost:1811/api/reg.php',
    //             type:'get',
    //             data:{
    //                     username:$username,
    //                     reg:'reg'
    //                 },
    //             success:function(res){
    //                 if(res=='fail'){
    //                     $('.ts_user').html('!此用户名已被注册'); 
    //                     return false;
    //                 }
    //             }
    //         })
    //     }

    //     //密码
    //     $password = $.trim($('#password').val());
    //     $('.ts_pas').html('');
    //     if(!/^[^\s]{1,19}$/.test($password)){
    //         $('.ts_pas').html('你输入的密码不符合要求');
    //         return false;
    //     }
 
    //      $('.ts_nextpas').html('');
    //     if($password1!=$password){
    //         $('.ts_nextpas').html('请重新确认您设置的密码');
    //         return false;
    //     }
    //     console.log($password,$password1)
    //     /*-------------电话---------------*/
    //     $phone =$.trim($('#phone').val());
    //     $('.ts_phone').html('');
    //     if(!/^1[34578]\d{9}$/.test($phone)){
    //         $('.ts_phone').html('!输入电话号码有误');
    //         return false;
    //     }
    //      /*----验证码---------------------*/
    //     $('.ts_yzm').html('');
    //     $yzm=$.trim($('#vCode').val());
    //     if($('#vCode').val()!=$('.yzm').html()){  
    //         $('.ts_yzm').html('!输入验证码有误');
    //         //输入不正确，重新生成验证码
    //         yzm($('.yzm'));
    //         return false;
    //     }

    // })
    /*---------用户名--------------*/
    var type_username;
    var type_password;
    var type_phone;
    var type_password1;
    var type_yzm;
    $('#username').on('blur',function(){ 
        //昵称只能输入中文
        $('.ts_user').html(''); 
        type_username=true;
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
                        type_username=false;
                        $('.ts_user').html('!此用户名已被注册'); 
                        return false;
                    }
                }
            })
        }
    });
  
    //密码
    $('#password').on('blur',function(){
        $('.ts_pas').html('');
        $password = $.trim($('#password').val());
        
        type_password=true;
        if(!/^[^\s]{1,19}$/.test($password)){
            $('.ts_pas').html('你输入的密码不符合要求');
            type_password = false; 
            return false;
        }
        
       
    })

     // 确认密码
    $('#next_pas').on('blur',function(){
        $('.ts_nextpas').html('');
        type_password1=true;
        $password1 = $.trim($('#next_pas').val()); 
        if($password1!=$password){
            type_password1 = false; 
            $('.ts_nextpas').html('请重新确认您设置的密码');
            return false;
        }
       
    }) 
    /*-------------电话---------------*/
    $('#phone').on('blur',function(){
        type_phone=true;
        $('.ts_phone').html('');
        $phone =$.trim($('#phone').val());
        if(!/^1[34578]\d{9}$/.test($phone)){
            type_phone = false; 
            $('.ts_phone').html('!输入电话号码有误');
            return false;
        }
       
    })
    /*----验证码---------------------*/
    $('#vCode').on('blur',function(){
        $yzm=$.trim($('#vCode').val());
        type_yzm=true;
        $('.ts_yzm').html('');
        if($('#vCode').val()!=$('.yzm').html()){  
            type_yzm = false; 
            $('.ts_yzm').html('!输入验证码有误');
            //输入不正确，重新生成验证码
            yzm($('.yzm'));
            return false;
        }  
    })
    
    $('.btn_zhuce').on('click',function(event){
        console.log($phone,$password1,$yzm)
        event.preventDefault();
        if(!$('#checkbox').is(':checked')){
            $('.ts_check').html('请查看阅读并同意');
            return false;
        }else if($('#checkbox').is(':checked')){
            $('.ts_check').html('');    
        }
        var $modalBody = $('.MB');
        if(type_username==false ||type_password==false||type_password1==false||type_phone==false||type_yzm==false||$phone==undefined||$password1==undefined||$yzm==undefined){
            console.log($phone,$password1,$yzm)
            $('#myModal').modal();
            disabled="disabled"
            $('.deng').attr({disabled:"disabled"});
            $modalBody.html('请完善个人信息');
            return false;
        }else{
            $modalBody.html('注册成功');
            $('.deng').removeAttr('disabled');
            $.ajax({
                url:'../api/reg.php',
                data:{
                    tel:$phone,
                    username:$username,
                    password:$password,
                    reg:'reg'
                },
                success:function(data){
                    if(data == 'fail'){
                        //用户名已经存在
                        $('.ts_user').html('用户名已经存在');
                        return false;

                    }else{
                        /*$modalBody.html('恭喜您已注册成功');*/
                        //location.href='../html/login.html';
                    }
                }
            });         
            
        }  
                 
    })
    $('.deng').on('click',function(){
        
        location.href='../html/login.html';
    })
        /*-------封装-在jq基础上的随机数------*/  
        function yzm(ele){
            // 4位数字随机验证码
            var code = parseInt(Math.random()*10000);//0.0194,0.0050
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

