require(['config'],function(){
    require(['jquery','header'],function(){
        //common.js加载完成后执行这里的代码
        //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 
        var pageNo = 1;
        var qty = 10;
        /*------点击排序-------------*/
        
        var first_p = $('.list_crt1').children()[0];
        var status = true;
        $(first_p).on('click','span',function(){
            $(this).css({'background':'#53aa5b','color':'#fff'}).siblings('span').css({'background':'#fff','color':'#ccc'})
            status=!status;
            $(this).children().toggleClass('.glyphicon glyphicon-arrow-down .glyphicon glyphicon-arrow-up')
            pageNo=1;
            var $cent = $(this).text();
            
            list_ajax(pageNo,qty,status);


        })
        var $list_crc = $('.list_crc');
        list_ajax(pageNo,qty,status);
        function list_ajax(pageNo,qty,ss){
            $.ajax({
                url:'../api/goods.php',
                type:'get',
                data:{
                    pageNo:pageNo,
                    qty:qty,
                    status:ss
                },
                success:function(res){
                    var res = JSON.parse(res);
                    console.log(res)
                    $list_crc.html(res.data.map(function(item){
                        return `<li data-id="${item.id}">
                                    <img src="${item.imgUrl}">
                                    <p><a href="">${item.details}</a></p>
                                    <p><span>￥${item.price}</span><span>￥${item.salePrice}</span></p>
                                    <p>销量：<span>${item.saleQty}</span></p>
                                </li>`
                    }).join(''))
                    // 处理分页
                    $('.list_cb').html('');
                    var pageQty = Math.ceil(res.total/res.qty);
                    for(var i=1;i<=pageQty;i++){
                        var $span = $('<span/>');
                        $span.html(i);

                        if(i === pageNo){
                            $span.addClass('active');
                        }
                        $('.list_cb').append($span);
                    }
                    
                }
            })
        }
        $('.list_cb').on('click','span',function(){
            pageNo = $(this).html()*1;
            list_ajax(pageNo,qty,status);

        })
        $list_crc.on('click','li',function(){
            var $good_id = $(this).attr('data-id');
            sessionStorage.setItem('id', $good_id);
            location.href='../html/details.html?id='+$good_id;
           
           
        })

    })

})

