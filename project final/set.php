<?php 
$theme="";
$language="";
$zoom="";
$status="";




if(isset($_POST["submit"]))
{
$theme=$_POST["theme"];


$language=$_POST["language"];


$zoom=$_POST["zoom"];


$status=$_POST["status"];



echo "Theme : " . $theme . "<br>";
echo "Language : " . $language . "<br>";
echo "Zoom Level : " . $zoom . "<br>";

echo "Active Status : " . $status . "<br>";
}




?>





<!DOCTYPE html>
<html lang="en">
<head></head>
<script src="set_val.js"></script>
<body>
    <form action="" onsubmit="return validate()" method="post">
    <h1>Set Table</h1>

  
    <table>

        <td>Select A Theme </td>
            <td>
                <select id="theme" name="theme">
                    <option selected disabled> Choose one</option>
                    <option value="Light" <?php if($theme == "Light") {echo "selected";} ?>>Light</option>
                    <option value="Dark" <?php if($theme == "Dark") {echo "selected";} ?>>Dark</option>
                    <span id="err_theme"></span>
                </select>
            </td>
            <tr>
            <td> Language</td>
            <td>
                <select id="language" name="language">
                    <option selected disabled> Choose one</option>
                    <option value="English" <?php if($language == "English") {echo "selected";} ?>>English</option>
                    <option value="Bangla" <?php if($language == "Bangla") {echo "selected";} ?>>Bangla</option>
                    <span id="err_lan"></span>
                </select>
            </td>
        </tr>

        <tr>
            <td>Zoom Lavel</td>
           <td>
                <select id="zoom" name="zoom">

                    <option selected disabled> Choose one</option>
                    <option value="1" <?php if($zoom == "1") {echo "selected";} ?>>1</option>
                    <option value="2" <?php if($zoom == "2") {echo "selected";} ?>>2</option>
                    <span id="err_zoom"></span>
                </select>
            </td> 

        <tr>

            <td>Active Status</td>
            <td>
                
                    
                    <input  type="radio" name="status" value="Active"  <?php if($status == "Active") {echo "checked";} ?>>Active
                    
                    <input type="radio" name="status" value="Offline" <?php if($status == "Offline") {echo "checked";} ?>>Offline
                    <span id="err_status"></span>
            </td>
        </tr>


        



        <tr>
            <td>
            <input type="submit"name="submit">
           </td>
       </tr>


    </table>
</form>



</body>
</html>