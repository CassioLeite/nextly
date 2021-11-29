<?php
$list = [
    "Ana" => 11999999999,
    "Amanda" => 11999999999,
    "Cassio" => 11999999999,
    "Carlos" => 11999999999,
    "Diego" => 11999999999,
    "Enildo" => 11999999999,
    "Fernanda" => 11999999999,
    "Felipe" => 11999999999,
    "Gabriela" => 11999999999,
    "Gabriel" => 11999999999,
    "Irina" => 555555555555,
    "Janaina" => 11999999999,
    "Jamile" => 11999999999,
    "Lais" => 55888888888,
    "Lucas" => 11999999999,
    "Maria" => 11999999999,
    "Natalia" => 11999999999,
    "Osnir" => 11999999999,
    "Paulo" => 11999999999,
    "Quenia" => 11999999999,
    "Renato" => 11999999999,
    "Silvio" => 11999999999,
    "Tatiana" => 11999999999
];


function binary_search($list, $item) {
    $size = count($list);
    $aux = array_keys($list);
    
    $begin = 0;
    $end = $size - 1;

    while ($begin <= $end) {
        
        $i = (integer) (($begin + $end) / 2);
        if ($aux[$i] == $item) {
            return $list[$item];
        }

        if ($aux[$i] < $item) {
            $begin = $i + 1;
        } else {
            $end = $i;
        }
    }
    return false;
}


echo binary_search($list, "Lais") . PHP_EOL;