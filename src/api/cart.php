<?php
    include 'connect.php';

    // 接受前端数据
    $username = isset($_GET['username']) ? $_GET['username'] : '';
    $id = isset($_GET['id']) ? $_GET['id'] : '';
    $qty = isset($_GET['qty']) ? $_GET['qty'] : '';

    //查看用户名是否已经存在
    $sql = "select * from goods";

    if($id){
        $sql .= " where id='$id'";
    }
    

?>