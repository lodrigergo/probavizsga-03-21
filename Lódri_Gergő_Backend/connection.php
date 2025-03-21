<?php

function getConnection() {
    $conn = mysqli_connect("localhost", "root", "root", "ingatlanok", 3306);
    if (!$conn) {
        die("Nem sikerült csatlakozni az adatbázishoz: " . mysqli_connect_error());
    }
    return $conn;
}

?>