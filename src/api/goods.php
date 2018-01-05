<?php
    /*
        接口：获取列表数据
     */
    include 'connect.php';

    /*-----分页--------------*/
    $pageNo = isset($_GET['pageNo'])?$_GET['pageNo'] :'1';
    $qty = isset($_GET['qty'])?$_GET['qty'] :'10';

    /*-------查询类型-------------*/
    $cent = isset($_GET['cent']) ? $_GET['cent'] : null;
    $state = isset($_GET['status']) ? $_GET['status'] : null;
    // var_dump($state);
    /*-----------详情页---------*/
    
    $id = isset($_GET['id']) ? $_GET['id'] : null;

    $sql = 'select * from goods';


    /*-------排序--------------*/
    if($state == 'true'){
        $sql .= " order by price asc";
    }else if($state == 'false'){
        $sql .= " order by price desc";
    }

    if($id){
        $sql .= " where id='$id'";
    }
    //var_dump($sql);
    // 编写sql语句
    $sql .= ' limit '. $qty*($pageNo-1) . ',' . $qty;

    // 获取查询结果
    $result = $conn->query($sql);

    // 使用查询结果集
    $row = $result->fetch_all(MYSQLI_ASSOC);

    //释放查询结果集
    $result->close();

    // 格式化数据
    $res = array(
        'pageNo'=>$pageNo,
        'qty'=>$qty,
        'total'=>$conn->query('select count(*) from goods')->fetch_row()[0],
        'data'=>$row,
    );

    //把结果输出到前台
    echo json_encode($res,JSON_UNESCAPED_UNICODE);


    //关闭连接
    $conn->close();
?>