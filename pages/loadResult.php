<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$conn = new mysqli("127.0.0.1", "root", "", "dd");
<<<<<<< HEAD
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
=======
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
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
if ($outp != "[") {$outp .= ",";}
$outp .= '{"disName":"' . $rs["disName"] . '",';
$outp .= '"disDesc":"' . $rs["disDesc"] . '",';
<<<<<<< HEAD
$outp .= '"cureDesc":"' . $rs["cureDesc"] . '"}';
=======
$outp .= '"cureDesc":"' . $rs["cureDesc"] . '",';
$outp .= '"suggest":"' . $rs["suggest"] . '"}';
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
}
$outp .="]";
$conn->close();
echo($outp);
?>