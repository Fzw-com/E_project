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

})