require(['config'],function(){
    require(['jquery'],function(){
        //common.js加载完成后执行这里的代码
        //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 

        /*----获取id-------------*/
        var id = window.sessionStorage.getItem('id');
        console.log(id);
        $.ajax({
            url:"http://localhost:1811/api/goods.php",
            data:{'id':id},
            type:'get',
            success:function(res){
                var res = JSON.parse(res);
                console.log(res)
                res.map(function(item){
                    $('.E_details_cl').html(`<img src="${item.imgUrl}"/>`);
                    $('.E_details_cr').html(`
                        <h2>${item.details}</h2>
                        <div>
                            <p>市场价：<span>￥${item.price}</span></p>
                            <p>E宠价：<span>￥${item.salePrice}</span></p>
                        </div>
                        <p>正在促销：<a>清仓</a>    <a>此款有7.5折商品</a>
                            <a>正在清仓点击参与››</a>
                        </p>
                        <p>已售：<span>${item.saleQty}袋</span></p>
                        <p>我要买:<span class="details_sub">-</span><span class="details_qty">2</span><span class="details_add">+</span>袋</p>
                        <p>送货至:<span>重庆</span></p>

                        <p>E宠快递15点前下单，其他快递16点前下单，当天发货。 <a>运费详情>></a>
                        </p>
                        <p><button>加入购物车</button><a><i></i>咨询</a></p>

                    `)
                })
            }
        })

    })
})