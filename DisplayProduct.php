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

    $year = $_GET['year'];
    $country=$_GET['country'];
    $product=$_GET['product'];
    if($year=="Year" or $country=="Country" or $product=="Product")
    {
        header('location: index.php');
    }
    else {

    $displayProduct_query="SELECT sale FROM table_petrol WHERE year='$year' AND petroleum_product='$product' AND country='$country'";
    $result_displayProduct_query=$conn->query($displayProduct_query);
    if($result_displayProduct_query->num_rows>0)
    {
        while($row=$result_displayProduct_query->fetch_assoc())
        {
            $sale=$row['sale'];
        }
    }
    ?>

<header>
    <h1 align="center">Young Innovations Internship Challenge</h1>
</header>

<div1>
<div class="container">
    <table  class="table table-striped">
    <tr>
        <th>Year</th>
        <th>Petroleum Product</th>
        <th>Sale</th>
        <th>Country</th>
    </tr>
    <tr>
        <?php
            echo "<td>".$year."</td>";
            echo "<td>".$product."</td>";
            echo "<td>"." $sale"."</td>";
            echo "<td>".$country."</td></tr>";

        echo "</table></div>";
    }
?>
</div1>
<footer>

    <div2>
        <form action="index.php">
            <button type="submit" class="btn btn-danger">Go Back</button>
        </form>
    </div2>
    <div2>
        <form method="GET" action="average-sale.php">

            <button type="submit" class="btn btn-primary" >Average sales for 4 year interval</button>
        </form>
    </div2>


    <br>
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

