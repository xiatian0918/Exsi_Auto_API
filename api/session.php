<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

curl_setopt($ch, CURLOPT_URL, "https://192.168.0.24/rest/com/vmware/cis/session");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_USERPWD, 'administrator@vsphere.local' . ":" . 'Toprs!@#123');

$out = json_decode(curl_exec($ch));
// var_dump($out);
if ($out === false) {
  echo 'Curl Error: ' . curl_error($ch);
  exit;
}
$sid = $out->value;

#echo $sid

curl_setopt($ch, CURLOPT_HTTPHEADER, array("vmware-api-session-id:$sid"));
curl_setopt($ch, CURLOPT_POST, 0);
curl_setopt($ch, CURLOPT_URL, "https://192.168.0.24/rest/vcenter/vm");

$output = curl_exec($ch);
#$vms = json_decode($output);
#var_dump($vms);

curl_close($ch);
echo "$sid\n";
?>
