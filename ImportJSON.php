<html>
<head>

</head>
<body>
<?php
include ('connection.php');

$table_name="table_petrol";


$url="https://raw.githubusercontent.com/younginnovations/internship-challenges/master/programming/petroleum-report/data.json";
$data=file_get_contents($url);
$list=json_decode($data,true);
$i=0;
$year=$petroleum_product=$sale=$country="";

while($i< count($list) )
{

    $list_item=$list[$i];
    $year=$list_item['year'];
    $petroleum_product=$list_item['petroleum_product'];
    $sale=$list_item['sale'];
    $country=$list_item['country'];
//    $columns = implode(", ",array_values($list_item));
//var_dump($columns);


    $insert_query="INSERT INTO $table_name (year,petroleum_product,sale,country)
VALUES ('$year','$petroleum_product','$sale','$country')";
    $result_insert_query=$conn->query($insert_query);
    if($result_insert_query===FALSE)
    {
        echo "error".$conn->error;
    }
    $i++;
}
//$read_query="SELECT * FROM $table_name";
//$result_read_query=$conn->query($read_query);
//if($result_read_query->num_rows>0){
if($result_insert_query===TRUE)
{
    echo "Data inserted. ";
}
else {
    echo "error".$conn->error;
}
$conn->close();
?>

</body>
</html>