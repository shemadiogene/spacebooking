<?php
    $msg = '';
    if (isset($_POST['sendMessage'])) {
        $name = mysqli_real_escape_string($conn,$_POST['cusNames']);
        $phone = mysqli_real_escape_string($conn,$_POST['cusPhone']);
        $email = mysqli_real_escape_string($conn,$_POST['cusEmail']);
        $location = mysqli_real_escape_string($conn,$_POST['cusLocation']);
        $in = mysqli_real_escape_string($conn,$_POST['cusCheckin']);
        $out = mysqli_real_escape_string($conn,$_POST['cusCheckout']);
        $reserveCode = date('Y').$phone.date('d').date('h');
        $offId;
        $comId;
        $times = date("Y-m-d");
        $check = mysqli_query($conn,"SELECT *FROM customers WHERE fullnames = '$name' AND phoneNumber = '$phone' AND email = '$email' AND reserveId = '$reserveCode'") or die(mysqli_error($conn));
        if (mysqli_num_rows($check)>0) {
            $msg="<div class='alert alert-danger alert-dismissible' role='alert'>
                    <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                    <h3>You already reserved this space</h3>
                    </div>";
        }else{
            if (empty($in) && empty($out)) {
                $saveSale = mysqli_query($conn,"INSERT INTO `customers` (`id`, `fullnames`, `phoneNumber`, `email`, `cusLocation`, `checkin`, `checkout`, `reserveStatus`, `offId`, `reserveId`, `companyId`, `resTime`, `approvedAt`)
                 VALUES (NULL, '$name', '$phone', '$email', '$location', '', '', 'Approve', '$offId', '$reserveCode','$comId','$times','')") or die(mysqli_error($conn));


                 $saveNot = mysqli_query($conn,"INSERT INTO `conotification` (`id`, `content`, `notTime`, `status`, `companyId`) VALUES ('', 'New customer booked sales space',NULL, 'unread','$comId')") or die(mysqli_error($conn));
                 
                 if ($saveSale) {
                     sendsms($name, $phone, $reserveCode);

                    $msg="<div class='alert alert-success alert-dismissible' role='alert'>
                    <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                    <h3>Thanks for reserving this space</h3>
                    </div>";
                 }
            }else{
                $saveRent = mysqli_query($conn,"INSERT INTO `customers` (`id`, `fullnames`, `phoneNumber`, `email`, `cusLocation`, `checkin`, `checkout`, `reserveStatus`, `offId`, `reserveId`,`companyId`, `resTime`, `approvedAt`)
                 VALUES (NULL, '$name', '$phone', '$email', '$location', '$in', '$out', 'Approve', '$offId', '$reserveCode','$comId','$times','')") or die(mysqli_error($conn));
                
                

                $saveNot = mysqli_query($conn,"INSERT INTO `conotification` (`id`, `content`, `notTime`, `status`, `companyId`) VALUES ('', 'New customer booked Rent space',NULL, 'unread','$comId')") or die(mysqli_error($conn));
                                
                 if ($saveRent) {
                        sendsms($name, $phone, $reserveCode);
                        $msg="<div class='alert alert-success alert-dismissible' role='alert'>
                        <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                        <h3>Thanks for reserving this space</h3>
                        </div>";
                 }
            }
        }
    }

    function sendsms($names, $phone, $reserveCode){

        $receiver=$phone;
        $sender="+250788890071";
        $mssg="Hello ".$names." Your reservation for an office space has been successfully received and your reservation code is: ".$reserveCode;
        
        $data=array(
                "sender"=>$sender,
                "recipients"=>$receiver,
                "message"=>$mssg,
            );

        $url="https://www.intouchsms.co.rw/api/sendsms/.json";
        $data=http_build_query($data);
        $username="renemucyo";
        $password="mucyo12345";

        $ch=curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_USERPWD,$username.":".$password);
        curl_setopt($ch,CURLOPT_POST,true);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,0);
        curl_setopt($ch,CURLOPT_POSTFIELDS,$data);
        $result=curl_exec($ch);
        $httpcode=curl_getinfo($ch,CURLINFO_HTTP_CODE);
        curl_close($ch);

        }
?>