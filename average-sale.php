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
$sql="Select  petroleum_product,concat(MIN(year), '-',   MAX(year))  as yearRange, AVG(sale) as sale
					FROM table_petrol
                    GROUP BY floor(year/5),petroleum_product  
ORDER BY petroleum_product  ASC";



$result=$conn->query($sql);

if($result->num_rows>0){
?>


<header>
    <h1 align="center">Young Innovations Internship Challenge</h1>
</header>

<div1>

<table class="table table-bordered table-striped mb-0">
    <tr>
        <th>Year</th>
        <th>Petroleum Product</th>
        <th>Average Sale</th>
    </tr>

        <?php
        while($rows=$result->fetch_assoc()){
            echo "<td>".$rows['yearRange']."</td>";
            echo "<td>".$rows['petroleum_product']."</td>";
            echo "<td>".$rows['sale']."</td></tr>";
//            echo "<td>".$rows['country']."</td></tr>";
        }
        echo "</table>";
        }
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


