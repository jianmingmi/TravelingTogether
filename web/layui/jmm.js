/**
 * author:jmm
 * date:2017/4/9 14:01
 * e-mail:jianmingmi@foxmail.com
 */
function changeCurContent(url) {
    window.location.href = url;
}

function changeMainContent(url) {
    top.document.getElementById("main_content").src = url;
}

function changeTopContent(url) {
    top.window.location.href = url;
}