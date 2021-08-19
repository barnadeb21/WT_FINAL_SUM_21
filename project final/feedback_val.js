var hasError=false;

function get(id){
    return document.getElementById(id);
}

function rd_btn(){
    var ex=document.querySelector('input[name="exp"]:checked');
    var rs=document.querySelector('input[name="res"]:checked');
    var sp=document.querySelector('input[name="sup"]:checked');
    var ov=document.querySelector('input[name="ovs"]:checked');
    if(ex==null){
        return false;
    }
    else if(rs==null){
        return false;
    }
    else if(sp==null){
        return false;
    }
    else if(ov==null){
        return false;
    }
    return true;
}

function validate(){
    refresh();
    if(get("Your_Name").value == ""){
        hasError = true;
        get("err_name").innerHTML = "**Name Required";
    }

    if(get("Email").value == ""){
        hasError = true;
        get("err_email").innerHTML = "**Email Required";
    }
    
    if(get("Review").value == ""){
        hasError = true;
        get("err_review").innerHTML = "**Review Required";
    }

    if(!rd_btn()){
        hasError=true;
        get("err_exp").innerHTML = "**Select One";
        get("err_res").innerHTML = "**Select One";
        get("err_sup").innerHTML = "**Select One";
        get("err_ovs").innerHTML = "**Select One";
    }
    return !hasError;
}


    function refresh(){
        hasError=false;
        get("err_name").innerHTML ="";
        get("err_email").innerHTML = "";
        get("err_review").innerHTML = "";
        get("err_exp").innerHTML = "";

        get("err_res").innerHTML = "";
        get("err_sup").innerHTML = "";
        get("err_ovs").innerHTML = "";
    }