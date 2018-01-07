require(['config'],function(){
    require(['jquery','header','fzwCarousel'],function(){
        
            //插入头部
            $('#E_header').load('../html/header.html'); 
            //插入尾部
            $('#E_footer').load('../html/footer.html'); 
            //轮播图
            var background_Color=['#FE5433','#045F60','#EEEEEE','#FFEB04','#EF363B','#509D39'];
            $('#E_carousel').lxCarousel({

                imgs:['../img/Carousel/1.jpg','../img/Carousel/2.jpg','../img/Carousel/3.jpg','../img/Carousel/4.jpg','../img/Carousel/5.jpg','../img/Carousel/6.png'],
                width:'100%',
                height:'360',
                page:true,
                type:'fade'

            })
            var curront_li=$('#E_carousel').find('li');
            for(var i=0;i<curront_li.length;i++){
                $(curront_li[i]).css({"background-color":background_Color[i]})
            }

            $('#E_carousel img').css({
                'margin':'auto'
            })
        
       /*--------------活动倒计时--------------------*/
    
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
            // 获取时分秒
            var hour = now.getHours();
            var min1 = now.getMinutes();
            var sec1 = now.getSeconds();
            var allsec= min1*60+sec1;
            var min = Math.floor((3600-allsec)/60);
            var sec =(3600-allsec)%60;
            if(hour<10){
                hour = '0' + hour +':00';
               
            }else{
                // $('.time').html(`${hour}:00`);
                hour = hour +':00';
            }
            $('.time').html(hour);
            if($('.time').html()<hour){
               $('.active_time').text('活动已结束')
            }else{
                $('.active_time').text('进行中')
            }
            // 替换对应图片
            
            h1.src = "../img/time/0.png";
            h2.src = '../img/time/0.png';

            m1.src = '../img/time/'+ (min/10<0 ? 0 : Math.floor(min/10)) +'.png';
            m2.src = '../img/time/'+ (min%10) +'.png';

            s1.src = '../img/time/'+ (sec/10<0 ? 0 : Math.floor(sec/10)) +'.png';
            s2.src = '../img/time/'+ (sec%10) +'.png';
        }

        /*--------活动栏右边--------------*/
        var HourAll = ['00:00','01:00','02:00','03:00','04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00']
        var $active_ul;
        $('.E_activity_r header').html(HourAll.map(function(item){
            $active_ul=$('<ul/>').addClass('active_ul').appendTo($('.active_content'));
            return `<div>${item}</div>`
        }).join(''));

        var $now_hour = $('.time').html();
        var $headerDiv = $('.E_activity_r header div');
     
        $('.E_activity_r header').css({
            'width':$headerDiv.first().outerWidth(true)*$headerDiv.length
        })
        var $tab_tHeader=$('.tab_t header');
      
        /*--------------活动tab切换----------*/
        
       
        var $tab = $('.E_activity_r .tab');
        console.log($tab)
        for(let i=0;i<$tab.length;i++){

            (function(i){
                var $tabItem = $($tab[i]).find('header div');
                var $tabContent =$($tab[i]).find('.active_content>ul');
                var time = $('.time').text();
                for(let ii = 0;ii<HourAll.length;ii++){
                    if(HourAll[ii]==time){
                        active_ajax(ii,time);
                        $tabContent.eq(ii).show().siblings().hide();
                        $tabItem.eq(ii).addClass('active');
                        if(ii>=16){  
                            $tab_tHeader.css({
                                left:-$headerDiv.first().outerWidth()*16
                            })
                        }else{
                            $tab_tHeader.css({
                                left:-$headerDiv.first().outerWidth()*ii+1
                            })
                        }
                        /*----点击------------*/
                        $('.left_btn').on('click',function(){
                            ii--;
                            console.log(ii)
                            if(ii>16){
                                ii=15;  
                                $tab_tHeader.animate({
                                    left:-$headerDiv.first().outerWidth()*ii
                                },500)
                            }else if(ii<=0){
                                ii=0;
                                $tab_tHeader.animate({
                                    left:0
                                },500)

                            }else{
                                $tab_tHeader.animate({
                                    left:-$headerDiv.first().outerWidth()*ii
                                },500)
                            }
                        })

                        $('.right_btn').on('click',function(){
                            ii++;
                            if(ii>=16){  
                                $tab_tHeader.animate({
                                    left:-$headerDiv.first().outerWidth()*16
                                },500)
                            }else if(ii<0){
                                
                                $tab_tHeader.animate({
                                    left:0
                                },500)
                                ii=0
                            }else{
                                $tab_tHeader.animate({
                                    left:-$headerDiv.first().outerWidth()*ii
                                },500)
                                
                            }
                        })   
                    }
                }
                function active_ajax(idx,type_time){
                    $.ajax({
                        url:'http://localhost:1811/api/goods.php',
                        type:'get',
                        data:{
                                updatetime:type_time
                            },
                        success:function(res){
                            var res = JSON.parse(res);
                            $($tabContent[idx]).html(res.data.map(function(item){
                                // console.log(item)
                                return `<li data-id="${item.id}">
                                            <img src="${item.imgUrl}"/>
                                            <p>${item.details}</p>
                                        </li>`
                            }).join(''));
                    
                        }
                    })      
                }
                $('.tab_t header').on('mouseover','div',function(){
                    console.log(99)
                    // 获取当前tab
                    // 添加高亮，出去其他高亮
                    var $updatetime = $(this).html();
                   
                    $(this).addClass('active').siblings().removeClass('active');

                    // 获取当前索引值
                    var idx = $(this).index();

                    // 切换当前图片
                    $tabContent.eq(idx).fadeIn(300).siblings().fadeOut(300);
                    active_ajax(idx,$updatetime);
       
                });     
            })(i)
        }  
        $('.active_content').on('click','li',function(){
            
            var $good_id = $(this).attr('data-id');
            sessionStorage.setItem('id', $good_id);
            location.href='../html/details.html?id='+$good_id;
           
        }) 
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
