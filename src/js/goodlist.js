require(['config'],function(){
    require(['jquery'],function(){
        //common.js加载完成后执行这里的代码
        //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 
        var $list_crc = $('.list_crc');
        $.ajax({
            url:'http://localhost:1811/api/goods.php',
            type:'get',
            success:function(data){
                    var res = JSON.parse(data);
                    $list_crc.html(res.map(function(item){
                        return `<li data-id="${item.id}">
                                    <img src="${item.imgUrl}">
                                    <p><a href="">${item.details}</a></p>
                                    <p><span>￥${item.price}</span><span>￥${item.salePrice}</span></p>
                                    <p>销量：<span>${item.saleQty}</span></p>
                                </li>`

                    }).join(''))
            }
        })
        $list_crc.on('click','li',function(){
            var $good_id = $(this).attr('data-id');
            location.href='../html/details.html?id='+$good_id;
            sessionStorage.setItem('id', $good_id);
           
        })

    })

})

