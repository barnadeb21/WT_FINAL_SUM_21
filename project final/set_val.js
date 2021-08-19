var hasError=false;

function get(id){
    return document.getElementById(id);
}

function rd_btn(){
    var ac=document.querySelector('input[name="status"]:checked');
    if(ac==null){
        return false;
    }
    return true;
}
function validate(){
    refresh();

    if(get("theme").selectedIndex == 0){
        hasError = true;
        get("err_theme").innerHTML = "**Theme Required";
    }

    if(get("language").selectedIndex == 0){
        hasError = true;
        get("err_lan").innerHTML = "**Language Required";
    }

    if(get("zoom").selectedIndex == 0){
        hasError = true;
        get("err_zoom").innerHTML = "**Zoom Required";
    }

    if(!rd_btn()){
        hasError=true;
        get("err_status").innerHTML = "**Select One";
    }
    return !hasError;
}

function refresh(){
    hasError=false;
    get("err_status").innerHTML ="";
    get("err_theme").innerHTML = "";
    get("err_lan").innerHTML = "";
    get("err_zoom").innerHTML = "";
}