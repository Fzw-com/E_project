jQuery(function($){
    //插入头部
    $('#E_header').load('../html/header.html'); 
    //插入尾部
    $('#E_footer').load('../html/footer.html'); 
    //轮播图
    console.log($('#E_carousel'))
    console.log($('#E_footer'))
    $('#E_carousel').lxCarousel({

        imgs:['../img/Carousel/1.jpg','../img/Carousel/2.jpg','../img/Carousel/3.jpg','../img/Carousel/4.jpg','../img/Carousel/5.jpg','../img/Carousel/6.png'],
        width:'760',
        height:'351',
        page:true,
        type:'fade'
        // buttons:true
        //type:'seamless'
        //index:4

    })
    $('#E_carousel').css({
       'margin':'auto'
    })
    /*------------活动------------------------*/
    /*------------------tab切换------------*/
    // var $tab = $('.tab');
    // var $tabItem = $tab.find('header div');
    // var $tabContent = $tab.find('.content div');


    // // 隐藏除第一个以外的图片
    // $tabContent.slice(1).hide();
    // // 默认第一个高亮
    // $tabItem.first().addClass('active');


    // $tab.on('mouseover','header > div',function(){
    //     // 获取当前tab
    //     // 添加高亮，出去其他高亮
    //     $(this).addClass('active').siblings().removeClass('active');

    //     // 获取当前索引值
    //     var idx = $(this).index();console.log(idx)

    //     // 切换当前图片
    //     // $tabContent.eq(idx).show(1000).siblings().hide(600);

    //     // 动画
    //     // 滑动
    //     $tabContent.eq(idx).slideDown().siblings().slideUp()
    // });

})