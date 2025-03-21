<?php
require_once 'connection.php';
function createIngatlan($kategoria_id, $leiras, $hirdetesDatuma, $tehermentes, $ar, $kepUrl): bool {
    try {
        $conn = getConnection();

        $leiras = mysqli_real_escape_string($conn, strip_tags($leiras));
        $kepUrl = mysqli_real_escape_string($conn, strip_tags($kepUrl));
        $ar = mysqli_real_escape_string($conn, strip_tags($ar));
        $kategoria_id = mysqli_real_escape_string($conn, strip_tags($kategoria_id));

        $tehermentes = $tehermentes ? 1 : 0;
        $tehermentes = mysqli_real_escape_string($conn, strip_tags($tehermentes));

        $hirdetesDatuma = date('Y-m-d', strtotime($hirdetesDatuma));
        $hirdetesDatuma = mysqli_real_escape_string($conn, strip_tags($hirdetesDatuma));

        $sql = 'CALL `createIngatlan`(' . $kategoria_id . ', "' . $leiras . '", "' . $hirdetesDatuma . '", ' . $tehermentes . ', ' . $ar . ', "' . $kepUrl . '");';

        $result = mysqli_query($conn, $sql);

       

        mysqli_close($conn);
        return $result;
    } catch (Exception $ex) {
        print $ex->getMessage();
        return false;
    }
}

createIngatlan(2, "WQQQ", "2024-10-10", false, 11000000, "kep.jpg");