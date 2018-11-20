<?php
require_once 'phpqrcode/qrlib.php';
$text=urldecode($_GET['t']);
QRcode::png("".$text);
?>