require(['config'],function(){
    require(['jquery'],function(){
        //common.js加载完成后执行这里的代码
        var $two_a = $($('.header_bla')[1]);
        $two_a.on('mouseover',function(){
            $('.header_bl1').css({
                'display':'block'
            })
        })
        $two_a.on('mouseout',function(){
            $('.header_bl1').css({
                'display':'none'
            })
        })
    })
})

