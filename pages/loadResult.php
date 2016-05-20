<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$conn = new mysqli("127.0.0.1", "root", "", "dd");
$result = $conn->query("SELECT disease.disName, disease.disDesc , cure.cureDesc
FROM cure, listCure, disease
WHERE listCure.disID = (
						SELECT d.disID
						FROM disease d, listDis ld, listSes ls
						WHERE d.disID = ld.disID
						AND ls.qID = ld.qID
						AND ls.ansID = ld.ansID
						AND ls.sesID = (SELECT MAX(sesID) FROM session)
						GROUP BY ld.disID
						HAVING COUNT(ld.disID) = 5
						)
AND cure.cureID = listcure.cureID
AND disease.disID = listcure.disID
;");
$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
if ($outp != "[") {$outp .= ",";}
$outp .= '{"disName":"' . $rs["disName"] . '",';
$outp .= '"disDesc":"' . $rs["disDesc"] . '",';
$outp .= '"cureDesc":"' . $rs["cureDesc"] . '"}';
}
$outp .="]";
$conn->close();
echo($outp);
?>