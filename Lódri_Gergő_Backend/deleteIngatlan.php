<?php

require_once 'connection.php'; 

function deleteIngatlanById($id): bool {
    try {
        $conn = getConnection();

        $id = mysqli_real_escape_string($conn, strip_tags($id));
        $sql = 'CALL `deleteIngatlanById`(' . $id . ');';
        mysqli_query($conn, $sql);

        mysqli_close($conn);
        return true;
    } catch (Exception $ex) {
        print $ex->getMessage();
        return false;
    }
}

deleteIngatlanById(10);



        


?>