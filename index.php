<?php

$url="https://raw.githubusercontent.com/younginnovations/internship-challenges/master/programming/petroleum-report/data.json";
$data=file_get_contents($url);
$list=json_decode($data,true);


$year=$petroleum_product=$sale=$country="";
$j=0;
$checker1[]='';
$checker2[]='';
$checker3[]='';

$start=0;
$start2=0;
$start3=0;
while($j< count($list) ) {

    $list_item = $list[$j];

    $year=$list_item['year'];

    $country=$list_item['country'];

    $petroleum_product=$list_item['petroleum_product'];

    $token=0;

    $arraylength1=count($checker1);


    $arraylength2=count($checker2);

    $arraylength3=count($checker3);

    //for year
    for($i=0;$i<$arraylength1;$i++)
    {
        if($checker1[$i]!=$year){
            $token=$token+1;
        }
    }
    if ($token==$arraylength1){
        if($start==0)
        {
            $token=$token-1;
            $start=1;
        }
        $checker1[$token]=$year;
    }

    //for country
    $token=0;
    for($i=0;$i<$arraylength2;$i++)
    {
        if($checker2[$i]!=$country){
            $token=$token+1;
        }
    }
    if ($token==$arraylength2){
        if($start2==0)
        {
            $token=$token-1;
            $start2=1;
        }
        $checker2[$token]=$country;
    }

    //for Product
    $token=0;
    for($i=0;$i<$arraylength3;$i++)
    {
        if($checker3[$i]!=$petroleum_product){
            $token=$token+1;
        }
    }
    if ($token==$arraylength3){
        if($start3==0)
        {
            $token=$token-1;
            $start3=1;
        }
        $checker3[$token]=$petroleum_product;
    }
    $j++;
}
?>
<html>
<head>
    <style>
        body{
            overflow: hidden;
        }
        header {
            background-color: #666;
            padding: 30px;
            height: 150px;
            text-align: center;
            font-size: 35px;
            color: white;
        }

        div1 {
            float: right;
            padding-top: 30px;
            padding-left: 450px;
            height: 380px;
            width: 100%;
            background-color: #f1f1f1;
        }
        div2 {
            float:right;
            padding: 60px;
        }

        footer {
            padding: 100px;
            color: white;
        }


    </style>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<header>
    <h1 align="center">Young Innovations Internship Challenge</h1>
</header>

<div1>
    <form method="GET" action="DisplayProduct.php">
        <label for="year">Choose a year: </label>
        <select name="year" id="year">
            <option selected value="Year">Year</option>
<?php
for($i=0;$i<count($checker1);$i++)
                {
                    echo "<option value='$checker1[$i]'>".$checker1[$i] ."</option>";
                }
?>
        </select>

        <br><br>
        <label for="country">Choose a country:</label>
        <select name="country" id="country">
            <option selected value="Country">Country</option>

<?php
for($i=0;$i<count($checker2);$i++)
    {
        echo "<option value='$checker2[$i]'>".$checker2[$i] ."</option>";
    }
?>
        </select>


        <br><br><label for="product">Choose a Product:</label>
        <select name="product" id="product">
            <option selected value="Product">Product</option>

            <?php
            for($i=0;$i<count($checker3);$i++)
            {
                echo "<option value='$checker3[$i]'>".$checker3[$i] ."</option>";
            }
            ?>

        </select>

        <br><br>
        <input type="submit" value="Submit" class="btn btn-success ">
    </form>
</div1>
<footer>

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
</body>
</html>