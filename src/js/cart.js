require(['config'],function(){
    require(['jquery','header'],function(){
          //插入头部
        $('#E_header').load('../html/header.html'); 
        //插入尾部
        $('#E_footer').load('../html/footer.html'); 
        /*===========================*/
    })
})