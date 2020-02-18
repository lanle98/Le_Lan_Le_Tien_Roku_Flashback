<?php
require_once 'load.php';

if (isset($_GET['filter'])) {
    $args = array(
        'tbl' => 'tbl_movies',
        'tbl2' => 'tbl_genre',
        'tbl3' => 'tbl_mov_genre',
        'col' => 'movies_id',
        'col2' => 'genre_id',
        'col3' => 'genre_name',
        'filter' => $_GET['filter']
    );
    $getMovies = getMoviesByFilter($args);
} else {
    $movie_table = 'tbl_movies';
    $getMovies = getAll($movie_table);
}

$jsonResponse = array('movies' => array());
$counter = 0;
while (($row = $getMovies->fetch(PDO::FETCH_ASSOC)) && ($counter < 5)) {
    $jsonRow = array(
        'movies_id' => $row['movies_id'],
        'movies_cover' => $row['movies_cover'],
        'movies_title' => $row['movies_title']
    );
    $counter++;
    array_push($jsonResponse['movies'], $jsonRow);
};

echo json_encode($jsonResponse);
