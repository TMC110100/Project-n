<base href="localhost">
<?php

include "./PHPMailer/src/PHPMailer.php";
include "./PHPMailer/src/Exception.php";
include "./PHPMailer/src/OAuth.php";
include "./PHPMailer/src/POP3.php";
include "./PHPMailer/src/SMTP.php";
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

    $email=$data["email"];//$_POST["email"];
    $token=$data["token"];//$_POST["token"];
    $username=$data["username"];
    $name=$data["firstname"];
    $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
    try {
        //Server settings
        $mail->SMTPDebug = 0;                                 // Enable verbose debug output
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'mail.cuongtm-it.tech';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = 'info@cuongtm-it.tech';                 // SMTP username
        $mail->Password = 'Cuong@110100';                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587;                                    // TCP port to connect to
    
        //Recipients
        $mail->setFrom('info@cuongtm-it.tech', 'TMC');
        $mail->addAddress($email);               // Name is optional
        // $mail->addCC('cuongtm.it@gmail.com');
        //$mail->addReplyTo('tmc110100@gmail.com', 'Information');
        
        
    
        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    
        //Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = "Verify your email address";//$title;
        $mail->Body    ='<div style="background-color:#e4e4e4;font-family:Verdana,sans-serif;margin:0;padding:0;width:100%" bgcolor="#e4e4e4" width="100%">
  <table id="m_3359635443091308996backgroundTable" cellpadding="10" cellspacing="0" border="0" style="background-color:#e4e4e4;line-height:100%;margin:0;padding:0;table-layout:fixed;width:100%" bgcolor="#e4e4e4" width="100%">
      <tbody>
        <tr>
          <td id="m_3359635443091308996bodyPadding" align="center" style="padding-left:0;padding-right:0;border-collapse:collapse">
            <table id="m_3359635443091308996bodyTable" cellpadding="0" cellspacing="0" border="0" width="100%" style="background:#fff;max-width:600px;width:100%">
              <tbody>
                <tr>
                  <td style="width:30px" width="30">&nbsp;
                  </td>

                  <td>
                    <p style="color:black;font-family:Verdana,sans-serif;font-size:12px;line-height:20px;text-align:left;margin:1em 0" align="left"> Hi '.$name.',</p>
                    <p style="color:black;font-family:Verdana,sans-serif;font-size:12px;line-height:20px;text-align:left;margin:1em 0" align="left">
                      Welcome to TMC! To get full access to your account, please verify your email address by clicking the button below.
                    </p>
                  </td>

                  <td style="width:30px" width="30">&nbsp;
                  </td>
                </tr>

                <tr>
                  <td style="width:30px" width="30">&nbsp;
                  </td>

                  <td style="height:60px;vertical-align:middle" height="60" valign="middle">
                    <table cellspacing="0" cellpadding="0" align="center">
                      <tbody>
                        <tr>
                          <td style="color:#fff;font-family:verdana,sans-serif;font-size:20px;background-color:#288cf4;display:block;height:35px;text-align:center;text-transform:uppercase;width:150px" bgcolor="#288cf4" height="35" align="center" width="150">
                            <a href="localhostVerification?token='.$token.'&un='.$username.'" style="color:#fff;display:inline-block;font-family:verdana,sans-serif;font-size:14px;line-height:35px;text-decoration:none;width:100%" width="100%" target="_blank"><span>Verify Email</span></a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>

                  <td style="width:30px" width="30">&nbsp;
                  </td>
                </tr>

                <tr>
                  <td style="width:30px" width="30">&nbsp;
                  </td>

                  <td style="width:30px" width="30">&nbsp;
                  </td>
                </tr>

                <tr>
                  <td style="width:30px" width="30">&nbsp;
                  </td>
                <td>
          <p style="color:black;font-family:Verdana,sans-serif;font-size:12px;line-height:20px;text-align:left;margin:1em 0" align="left"> Many thanks, </p>
          <p style="color:black;font-family:Verdana,sans-serif;font-size:12px;line-height:20px;text-align:left;margin:1em 0" align="left"> The TMC team </p>
      </td>
    </tbody>
  </table>
</div>';
        // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
        if($mail->send()){
            echo '<script language="javascript">';
            echo 'alert("Đã send email xác nhận tài khoản tời email: '.$email.'")';
            echo '</script>';

            echo '<script language="Javascript">';
            echo 'window.location="localhostHome"';
            echo '</script>';
        }
    } catch (Exception $e) {
        echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
    }


?>
