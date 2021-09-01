<?php
$dsn = "mysql:host=localhost;dbname=TA20210003_DB";
$user = "TA2021003_user";
$passwd = "Kukk4Ruukku-1";

$pdo = new PDO($dsn, $user, $passwd);

$data =  json_decode(file_get_contents("testilaitteet_pieni.json"), true);

//vie suurimman osan tiedoista tietokantaan poislukien, akku, pci, usb, mac, muisti, ja xrandr komennot joille on tehty tietokannat mutta aika loppui

foreach ($data as $device) {
    $sql = "INSERT INTO laitteet (school, hostname, type, timestamp, image, release1, kernel_version, kernel_args, manufacturer, product, serial, mainboard_serial, bios_vendor, bios_version, bios_release_date, cpu, cpu_count, memory_mib, hdd_model, hdd_size_bytes, hdd_is_ssd, wifi_adapter, purchase_date, purchase_location, warranty_ends, personally_administered, xrandr_output, automatic_shutdown)
    VALUES ('$device[school]', '$device[hostname]', '$device[type]', '$device[timestamp]', '$device[image]', '$device[release]', '$device[kernel_version]', '$device[kernel_args]', '$device[manufacturer]', '$device[product]', '$device[serial]', '$device[mainboard_serial]', '$device[bios_vendor]', '$device[bios_version]', '$device[bios_release_date]', '$device[cpu]', '$device[cpu_count]', '$device[memory_mib]', '$device[hdd_model]', '$device[hdd_size_bytes]', '$device[hdd_is_ssd]', '$device[wifi_adapter]', '$device[purchase_date]', '$device[purchase_location]', '$device[warranty_ends]', '$device[personally_administered]', '$device[xrandr_output]', '$device[automatic_shutdown]');";
    $pdo->exec($sql);
}

include("laitelista.html");
