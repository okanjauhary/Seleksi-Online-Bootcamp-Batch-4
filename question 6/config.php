<?php

define('HOST', 'localhost');
define('USER', 'root');
define('PASSWORD', 'root');
define('DATABASE', 'blog');


$conn = mysqli_connect(HOST, USER, PASSWORD, DATABASE) or die("Koneksi gagal bos");
