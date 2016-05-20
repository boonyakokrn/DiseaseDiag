<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$conn = new mysqli("127.0.0.1", "root", "", "dd");
$result = $conn->query("SELECT d.disName, d.disDesc, c.cureDesc, c.suggest
FROM disease d, listDis ld, listSes ls, cure c, listCure lc
WHERE d.disID = ld.disID
AND c.cureID = lc.cureID
AND lc.disID = d.disID
AND ls.qID = ld.qID
AND ls.ansID = ld.ansID
AND ls.sesID = (SELECT MAX(sesID) FROM listSes)
AND c.cureID = lc.cureID
GROUP BY ld.disID
HAVING COUNT(ld.disID) = 5;");
$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
if ($outp != "[") {$outp .= ",";}
$outp .= '{"disName":"' . $rs["disName"] . '",';
$outp .= '"disDesc":"' . $rs["disDesc"] . '",';
$outp .= '"cureDesc":"' . $rs["cureDesc"] . '",';
$outp .= '"suggest":"' . $rs["suggest"] . '"}';
}
$outp .="]";
$conn->close();
echo($outp);
?>