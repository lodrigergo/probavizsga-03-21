<?php

require_once 'connection.php';

function getAllIngatlan() {
    try {
        $conn = getConnection();

        $sql = 'CALL `getAllIngatlanWithCategoryName`();';

        $datapack = mysqli_query($conn, $sql);
        $data = [];

        if ($datapack) {
            while ($row = mysqli_fetch_assoc($datapack)) {
                $data[] = [
                    "id" => (int)$row["id"],
                    "kategoria" => $row["kategoria_nev"],
                    "leiras" => $row["leiras"],
                    "hirdetesDatuma" => $row["hirdetesDatuma"],
                    "tehermentes" => (bool)$row["tehermentes"],
                    "ar" => (int)$row["ar"],
                    "kepUrl" => $row["kepUrl"]
                ];
            }
        }
        mysqli_close($conn);
        return $data;
    } catch (Exception $ex) {
        print $ex->getMessage();
        return false;
    }
}

print_r(getAllIngatlan());

?>