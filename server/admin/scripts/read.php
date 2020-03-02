<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

function getAll($tbl)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM ' . $tbl;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
}


function getMovies($tbl)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM ' . $tbl;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
};

function getMusics($tbl)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM ' . $tbl;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
};

function getTVs($tbl)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM ' . $tbl;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
};

function getSingleMovie($tbl, $col, $id)
{
    //TODO: refer the function above to finish this one
    $pdo = Database::getInstance()->getConnection();
    $query = "SELECT * FROM $tbl WHERE $col = $id";

    $results = $pdo->query($query);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem';
    }
}
