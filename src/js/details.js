require(['config'],function(){
    require(['jquery','header','gdsZoom'],function(){
        //common.js加载完成后执行这里的代码
        //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 

        /*----获取id，生成商品详情页-------------*/
        var id = window.sessionStorage.getItem('id');
        var $userName = window.sessionStorage.getItem('username');
        console.log($userName);
        if(id==null){
            var params = location.search;
            id = params.slice(4);
        }
        $.ajax({
            url:"http://localhost:1811/api/goods.php",
            data:{'id':id},
            type:'get',
            success:function(res){
                var res = JSON.parse(res);
                res.data.map(function(item){

                    $('.E_details_clb').html(`<img src="${item.imgUrl}" data-big="${item.imgUrl}">`);
                    var cc = item.imgUrls.split(',');
                    $('.E_details_clt').html(cc.map(function(iten){
                        return  `<li>
                                    <img src="${iten}">
                                </li>`
                    }).join(''));
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
                        <p class="buy_details" onselectstart="return false;" >我要买:<span class="details_sub">-</span><span class="details_qty">1</span><span class="details_add">+</span>袋</p>
                        <p>送货至:<span>重庆</span></p>

                        <p>E宠快递15点前下单，其他快递16点前下单，当天发货。 <a>运费详情>></a>
                        </p>
                        <p><button class="btn_cart">加入购物车</button><a><i></i>咨询</a></p>
                        `)

                    /*-----------放大镜----------------------------------*/
                    $('.E_details_clb').gdsZoom({
                        width:240,
                        height:240
                    });
                    $('.E_details_clt img').click(function(){
                        $('.E_details_clb img').attr({
                            'src':this.src,
                            'data-big':$(this).attr('data-big') || this.src
                        });
                    })

                    /*------------------点击加减-------------*/
                    var $qty=$('.details_qty').text();
                   
                    $('.buy_details').on('click','.details_add',function(event){
                        event.preventDefault();
                        $qty++;
                        $('.details_qty').html($qty);
                        
                    })
                    $('.buy_details').on('click','.details_sub',function(){
                        $qty--;
                        if($qty<=1){
                           $qty=1; 
                        }
                        $('.details_qty').html($qty);
                    })
                   
                   
                    /*------------------点击加入购物车-------------*/
                        /*----将qty转为id---*/
                   /* console.log($userName);*/
                    var idArr=[];
                    $('.btn_cart').on('click',function(){
                        idArr=[];
    
                        for(var i=0;i<$qty;i++){

                            idArr.push(id);
                        }
                      
                        var idAll=idArr.join(',');
                        
                        $.ajax({
                            url:'../api/cart.php',
                            data:{
                                username:$userName,
                                id:idAll
                            },
                            type:'get',
                            success:function(res){
                                location.href="../html/cart.html"
                            }
                        })
                    })



                })
            }
        })
    })
})