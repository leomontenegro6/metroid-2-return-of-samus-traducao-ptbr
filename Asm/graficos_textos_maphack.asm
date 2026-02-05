; Script que insere edições gráficas e textuais na rom.
.gba
.open "m2ros.gb", 0x08000000

; Inserindo gráficos
.org 0x08014C1E
    .incbin "Graficos/Editados/Tela-titulo e fontes (maphack).gb"
.org 0x08016B1E
    .incbin "Graficos/Editados/The End.gb"
.org 0x0801F7D0
    .incbin "Graficos/Editados/Icone Ice Beam.gb"
.org 0x0801F7D0
    .incbin "Graficos/Editados/Icone Ice Beam.gb"
.org 0x0801F810
    .incbin "Graficos/Editados/Icone Wave Beam.gb"
.org 0x0801F850
    .incbin "Graficos/Editados/Icone Spazer Beam.gb"
.org 0x08040000
    .incbin "Graficos/Editados/Tela mapas (maphack).gb"
.org 0x08018C10
    .incbin "Graficos/Editados/Tela mapas 2 (maphack).gb"
.org 0x080481A0
    .incbin "Graficos/Editados/Presents (maphack).gb"
.org 0x08048A93
    .incbin "Graficos/Editados/Tela-titulo e fontes 2 (maphack).gb"
.org 0x08050780
    .incbin "Graficos/Editados/Tela inventario (maphack).gb"
.org 0x08050000
    .incbin "Graficos/Editados/Tela inventario 2 (maphack).gb"

; Inserindo textos da tela-título e menu de escolha de save.
.loadtable "Tabelas/tela_titulo_maphack.tbl"
.org 0x08014982
    .stringn "HACK",0xFF,"DE",0xFF,"MAPA(v)"
.org 0x080487F6
    .stringn "HACK",0xFF,"DE",0xFF,"MAPA(v)"
.org 0x08048838
    .stringn "APERTE",0xFF,"START"
.org 0x08050303
    .stringn "DADOS DA SAMUS"
.org 0x08050348
    .stringn " -VAZIO- "
.org 0x080503E8
    .stringn " -VAZIO- "
.org 0x08050488
    .stringn " -VAZIO- "
.org 0x08050504
    .stringn "DELETAR JOGO"
.org 0x08051F1D
    .stringn "DELETAR JOGO"
.org 0x08051D7C
    .stringn "DELETA JOGO  " ; Mostra número do save e interrogação
.org 0x08050563
    .stringn "DIGITE O NOME"
.org 0x08051E4D
    .stringn "SIM    "
.org 0x08051E56
    .stringn "NAO   "
.org 0x08051CD6
    .stringn "SUPERF."
.org 0x08051CDD
    .stringn "AREA 1"
.org 0x08051CE3
    .stringn "AREA 2"
.org 0x08051CE9
    .stringn "AREA 3"
.org 0x08051CEF
    .stringn "AREA 4"
.org 0x08051CF5
    .stringn "AREA 5"
.org 0x08051CFB
    .stringn "AREA 6"

; Aumentando o limite de tiles do tileset da tela de mapa,
; de modo a carregar na memória alguns tiles não-usados,
; para fins de inserção de novos caracteres acentuados.
.org 0x08041D32
    .stringn 0xB0,0x06

; Inserindo textos das telas de mapa.
.loadtable "Tabelas/tela_mapa_maphack.tbl"
.org 0x08041A60
    .stringn "ACHE PONTO DE   R-"
.org 0x08041A80
    .stringn "SAlVAR PARA VER MAPA"
.org 0x08040740
    .stringn "    SUPERFÍCIE  R-"
.org 0x08040940
    .stringn "       ÁREA 1   R-"
.org 0x08040B20
    .stringn "CAVERNAS CENTRO R-"
.org 0x08040D60
    .stringn "       ÁREA 2   R-"
.org 0x08040Ee0
    .stringn "       ÁREA 3   R-"
.org 0x08041180
    .stringn "       ÁREA 4   R-"
.org 0x08041300
    .stringn "       ÁREA 5   R-"
.org 0x08041540
    .stringn "       ÁREA 6   R-"
.org 0x08041E7F
    .stringn "       ÁREA 7   R-"
.org 0x080417C0
    .stringn "       ÁREA 8   R-"

; Inserindo textos das telas de inventário, e do minigame secreto.
.loadtable "Tabelas/tela_inventario_maphack.tbl"
.org 0x08053756
    .stringn "SAMUS"
.org 0x08053770
    .stringn " AI S" ; RAIOS
.org 0x0805377C
    .stringn "T A E" ; TRAJE
.org 0x080537DC
    .stringn "MISC"
.org 0x08053890
    .stringn "TEM  " ; TEMPO
.org 0x08053896
    .stringn "r"
.org 0x0805398F
    .stringn "  raio de gelo:   "
    .stringn "congela inimigos. "
    .stringn "alvos congelados  "
    .stringn "viram plataformas."
.org 0x080539D7
    .stringn "  raio ondular:    "
    .stringn "atravessa paredes  "
    .stringn "e blindagens.      "
    .stringn "duplica o dano.    "
.org 0x08053A23
    .stringn "  raio esparso:   "
    .stringn "divide-se em tres "
    .stringn "disparos. tripli- "
    .stringn "fica amplitude.   "
.org 0x08053A6B
    .stringn " raio de plasma:  "
    .stringn "atravessa inimigos"
    .stringn "atingindo diversos"
    .stringn "alvos de uma vez. "
.org 0x08053AB3
    .stringn "   traje varia:   "
    .stringn "reduz dano em 50%."
    .stringn "aumenta velocidade"
    .stringn "de corrida em 33%."
.org 0x08053AFB
    .stringn "     bombas:      "
    .stringn "planta bombas     "
    .stringn "em morfosfera.    "
.org 0x08053B31
    .stringn "   aracnosfera:   "
    .stringn "escala paredes e  "
    .stringn "tetos estando     "
    .stringn "em morfosfera.    "
.org 0x08053B79
    .stringn "   saltosfera:    "
    .stringn "permite pular     "
    .stringn "em morfosfera.    "
.org 0x08053BAF
    .stringn "    pulo alto:    "
    .stringn "aumenta a altura  "
    .stringn "do pulo.          "
.org 0x08053BE5
    .stringn " salto espacial:  "
    .stringn "de cambalhotas in-"
    .stringn "finitamente no ar."
.org 0x08053C1B
    .stringn "atacue giratorio: "
    .stringn "derrote inimigos  "
    .stringn "dando saltos gira-"
    .stringn "torios neles.     "
.org 0x0805274F
    .stringn "nova estrategia:"
.org 0x08052760
    .stringn "desce direto "
.org 0x0805276E
    .stringn "atirar:a  mapa:start"
.org 0x08052886
    .stringn "nivel 01"

; Editando tilemaps dos nomes dos itens, na tela de inventário.
.org 0x080536FD
    .stringn 0x4C,0x5D,0x5E,0x5C ; Varia
.org 0x08053705
    .stringn 0x4C,0x63,0x64,0x65,0x5F ; Spider
.org 0x0805370A
    .stringn 0x4C,0x66,0x67,0x5F,0x3E ; Spring
.org 0x08053714
    .stringn 0x4C,0x68,0x69,0x6A ; Space

; Salvando a rom modificada.
.close