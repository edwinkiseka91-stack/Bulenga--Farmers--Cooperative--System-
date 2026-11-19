<?php require 'config.php';
$farmerCount = (int)$pdo->query('SELECT COUNT(*) FROM farmers')->fetchColumn();
$deliveryCount = (int)$pdo->query('SELECT COUNT(*) FROM deliveries')->fetchColumn();
$orderCount = (int)$pdo->query('SELECT COUNT(*) FROM orders')->fetchColumn();
$stock = $pdo->query('SELECT produce.name, stock.quantity_available FROM stock JOIN produce ON stock.produce_id=produce.produce_id ORDER BY produce.name')->fetchAll();
?>
<!doctype html><html><head><meta charset="utf-8"><title>Bulenga Cooperative Dashboard</title><link rel="stylesheet" href="style.css"></head><body>
<header><h1>Bulenga Farmers Cooperative</h1><nav><a href="index.php">Dashboard</a><a href="farmers.php">Farmers</a><a href="deliveries.php">Deliveries</a><a href="orders.php">Orders</a><a href="dispatches.php">Dispatches</a><a href="reports.php">Reports</a></nav></header>
<main><h2>Dashboard</h2><div class="cards"><div class="card"><h3>Farmers</h3><p><?=$farmerCount?></p></div><div class="card"><h3>Deliveries</h3><p><?=$deliveryCount?></p></div><div class="card"><h3>Orders</h3><p><?=$orderCount?></p></div></div>
<h3>Current Stock</h3><table><tr><th>Produce</th><th>Available (kg)</th></tr><?php foreach($stock as $row): ?><tr><td><?=htmlspecialchars($row['name'])?></td><td><?=htmlspecialchars($row['quantity_available'])?></td></tr><?php endforeach; ?></table>
<p class="notice">Development starter. Validate features and replace sample/demo data with verified project data.</p></main></body></html>
