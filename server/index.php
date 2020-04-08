<?php
require_once 'load.php';

if (isset($_GET['categories'])) {

    if ($_GET['categories'] == 'movie') {
        $movie_table = 'tbl_movies';
        $type = $_GET['type'];
        $getData = getMovies($movie_table, $type);

        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $col = 'movie_id';
            $getData = getSingle($movie_table, $col, $id);
        }
    }

    if ($_GET['categories'] == 'music') {
        $movie_table = 'tbl_music';
        $type = $_GET['type'];
        $getData = getMusics($movie_table, $type);

        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $col = 'music_id';
            $getData = getSingle($movie_table, $col, $id);
        }
    }

    if ($_GET['categories'] == 'tv') {
        $movie_table = 'tbl_television';
        $type = $_GET['type'];
        $getData = getTVs($movie_table, $type);

        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $col = 'tv_id';
            $getData = getSingle($movie_table, $col, $id);
        }
    }
} else {

    $getData = getAll('tbl_movies');
}







$jsonResponse = array('list' => array());
$counter = 0;
while (($row = $getData->fetch(PDO::FETCH_ASSOC))) {
    $category = $_GET['categories'];
    $jsonRow = array(
        'id' => $row[$category . "_id"],
        'cover' => $row[$category . "_poster"],
        'title' => $row[$category . "_name"],
        'year' => $row[$category . "_year"],
        'IMDb' => $row["IMDb"],
        'desc' => $row[$category . "_info"],
        'link' => $row[$category . "_link"],
        'runtime' => $row[$category . "_runtime"]
    );
    $counter++;
    array_push($jsonResponse['list'], $jsonRow);
};





echo json_encode($jsonResponse);
