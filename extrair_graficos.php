<?php
$graficos = [
    (object)['nome' => 'Tela-titulo e fontes', 'offset' => '0x015F34', 'tiles' => '16x16'],
    (object)['nome' => 'The End', 'offset' => '0x017E14', 'tiles' => '16x1'],
    (object)['nome' => 'L left1', 'offset' => '0x018410', 'tiles' => '1x1'],
    (object)['nome' => 'L left2', 'offset' => '0x018F10', 'tiles' => '1x1'],
    (object)['nome' => 'Icone Ice Beam', 'offset' => '0x01F7D0', 'tiles' => '2x2'],
    (object)['nome' => 'Icone Wave Beam', 'offset' => '0x01F810', 'tiles' => '2x2'],
    (object)['nome' => 'Icone Spazer Beam', 'offset' => '0x01F850', 'tiles' => '2x2'],
];

foreach($graficos as $g){
    $caminho = "Graficos/Originais/{$g->nome}.gb";
    $offset_decimal = hexdec(str_replace('0x', '', $g->offset));
    $tiles = explode('x', $g->tiles);
    $tile_size = 16;
    $tamanho = $tiles[0] * $tiles[1] * $tile_size;

    shell_exec("dd if=\"orig.gb\" of=\"$caminho\" skip=$offset_decimal count=$tamanho bs=1");
}