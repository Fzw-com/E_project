<?php
    include 'connect.php';

    // 接受前端数据
    $userName = isset($_GET['username']) ? $_GET['username'] : "";
    $goodsId = isset($_GET['id']) ? $_GET['id'] : ""; 
    $type = isset($_GET['type']) ? $_GET['type'] : "";

    $sql = "select * from cart where userName='$userName'";
    $array = array();
    $result = $conn->query($sql);


    if($result ->num_rows >0){
        $res = $result ->fetch_all(MYSQLI_ASSOC);
        $result->free();
        $res =$res[0]['goodsId'];
        if(strrchr($res,",")==","){
            $res = substr($res,0,-1);
        }
        if(strpos($res,',')){
            $array = explode(',',$res);
        }else{
            Array_unshift($array,$res);
        }
        
        if($goodsId!=""){
            if($type == "change"){
                $string = $goodsId;
            }else if($type=='jia'){
                $id = substr($goodsId,0,1);  
                foreach ($array as $key=>$value)      
                {
                  if ($value == $id)
                    unset($array[$key]);
                }
                Array_unshift($array,$goodsId); 
                $string = implode(',',$array);

            }else if($type=='del'){
                foreach ($array as $key=>$value)      
                {
                  if ($value == $goodsId)
                    unset($array[$key]);
                }
                $string = implode(',',$array);
            }else{
                Array_unshift($array,$goodsId); 

                $string = implode(',',$array);
                
            }
            $sql = "update cart set goodsId ='$string' where userName ='$userName'";
            $result = $conn->query($sql);
            if($result){
                echo "ok";
            }else{
                // 输出失败;
                echo "Error: " .$sql ."<br>" .$cont->error; 
            }
             // 关闭数据库，避免资源浪费
            $conn->close(); 
        }else{
            if($type =="change"){
                $sql="update cart set goodsId='' where userName = '$userName'";
                $result = $cont->query($sql);

                // 判断是否写入成功;
                if($result){
                    echo "ok";
                }else{
                    // 输出失败;
                    echo "Error: " .$sql ."<br>" .$cont->error; 
                }
                $cont->close();  
            }else{
                $row = array();
                if($array[0] === ""){
                    echo "none";
                }else{
                    for ($i= 0;$i< count($array); $i++){
                        if($array[$i] == ""){
                            return;
                        } 
                        $sql = "select * from goods where id = $array[$i]";
                        $result = $conn->query($sql);
                        $res = $result->fetch_all(MYSQLI_ASSOC);
                        $result->free();
                        Array_unshift($row,$res[0]); 
                    } 
                    echo json_encode($row,JSON_UNESCAPED_UNICODE);
                }
            }
        } 
    }else{
        // var_dump($type);
        if($goodsId!="" && $type==''){

            $sql = "insert into cart(userName,goodsId) values ('$userName','$goodsId')";
            $result = $conn->query($sql);
            // 判断是否写入成功;
            if($result){
                echo "ok";
            }else{
                // 输出失败;
                echo "Error: " .$sql ."<br>" .$conn->error; 
            }
        }else{
            echo "none";
        }
        $conn->close();
    }
    
?>