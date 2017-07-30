<?php 
if(isset($_POST['file'])){
    $file = '../../Uploads/Map/' . $_POST['file'];
    if(file_exists($file)){
        unlink($file);
    }
}
?>