<?php
$graficos = [
    (object)['nome' => 'Tela-titulo e fontes', 'offset' => '0x014C1E', 'tiles' => '16x16'],
    (object)['nome' => 'Tela mapas', 'offset' => '0x040000', 'tiles' => '1x116'],
    (object)['nome' => 'Tela mapas 2', 'offset' => '0x018C10', 'tiles' => '1x1'],
    (object)['nome' => 'Presents', 'offset' => '0x0481A0', 'tiles' => '1x6'],
    (object)['nome' => 'Tela-titulo e fontes 2', 'offset' => '0x048A93', 'tiles' => '16x16'],
    (object)['nome' => 'Tela inventario', 'offset' => '0x050780', 'tiles' => '16x8'],
    (object)['nome' => 'Tela inventario 2', 'offset' => '0x050000', 'tiles' => '16x3'],
];

foreach($graficos as $g){
    $caminho = "Graficos/Originais/{$g->nome} (maphack).gb";
    $offset_decimal = hexdec(str_replace('0x', '', $g->offset));
    $tiles = explode('x', $g->tiles);
    $tile_size = 16;
    $tamanho = $tiles[0] * $tiles[1] * $tile_size;

    shell_exec("dd if=\"Arquivos Patches/M2 Map Hack/m2maphack_looe.gb\" of=\"$caminho\" skip=$offset_decimal count=$tamanho bs=1");
}