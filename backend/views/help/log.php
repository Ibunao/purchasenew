<table border="1">
  <tr>
    <th>订单id</th>
    <th>管理员</th>
    <th>时间</th>
    <th>status</th>
  </tr>
  <?php foreach ($result as $key => $item): ?>
  <tr>
    <td><?=$item['order_id'] ;?></td>
    <td><?=$item['name'] ;?></td>
    <td><?=date("Y-m-d H:i:s", $item['time']) ;?></td>
    <td><?=$item['status'] ;?></td>
  </tr>
  <?php endforeach ?>
</table>