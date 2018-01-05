// 设置别名
require.config({
    // 默认data-main文件所在的目录
    // baseUrl:'js',

    // 别名/虚拟路径
    paths:{
        'jquery':'../lib/jquery-3.2.1.min',
        'bootstrapJs':'../lib/bootstrap-3.3.7-dist/js/bootstrap.min',
        'fzwCarousel':'../lib/jquery-lxCarousel/jquery.lxCarousel',
        'gdsZoom':'../lib/jquery-gdsZoom/jquery.gdsZoom'

    },
    shim:{
        // 设置依赖
        fzwCarousel:['jquery'],
        bootstrapJs:['jquery'],
        gdsZoom:['jquery'],
        header:['jquery'],
        footer:['jquery']
    }

});