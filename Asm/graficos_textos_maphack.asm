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
    .stringn "NÃO   "
.org 0x08051CD6
    .stringn "SUPERF."
.org 0x08051CDD
    .stringn "ÁREA 1"
.org 0x08051CE3
    .stringn "ÁREA 2"
.org 0x08051CE9
    .stringn "ÁREA 3"
.org 0x08051CEF
    .stringn "ÁREA 4"
.org 0x08051CF5
    .stringn "ÁREA 5"
.org 0x08051CFB
    .stringn "ÁREA 6"

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
.org 0x0804388A
    .stringn " ÁREA DESCONHECIDA  "
.org 0x0804389E
    .stringn "   RETORNE À NAVE   "

; Inserindo textos das telas de inventário, e do minigame secreto.
.loadtable "Tabelas/tela_inventario_maphack.tbl"
.org 0x08053756
    .stringn "SAMUS"
.org 0x08053770
    .stringn "RAIOS"
.org 0x0805377C
    .stringn "TRAJE"
.org 0x080537DC
    .stringn "MISC"
.org 0x08053890
    .stringn "TEMPO"
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
    .stringn "divide-se em três "
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
    .stringn "dê cambalhotas in-"
    .stringn "finitamente no ar."
.org 0x08053C1B
    .stringn "ataque giratório: "
    .stringn "destrói inimigos  "
    .stringn "dando saltos gira-"
    .stringn "tórios neles.     "
.org 0x0805274F
    .stringn "nova estrategia:" ; Sem acento devido a extrapolar tileset
.org 0x08052760
    .stringn "desce direto "
.org 0x0805276E
    .stringn "atirar:a  mapa:start"
.org 0x08052886
    .stringn "nivel 01" ; Sem acento devido a extrapolar tileset

; Editando tilemaps dos nomes dos itens, na tela de inventário.
.org 0x080536F3
    .stringn 0x4C,0x55,0x56,0x57,0x3E ; Esparso
.org 0x080536F8
    .stringn 0x4C,0x59,0x5A,0x5B,0x3E ; Plasma
.org 0x080536FD
    .stringn 0x4C,0x5D,0x5E,0x3E ; Varia
.org 0x08053705
    .stringn 0x4C,0x63,0x64,0x65,0x5F ; Spider
.org 0x0805370A
    .stringn 0x4C,0x66,0x67,0x5F,0x3E ; Spring
.org 0x08053714
    .stringn 0x4C,0x68,0x69,0x6A ; Space

; Inserindo textos dos diálogos normais
.loadtable "Tabelas/dialogos.tbl"
.org 0x0800582F
    .stringn "SALVAR",0xDE,0xDF
.org 0x080140D7
    .stringn "SALVAR",0xDE,0xDF
.org 0x08049AB3
    .stringn "SALVAR",0xDE,0xDF
.org 0x08049C1B
    .stringn "SALVAR",0xDE,0xDF
.org 0x0800583F
    .stringn " RAIO DE PLASMA "
.org 0x0800584F
    .stringn "  RAIO DE GELO  "
.org 0x0800585F
    .stringn "  RAIO ONDULAR  "
.org 0x0800586F
    .stringn "  RAIO ESPARSO  "
.org 0x0800587F
    .stringn "     BOMBA      "
.org 0x0800588F
    .stringn "ATAQUE GIRATÓRIO"
.org 0x0800589F
    .stringn "  TRAJE VARIA   "
.org 0x080058AF
    .stringn "   PULO ALTO    "
.org 0x080058BF
    .stringn " SALTO ESPACIAL "
.org 0x080058CF
    .stringn "  ARACNOSFERA   "
.org 0x080058DF
    .stringn "   SALTOSFERA   "
.org 0x080058EF
    .stringn "TANQUE DE ENERG."
.org 0x080058FF
    .stringn "TANQUE DE MÍSSEI"
.org 0x08005916
    .stringn "ENERGIA"
.org 0x08005925
    .stringn "MÍSSEIS"
.org 0x08049C30
    .stringn "   RAIO DE PLASMA   "
.org 0x08049C45
    .stringn "    RAIO DE GELO    "
.org 0x08049C5A
    .stringn "    RAIO ONDULAR    "
.org 0x08049C6F
    .stringn "    RAIO ESPARSO    "
.org 0x08049C84
    .stringn "       BOMBA        "
.org 0x08049C99
    .stringn "  ATAQUE GIRATÓRIO  "
.org 0x08049CAE
    .stringn "    TRAJE VARIA     "
.org 0x08049CC3
    .stringn "      PULO ALTO     "
.org 0x08049CD8
    .stringn "   SALTO ESPACIAL   "
.org 0x08049CED
    .stringn "    ARACNOSFERA     "
.org 0x08049D02
    .stringn "     SALTOSFERA     "
.org 0x08049D17
    .stringn "  MAPA DESCARREGADO "

; Inserindo textos de "PRESS START" e "COMPLETED" ao salvar o jogo.
; São OAMs, por isso estão em um formato diferente.
.org 0x08004093
    .stringn 0x00,0x04,"C",0x80
    .stringn 0x00,0x0B,"O",0x80
    .stringn 0x00,0x12,"N",0x80
    .stringn 0x00,0x19,"C",0x80
    .stringn 0x00,0x20,"L",0x80
    .stringn 0x00,0x27,"U",0x80
    .stringn 0x00,0x2C,"Í",0x80
    .stringn 0x00,0x32,"D",0x80
    .stringn 0x00,0x39,"O",0x80

.org 0x080040B8
    .stringn 0x00,0x04,"A",0x00
    .stringn 0x00,0x0B,"P",0x00
    .stringn 0x00,0x12,"E",0x00
    .stringn 0x00,0x19,"R",0x00
    .stringn 0x00,0x1F,"T",0x00
    .stringn 0x00,0x26,"E",0x00
    .stringn 0x00,0x35,"(s",0x00
    .stringn 0x00,0x3D,"t",0x00
    .stringn 0x00,0x45,"ar",0x00
    .stringn 0x00,0x4D,"t)",0x00

; Editando tilemap do Game Over
.org 0x08003586
    .stringn 0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xFF

; Inserindo textos dos créditos
.loadtable "Tabelas/creditos.tbl"
.org 0x0801B920
.area 0x0801BDFD - 0x0801B920, 0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1
	.stringn "     METROID II     ",0xF1
	.stringn " HACK DE MAPA V1.2  ",0xF1
	.stringn "     CRIADO POR     ",0xF1
    .stringn "       LOO-E        ",0xF1
	.stringn 0xF1,0xF1,0xF1
	.stringn "       EQUIPE       ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " --EQUIPE METROID-- ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1
	.stringn " PRODUTOR           ",0xF1
	.stringn 0xF1
	.stringn "  GUNPEI YOKOI      ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " DIRETORES          ",0xF1
	.stringn 0xF1
	.stringn "  HIROJI KIYOTAKE   ",0xF1
	.stringn 0xF1
	.stringn "  HIROYUKI KIMURA   ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " PROGRAMADOR PRINC. ",0xF1
	.stringn 0xF1
	.stringn "  TAKAHIRO HARADA   ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " PROGRAMADORES      ",0xF1
	.stringn 0xF1
	.stringn "  MASARU YAMANAKA   ",0xF1
	.stringn "  MASAO YAMAMOTO    ",0xF1
	.stringn "  ISAO HIRANO       ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " DESIGNERS GRÁFICOS ",0xF1
	.stringn 0xF1
	.stringn "  HIROJI KIYOTAKE   ",0xF1
	.stringn "  HIROYUKI KIMURA   ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn "ASSISTENTES DE PROG.",0xF1
	.stringn 0xF1
	.stringn "  YUZURU OGAWA      ",0xF1
	.stringn "  NOBUHIRO OZAKI    ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " PROGRAMADOR SONORO ",0xF1
	.stringn 0xF1
	.stringn "  RYOHJI YOSHITOMI  ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " DESIGNERS          ",0xF1
	.stringn 0xF1
	.stringn "  MAKOTO KANOH      ",0xF1
	.stringn "  MASAFUMI SAKASHITA",0xF1
	.stringn "  TOMOYOSHI YAMANE  ",0xF1
	.stringn "  TAKEHIKO HOSOKAWA ",0xF1
	.stringn "  YASUO INOUE       ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1
	.stringn " DEPURADORES        ",0xF1
	.stringn 0xF1
	.stringn "  MASARU OKADA      ",0xF1
	.stringn "  KENJI NISHIZAWA   ",0xF1
	.stringn "  HIROFUMI MATSUOKA ",0xF1
	.stringn "  TOHRU OHSAWA      ",0xF1
	.stringn "  KOHTA FUKUI       ",0xF1
	.stringn "  KEISUKE TERASAKI  ",0xF1
	.stringn "  KENICHI SUGINO    ",0xF1
	.stringn "  HITOSHI YAMAGAMI  ",0xF1
	.stringn "  KATSUYA YAMANO    ",0xF1
	.stringn "  YUJI HORI         ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
    .stringn "  -AGRADECIMENTOS   ",0xF1
    .stringn "     ESPECIAIS A-   ",0xF1
	.stringn 0xF1
    .stringn "  TAKEHIRO IZUSHI   ",0xF1
    .stringn "  PHIL SANDHOP      ",0xF1
    .stringn "  TONY STANCZYK     ",0xF1
    .stringn "  YUKA NAKATA       ",0xF1
    .stringn "  HIRO YAMADA       ",0xF1
    .stringn "  DAN OWSEN         ",0xF1
    .stringn "  DYLAN CUTHBERT    ",0xF1
    .stringn "  SACHIE INOKE      ",0xF1
	.stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
    .stringn " TRADUÇÃO: SOLID ONE",0xF1
    .stringn " REVISÃO: DARKLORD  ",0xF1
    .stringn "CRIADO PELA NINTENDO"
.endarea

.org 0x0801BE3C
    .stringn "TEMPO"

; Editando tilemap do FIM
.org 0x0801BE13
    .stringn 0x20,0x20,0x23,0x24,0x25,0x26,0x27,0x20
.org 0x0801BE27
    .stringn 0x28,0x29,0x2A,0x2B,0x2C,0x2D,0x2E,0x2F

; Salvando a rom modificada.
.close