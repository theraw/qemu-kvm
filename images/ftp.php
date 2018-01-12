<?php
header("Content-Type: application/json; charset=UTF-8");
$repo = "https://dope.al/";
$json_array = array(
// ========================================================================================================
// ////////////////////////////////////////////////////////////////////////////////////////////////////////
// ========================================================================================================
    'UBUNTU' => array(
             '12.04' => "ftp://ftp.ubuntu.com/ubuntu/dists/precise/main/installer-amd64/",
             '14.04' => "ftp://ftp.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/",
             '16.04' => "ftp://ftp.ubuntu.com/ubuntu/dists/xenial/main/installer-amd64/",
             '16.10' => "ftp://ftp.ubuntu.com/ubuntu/dists/yakkety/main/installer-amd64/",
             '17.04' => "ftp://ftp.ubuntu.com/ubuntu/dists/zesty/main/installer-amd64/",
             '17.10' => "ftp://ftp.ubuntu.com/ubuntu/dists/artful/main/installer-amd64/",
             '18.04' => "ftp://ftp.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/"
    ),
    'DEBIAN' => array(
             '7' => "http://ftp.debian.org/debian/dists/wheezy/main/installer-amd64/",
             '8' => "http://ftp.debian.org/debian/dists/jessie/main/installer-amd64/",
             '9' => "http://ftp.debian.org/debian/dists/Debian9.3/main/installer-amd64/"
    ),
    'DEBIAN' => array(
             '6' => "http://mirror.centos.org/centos/6/os/x86_64/",
             '7' => "http://mirror.centos.org/centos/7/os/x86_64/"
    ),
    'SUSE' => array(
             '0' => "http://download.opensuse.org/distribution/openSUSE-stable/repo/oss/"
    ),
// ========================================================================================================
// ////////////////////////////////////////////////////////////////////////////////////////////////////////
// ========================================================================================================
);
$images = json_encode($json_array);
echo $images;
// debug mode to view arrays => 'print_r($images);' or 'var_dump($images);' .
?>
