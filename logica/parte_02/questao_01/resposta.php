<?php

$word = 'Amor a Roma';
$newword = '';

$arr = str_split($word);

$arr = array_reverse($arr);
foreach ($arr as $a) {
    $newword .= strtolower($a);
}

if (strtolower($word) == $newword) {
    echo "É palindromo!: " . $newword . PHP_EOL;
} else {
    echo "Não é palindromo!: " . $newword . PHP_EOL;
}