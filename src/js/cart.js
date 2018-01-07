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
                var res = JSON.parse(res);

                res.forEach((item)=>{
                    item.qty = 1;
                })
                getQty(res);
                //创建tabel标签
                var $total=0;
                var $min_total;
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
            }
        })
        var $car_qty = $('.car_qty').text();
        // $('.car_sl').on('click','.jian',function(){
        //     $car_qty--;
        //     $('.car_qty').text($car_qty);
        // })
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