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
            $('.f_carousel').css({
                   'margin':'auto'

            })
            $('#E_carousel').css({
                'height':'351'
            })
            /*----背景颜色----------*/
            setInterval(function(){
                var ii = $('#E_carousel').find('span');
                // var img =  $('#E_carousel').find('img')  
                
                for(var i = 0;i<ii.length;i++){
                    if($(ii[i]).attr('class')=='active'){
                        //console.log($('#E_carousel'))
                        $('#E_carousel').css({
                                'background-color':background_Color[i]
                        }).fadeIn(900000)
                    }                             
                }
            }, 300)          
           
            /*------------活动------------------------*/
            // var $ss = $('.ss');
            // var $min = $('.min');
            // var timer;
            // shijian();
            // function shijian(){
            //     var myDate = new Date();
            //     var hours = myDate.getHours()
            //     $('.time').html(hours);
               
            //     $min.html('');
            //     $ss.html('');
            //     timer =setInterval(function(){
                   
            //         var ss = 59-myDate.getSeconds();   
            //         var min = 59-myDate.getMinutes();
            //         $min.html(min);
            //         $ss.html(ss);
            //     },1000)
                
            // };
            // setInterval(shijian, 1000);
        
        /*
            数码时钟
            1）各用两张图片表示时、分、秒
            2）每隔1秒获取当前时间并替换对应图片
        */
    
        // 获取页面元素
        var h1 = $('#h1')[0];
        var h2 = $('#h2')[0];
        var m1 = $('#m1')[0];
        var m2 = $('#m2')[0];
        var s1 = $('#s1')[0];
        var s2 = $('#s2')[0];

        
        showTime();


        // 2）每隔1秒获取当前时间并替换对应图片
        setInterval(showTime,1000);

        function showTime(){
            var now = new Date();
            console.log(now)
            // 获取时分秒
            var hour = now.getHours();
            var min = now.getMinutes();
            console.log(min)
            var sec = now.getSeconds();
            console.log()
            // 替换对应图片
            
            h1.src = "../img/time/0.png";
            h2.src = '../img/time/0.png';

            m1.src = '../img/time/'+ (min/10<0 ? 0 : Math.floor(6-min/10)) +'.png';
            m2.src = '../img/time/'+ (9-min%10) +'.png';

            s1.src = '../img/time/'+ (5-sec/10<0 ? 0 : Math.floor(6-sec/10)) +'.png';
            s2.src = '../img/time/'+ (9-sec%10) +'.png';

        }

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
