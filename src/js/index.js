require(['config'],function(){
    require(['jquery','header','fzwCarousel'],function(){
        
            //插入头部
            $('#E_header').load('../html/header.html'); 
            //插入尾部
            $('#E_footer').load('../html/footer.html'); 
            //轮播图
            var background_Color=['#FE5433','#045F60','#EEEEEE','#FFEB04','#EF363B','#509D39'];
            $('.f_carousel').lxCarousel({

                imgs:['../img/Carousel/1.jpg','../img/Carousel/2.jpg','../img/Carousel/3.jpg','../img/Carousel/4.jpg','../img/Carousel/5.jpg','../img/Carousel/6.png'],
                width:'760',
                height:'351',
                page:true,
                type:'fade'

            })
            /*----背景颜色----------*/
                // $('.f_carousel').css({
                //    'margin':'auto'

                // })
               
                // for(var i = 0; i<background_Color.length;i++){

                // }
                setInterval(function(){
                    var ii = $('#E_carousel').find('span');
                    // var img =  $('#E_carousel').find('img')  
                    
                    for(var i = 0;i<ii.length;i++){
                       if($(ii[i]).attr('class')=='active'){
                           /* console.log($('#E_carousel'))*/
                            var attr = 'opacity';
                            var property = {}
                            property[attr] = 0.2;
                            $('#E_carousel').animate({
                              
                                property,
                               'background-color':background_Color[i]

                            },3000)
                       }
                                             
                    }
                }, 3000)
             
               
                // $('#E_carousel').on('mouseover','img',function(){
                //     var ind = ($(this).parent().index());
                //     console.log(ind)
                //      $('#E_carousel').css({
                //         'height':'351'
                //      })
                //     $('#E_carousel').animate({
                //         'background-color':background_Color[ind]

                //     })
                //     console.log(background_Color[ind])
                // })
                $('.f_carousel').css({
                   'margin':'auto'

                })
            
           
            /*------------活动------------------------*/
            /*------------------tab切换------------*/
            var $tab = $('.E_mainr .tab');
            for(let i=0;i<$tab.length;i++){

                (function(i){

                    var $tabItem = $($tab[i]).find('header div');
                    var $tabContent =$($tab[i]).find('.content>div');

                    // 隐藏除第一个以外的图片
                    $tabContent.slice(1).hide();
                    // 默认第一个高亮
                    $tabItem.first().addClass('active');


                    $($tab[i]).on('mouseover','header > div',function(){
                        // 获取当前tab
                        // 添加高亮，出去其他高亮
                        
                        $(this).addClass('active').siblings().removeClass('active');

                        // 获取当前索引值
                        var idx = $(this).index();

                        // 切换当前图片
                        $tabContent.eq(idx).show().siblings().hide();

                        // 动画
                        // 滑动
                        // $tabContent.eq(idx).slideDown().siblings().slideUp()
                    });     
                })(i)
            }   
    })
})
