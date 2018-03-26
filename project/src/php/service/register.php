<?php
require_once __DIR__.'/DBConnector.php';
$dbConfig = include_once __DIR__.'/../../../config/app.conf.php';
use DBConnector;

if ($_SERVER['METHOD_REQUEST'] == 'POST') {
    $username = $_POST['username'] ?? null;
    $password1 = $_POST['password1'] ?? null;
    $password2 = $_POST['password2'] ?? null;
    $userFullName = $_POST['userFullName'] ?? null;
    
    if (
        strlen($username) > 2 &&
        strlen($userFullName) > 2 &&
        strlen($password1) > 8 &&
        $password1 == $password2
    ) {
        try {
            DBConnector::setConfig($dbConfig['table_user']);
            $connection = DBConnector::getConnection();
        } catch (PDOException $e) {

        }
    }
}
?>