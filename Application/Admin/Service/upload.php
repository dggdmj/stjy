<?php
    include('class.uploader.php');
    $uploader = new Uploader();
    $data = $uploader->upload($_FILES['files'], array(
        'limit' => 10, // 最大上传文件的数量，类型：Number，默认值为:null。
        'maxSize' => 10, // 上传文件的最大尺寸，单位MB。类型：Number，默认值为:null。
        'extensions' => array('jpg','png','gif'), // 可上传的文件的文件扩展名。类型：Array，默认值为:null。
        'required' => false, // 最少需要一个文件上传 {Boolean}
        'uploadDir' => '../../Uploads/Map/', // 上传目录{字符串}
        'title' => array('name'), // 新文件名称{零、字符串数组} * README.md请阅读文档
        'removeFiles' => true, //Enable file exclusion {Boolean(extra for jQuery.filer), String($_POST field name containing json data with file names)}
        'perms' => null, //Uploaded file permisions {null, Number}
        'onCheck' => null, //A callback function name to be called by checking a file for errors (must return an array) | ($file) | Callback
        'onError' => null, //A callback function name to be called if an error occured (must return an array) | ($errors, $file) | Callback
        'onSuccess' => null, //A callback function name to be called if all files were successfully uploaded | ($files, $metas) | Callback
        'onUpload' => null, //A callback function name to be called if all files were successfully uploaded (must return an array) | ($file) | Callback
        'onComplete' => null, //A callback function name to be called when upload is complete | ($file) | Callback
        'onRemove' => 'onFilesRemoveCallback' //A callback function name to be called by removing files (must return an array) | ($removed_files) | Callback
    ));
    
    if($data['isComplete']){
        $files = $data['data'];
        echo json_encode($files);
    }

    if($data['hasErrors']){
        $errors = $data['errors'];
        print_r($errors);
    }
    
    function onFilesRemoveCallback($removed_files){
        foreach($removed_files as $key=>$value){
            $file = '../../Uploads/Map/' . $value;
            if(file_exists($file)){
                unlink($file);
            }
        }
        
        return $removed_files;
    }
?>
