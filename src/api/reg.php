<?php
    include 'connect.php';

    // 接受前端数据
    $username = isset($_GET['username']) ? $_GET['username'] : '';
    $password = isset($_GET['password']) ? $_GET['password'] : '';
    $tel = isset($_GET['tel']) ? $_GET['tel'] : '';
    $reg = isset($_GET['reg']) ? $_GET['reg'] : '';
    $login = isset($_GET['login']) ? $_GET['login'] : '';


    //查看用户名是否已经存在
   
    if($reg == 'reg'){
        $sql = "select username from user where username='$username'";

        $result = $conn->query($sql);
        if($result->num_rows>0){
            // 释放查询内存(销毁)
            $result->free();

            // 用户名已经被占用
            echo "fail";
        }else if($password==''){
            // 释放查询内存(销毁)
            $result->free();

            // 密码不能为空
            echo "null";
        }else{
            // 释放查询内存(销毁)
            $result->free();

            // 密码md5加密
            $password = md5($password);echo "$password";

            $sql = "insert into user(username,password,tel) values('$username','$password','$tel')";
            $result = $conn->query($sql);
            if ($result) {
                // 写入成功
                echo "ok";
            } else {
                // 写入失败
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }    
    }else if($login == 'login'){
        if($password==''){
            $sql1 = "select username from user where username='$username'";

            $result = $conn->query($sql1);
            if($result->num_rows>0){
                // 释放查询内存(销毁)
                $result->free();

                // 用户名已经被占用
                echo "success";
            }else{
                 echo "fail_login";
            }
            
        }
        if($username!=''&& $password!=''){
           // var_dump($login,$username,$password);
            //密码md5加密
            $password = md5($password);

            $sql2 = "select * from user where username='$username' and password='$password'";
            // 获取查询结果
            $result = $conn->query($sql2);
          
            $row = $result->fetch_row();
            //var_dump($row);
            if($row[0]){
                echo 'ok';
            }else{
                echo 'fail';
            }
            
            // 释放查询内存(销毁)
            $result->free();  

        }
    }
    //关闭连接
   $conn->close();

?>