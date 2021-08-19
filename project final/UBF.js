var hasError=false;

function get(id){
    return document.getElementById(id);
}

function validate(){
    refresh();
    if(get("User Id").value == ""){
        hasError = true;
        get("err_id").innerHTML = "**ID Required";
    }

    if(get("Banned For Days").value == ""){
        hasError = true;
        get("err_bfd").innerHTML = "**Required";
    }
    
    if(get("Your Messsage").value == ""){
        hasError = true;
        get("err_msg").innerHTML = "**Required";
    }

    if(get("Post Id").value == ""){
        hasError = true;
        get("err_pid").innerHTML = "**Required";
    }

    
    return !hasError;
}

function refresh(){
    hasError=false;
    get("err_id").innerHTML ="";
    get("err_bfd").innerHTML = "";
    get("err_msg").innerHTML = "";
    get("err_pid").innerHTML = "";
}