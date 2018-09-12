var tab;
layui.config({
    base:'../js/'
    }).use(['jquery','bodyTab','element'],function(){
    var $ = layui.jquery;
        tab = layui.bodyTab();

    //添加窗口
    $("body").on("click",".layui-nav-tree .layui-nav-item a",function(){
        if($(this).attr("data-url")){
            //如果不存在子级
            if($(this).siblings().length == 0){
                addTab($(this));
            }
        }
        $(this).parent("li").siblings().removeClass("layui-nav-itemed");
    })
});
function addTab(_this){
    tab.add(_this);
}