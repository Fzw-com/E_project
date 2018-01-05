require(['config'],function(){
    require(['jquery'],function(){
        var $username ;
        var $password ;
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
                            login:'login'
                        },
                    success:function(res){
                        if(res=='success'){
                            $('.ts_user').html('！你好'); 
                        }else{
                             $('.ts_user').html('!输入账号有误');
                        }
                        /*if(res=='fail'){
                           $('.ts_user').html('!此用户名已被注册'); 
                        }else{
                            $('.ts_user').html(''); 
                        }*/
                    }
                })
            }
        });
        $('#password').on('blur',function(){
            $password = $.trim($('#password').val());
            if($password==''){
                 $('.ts_pass').html('!密码不能为空');
            }
        })
        $('.btn_login').on('click',function(){
            if($username==''){
                $('.ts_user').html('!用户名不能为空');
                return false;
            }
            if($password==''){
                $('.ts_pass').html('密码不能为空');
                return false;
            }
            $.ajax({
                    url:'http://localhost:1811/api/reg.php',
                    type:'get',
                    data:{
                            username:$username,
                            password:$password,
                            login:'login'
                        },
                    success:function(res){
                        if(res=='ok'){
                            // $('.ts_user').html('！你好'); 
                            location.href='../index.html'
                        }else{
                             $('.ts_user').html('输入密码有误');
                        }
                        /*if(res=='fail'){
                           $('.ts_user').html('!此用户名已被注册'); 
                        }else{
                            $('.ts_user').html(''); 
                        }*/
                    }
                })
        })
    })
})