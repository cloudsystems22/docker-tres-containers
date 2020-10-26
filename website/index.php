<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker | Três containers</title>
</head>
<body>
<?php
    $result = file_get_contents("https://node-container:9001/products");
    $products = json_decode($result);
?>
<table>
 <thead>
    <tr>
        <th>Produto</th>
        <th>Preço</th>
    </tr>
 </thead>
 <tbody>
    <?php foreach($products as $produto) { ?>
        <tr>
         <td><?php echo $product->name; ?></td>
         <td><?php echo $product->price; ?></td>
        </tr>
    <?php } ?>
 </tbody>
</table>
    
</body>
</html>