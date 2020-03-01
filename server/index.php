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
while (($row = $getMovies->fetch(PDO::FETCH_ASSOC))) {
    $jsonRow = array(
        'movie_id' => $row['movie_id'],
        'movie_cover' => $row['movie_poster'],
        'movie_title' => $row['movie_name'],
        'movie_year' => $row['movie_year']
    );
    $counter++;
    array_push($jsonResponse['movies'], $jsonRow);
};

echo json_encode($jsonResponse);
