<?php
$directory = '/home/mikes/box.com/Backups/UniqueRomania/';
$scanned_directory = array_diff(scandir($directory), array('..', '.'));
//print_r($scanned_directory);

$time = time();
$time_now = date('Y-m-d', $time);
$time_file = date('Y-m-d', strtotime('- 2 weeks'));
//echo $time_file;

foreach($scanned_directory as $arhiva)
{
    if($arhiva <= $time_file)
    {
        //echo $directory.$arhiva."\n";
        system("sudo rm -rf ".$directory.$arhiva);
    }
}