require(['config'],function(){
    require(['jquery','header'],function(){
          //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 
        var $userName = window.sessionStorage.getItem('username');

        /*=============购物车==============*/
        $('<thead/>').html(`<tr>
                        <th><input type="checkbox" id="all_check"/>全选</th>
                        <th>商品名称</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>小计(元)</th>
                        <th>操作</th>
                        </tr>`)
                        .appendTo($('.carList'));
        $.ajax({
            url:'../api/cart.php',
            data:{
                username:$userName
            },
            type:'get',
            success:function(res){
                if(res=='none'){
                    return;
                }
                
                var res = JSON.parse(res);
                
                res.forEach((item)=>{
                    item.qty = 1;
                })
                getQty(res);
                //创建tabel标签
                var $total=0;
                var $min_total;
                $('<tbody/>').html('');
                $('<tbody/>').html(res.map(function(item){
                    $total += item.price * item.qty;
                    $min_total=item.price*item.qty;
                    return  `<tr data-guid="${item.id}">
                                <td><input type="checkbox" /><img src="${item.imgUrl}"/></td>
                                <td><h4 class="car_name">${item.details}</h4></td>
                                <td><p class="price">${item.price}</p></td>
                                <td class="car_sl" onselectstart="return false;"><span class="jian">-</span><span class="car_qty">${item.qty}</span><span class="jia">+</span></td>
                                <td><span class="min_total">${$min_total}</span></td>
                                <td><span class="del_car">删除</span></td>
                            </tr>`
                }).join('')).appendTo($('.carList'));
                $('.all_total').html($total);
                add_sub();

                $('tbody').on('click','.del_car',function(){
                    var $current_tr = $(this).closest('tr');
                    var car_id = $current_tr.attr('data-guid');

                    $.ajax({
                        url:'../api/cart.php',
                        data:{
                            username:$userName,
                            id:car_id,
                            type:'del'
                        },
                        type:'get',
                        success:function(res){ 
                            console.log(res)
                            if(res=='ok'){
                                car_ajax($userName);
                            }                                
                        }
                    })
                })
                
               
            }
        })
        function car_ajax(aa){
            var cc=$('.carList').find('tbody');
            console.log(cc)
            $.ajax({
                url:'../api/cart.php',
                data:{
                    username:aa
                },
                type:'get',
                success:function(res){  
                    if(res=='none'){ 
                        $('.carList').find('tbody').html(''); 
                        $('.all_total').html('0');
                        return;
                    }
                   
                    var res = JSON.parse(res);  
                    res.forEach((item)=>{
                        item.qty = 1;
                    })
                    getQty(res);
                    //创建tabel标签
                    var $total=0;
                    var $min_total;
                    var cc=$('.carList').find($('tbody'));
                    cc.html('');
                    cc.html(res.map(function(item){
                        $total += item.price * item.qty;
                        $min_total=item.price*item.qty;
                        return  `<tr data-guid="${item.id}">
                                    <td><input type="checkbox" /><img src="${item.imgUrl}"/></td>
                                    <td><h4 class="car_name">${item.details}</h4></td>
                                    <td><p class="price">${item.price}</p></td>
                                    <td class="car_sl" onselectstart="return false;"><span class="jian">-</span><span class="car_qty">${item.qty}</span><span class="jia">+</span></td>
                                    <td><span class="min_total">${$min_total}</span></td>
                                    <td><span class="del_car">删除</span></td>
                                </tr>`
                    }).join('')).appendTo($('.carList'));
                    $('.all_total').html($total);
                    add_sub();

                }
            })
        }
        function add_sub(){
            var  $car_qty;
            /*-----------数量减------------*/
            var idArr=[];
            $('.car_sl').on('click','.jian',function(){
                idArr=[];
                $car_qty = $('.car_qty').html();
                var $current_tr = $(this).closest('tr');
                var current_price = $current_tr.find('.price').html();
                var car_id = $current_tr.attr('data-guid');
                $car_qty = $current_tr.find('.car_qty').html();
                $car_qty--;
                if($car_qty<=1){
                    $car_qty=1;   
                } 
                $current_tr.find('.min_total').html(current_price*$car_qty); 
                var total=0;
                var min_price = $('tbody').find('.min_total')
                for(var i=0;i<min_price.length;i++){
                    total+=$(min_price[i]).html()*1;
                }
                $('.all_total').html(total);
                for(var i=0;i<$car_qty;i++){
                    idArr.push(car_id);
                }   
                var idAll = idArr.join(',');
                var idAll=idArr.join(',')
                $(this).next('.car_qty').text($car_qty)
                $.ajax({
                    url:'../api/cart.php',
                    data:{
                        username:$userName,
                        id:idAll,
                        type:'jia'
                    },
                    type:'get',
                    success:function(res){  
                        if(res=='ok'){
                            
                        }  
                    }
                })
            })
            /*-----------数量加-----------*/
            $('.car_sl').on('click','.jia',function(){
                idArr=[];
                var $current_tr = $(this).closest('tr');
                var current_price = $current_tr.find('.price').html();
                var car_id = $current_tr.attr('data-guid');
                 $car_qty = $current_tr.find('.car_qty').html();
                $car_qty++;
                $current_tr.find('.min_total').html(current_price*$car_qty); 
                var total=0;
                var min_price = $('tbody').find('.min_total')
                for(var i=0;i<min_price.length;i++){
                    total+=$(min_price[i]).html()*1;
                }
                $('.all_total').html(total);
                for(var i=0;i<$car_qty;i++){
                    idArr.push(car_id);
                }  
                var idAll = idArr.join(',');
                var idAll=idArr.join(',')
                $(this).prev('.car_qty').text($car_qty)
                $.ajax({
                    url:'../api/cart.php',
                    data:{
                        username:$userName,
                        id:idAll,
                        type:'jia'
                    },
                    type:'get',
                    success:function(res){
                        
                    }
                })
            })
                
        }
        /*-----------得到产品数量---------------*/
        function getQty(arr){
            for(var i = 0;i < arr.length;i++){
                for(var j = i+1;j < arr.length;j++){
                    if(arr[i].id == arr[j].id){
                        arr[i].qty++;
                        arr.splice(j,1);
                        getQty(arr);
                    }
                }
            }
            return arr;
        }  
    })

})