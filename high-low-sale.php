<head>
    <style>
        body{
            overflow: hidden;
        }
        header {
            background-color: #666;
            height: 150px;
            padding: 30px;
            text-align: center;
            font-size: 35px;
            color: white;
        }

        div1 {
            overflow: scroll;
            float: right;
            padding: 20px;
            height: 380px;
            width: 100%;
            background-color: #f1f1f1;
        }
        div2 {
            float:right;
            padding: 60px;
        }

        footer {
            padding: 10px;
            color: white;
        }


    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<?php
include ('connection.php');


//$sql="SELECT petroleum_product,SUM(sale) as sale,country From table_petrol GROUP BY petroleum_product,country ";

$sql="SELECT SUM(sale) as highest_sale,country FROM table_petrol GROUP BY country ORDER BY highest_sale DESC LIMIT 0,3;";
$result=$conn->query($sql);

$sql2="SELECT SUM(sale) as lowest_sale ,country FROM table_petrol GROUP BY country ORDER BY lowest_sale ASC LIMIT 0,3;";
$result2=$conn->query($sql2);

if($result->num_rows>0){
?>


<header>
    <h1 align="center">Young Innovations Internship Challenge</h1>
</header>

<div1>

    <table class="table table-bordered table-striped mb-0">
        <tr>
            <th colspan="3" ><center>Highest sales</center></th>
            <th colspan="3"><center>Lowest sales</center></th>
        </tr>

        <tr>
            <th></th>
            <th>Country</th>
            <th>Sale</th>
            <th></th>
            <th>Country</th>
            <th>Sale</th>
        </tr>

        <?php

        $array_sale[]="";
        $array_country[]="";
        $count=0;
        while($rows=$result->fetch_assoc()){
                if($count<3){
                    $array_sale[$count]=$rows['highest_sale'];
                    $array_country[$count]=$rows['country'];
                    $count=$count+1;
                }
//            echo "<td>".$rows['year']."</td>";
//            echo "<td>".$rows['petroleum_product']."</td>";
//            echo "<td>".$rows['highest_sale']."</td>";
//            echo "<td>".$rows['country']."</td></tr>";
        }

         }

        if($result2->num_rows>0) {

            $arraylow_sale[] = "";
            $arraylow_country[] = "";
            $count = 0;
            while ($row = $result2->fetch_assoc()) {
                if ($count < 3) {
                    $arraylow_sale[$count] = $row['lowest_sale'];
                    $arraylow_country[$count] = $row['country'];
                    $count = $count + 1;
                }
            }
        }
            $j=1;
            for ($i=0;$i<3;$i++) {
                echo "<tr><td>$j</td>";
                echo "<td>" . $array_country[$i] . "</td>";
                echo "<td>" . $array_sale[$i] . "</td>";
                echo "<td>$j</td>";
                echo "<td>" . $arraylow_country[$i] . "</td>";
                echo "<td>" . $arraylow_sale[$i] . "</td></tr>";
                $j=$j+1;
            }
            echo"</table>";
                    ?>

</div1>


<footer>

    <div2>
        <form action="index.php">
            <button type="submit" class="btn btn-danger">Go Back</button>
        </form>
    </div2>

    <br>


    <div2>
        <form method="GET" action="average-sale.php">

            <button type="submit" class="btn btn-primary" >Average sales for 4 year interval</button>
        </form>
    </div2>
    <div2>
        <form method="GET" action="high-low-sale.php">
            <button type="submit" class="btn btn-primary ">Top 3 countries with highest-lowest sales</button>
        </form>
    </div2>
    <div2>
        <form method="POST" action="total-sale.php">
            <button type="submit" class="btn btn-primary ">Total sales by Product</button>
        </form>
    </div2>




</footer>


