<?php
require_once 'load.php';

if (isset($_GET['categories'])) {

    if ($_GET['categories'] == 'movie') {
        $movie_table = 'tbl_movies';
        $getData = getMovies($movie_table);
    }

    if ($_GET['categories'] == 'music') {
        $movie_table = 'tbl_music';
        $getData = getMusics($movie_table);
    }

    if ($_GET['categories'] == 'tv') {
        $movie_table = 'tbl_television';
        $getData = getTVs($movie_table);
    }
} else {

    $getData = getAll('tbl_movies');
}

// $jsonResponse = array('movies' => array());
// $counter = 0;
// while (($row = $getData->fetch(PDO::FETCH_ASSOC))) {
//     $jsonRow = array(
//         'movie_id' => $row['movie_id'],
//         'movie_cover' => $row['movie_poster'],
//         'movie_title' => $row['movie_name'],
//         'movie_year' => $row['movie_year']
//     );
//     $counter++;
//     array_push($jsonResponse['movies'], $jsonRow);
// };

$jsonResponse = array('list' => array());
$counter = 0;
while (($row = $getData->fetch(PDO::FETCH_ASSOC))) {
    $category = $_GET['categories'];
    $jsonRow = array(
        'id' => $row[$category . "_id"],
        'cover' => $row[$category . "_poster"],
        'title' => $row[$category . "_name"],
        'year' => $row[$category . "_year"]
    );
    $counter++;
    array_push($jsonResponse['list'], $jsonRow);
};



echo json_encode($jsonResponse);
