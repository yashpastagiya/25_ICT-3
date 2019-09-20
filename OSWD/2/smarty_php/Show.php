<?php
require './libs/Smarty.class.php';
$smarty = new Smarty();
require_once 'dbconfig.php';

//Query for Getting data from database
$qry = "SELECT * FROM category";
if ($result = $mysqli->query($qry)) {
    if ($result->num_rows > 0) {

        while ($row = mysqli_fetch_assoc($result)) {
            $id = $row["cat_id"];
            $name = $row["cat_name"];

            $rows[] = $row; # $data is the array created for use in the Smarty template.

        
            $smarty->assign('rows', $rows);
        }
        $smarty->display('templates/show.tpl');
    }
}
