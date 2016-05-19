<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$conn = new mysqli("127.0.0.1", "root", "", "dd");
$result = $conn->query("SELECT question FROM question;");
$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
if ($outp != "[") {$outp .= ",";}
$outp .= '{"question":"' . $rs["question"] . '"}';
}
$outp .="]";
$conn->close();
echo($outp);
?>