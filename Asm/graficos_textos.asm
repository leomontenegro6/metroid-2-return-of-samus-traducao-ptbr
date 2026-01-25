; Script que insere edições gráficas e textuais na rom.
.gba
.open "m2ros.gb", 0x08000000

; Inserindo gráficos
.org 0x08015F34
    .incbin "Graficos/Editados/Tela-titulo e fontes.gb"
.org 0x08017E14
    .incbin "Graficos/Editados/The End.gb"
.org 0x0801F7D0
    .incbin "Graficos/Editados/Icone Ice Beam.gb"
.org 0x0801F810
    .incbin "Graficos/Editados/Icone Wave Beam.gb"
.org 0x0801F850
    .incbin "Graficos/Editados/Icone Spazer Beam.gb"

; Inserindo textos dos diálogos normais
.loadtable "Tabelas/dialogos.tbl"
.org 0x08005911
    .stringn "SALVAR",0xDE,0xDF
.org 0x08005921
    .stringn " RAIO DE PLASMA "
.org 0x08005931
    .stringn " RAIO DE GELO   "
.org 0x08005941
    .stringn " RAIO ONDULAR   "
.org 0x08005951
    .stringn " RAIO ESPARSO   "
.org 0x08005961
    .stringn " BOMBA          "
.org 0x08005971
    .stringn "ATAQUE GIRATÓRIO"
.org 0x08005981
    .stringn " TRAJE VARIA    "
.org 0x08005991
    .stringn " PULO ALTO      "
.org 0x080059A1
    .stringn " SALTO ESPACIAL "
.org 0x080059B1
    .stringn " ARACNOSFERA    "
.org 0x080059C1
    .stringn " SALTOSFERA     "
.org 0x080059D1
    .stringn "TANQUE DE ENERG."
.org 0x080059E1
    .stringn "TANQUE DE MÍSSEI"
.org 0x080059F8
    .stringn "ENERGIA"
.org 0x08005A07
    .stringn "MÍSSEIS"

; Inserindo textos dos créditos
.loadtable "Tabelas/creditos.tbl"
.org 0x0801B920
.area 0x0801BDAD - 0x0801B920, 0xF1
    .stringn 0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1,0xF1
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
    .stringn "DESENHISTAS GRÁFICOS",0xF1
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
    .stringn " DESENHISTAS        ",0xF1
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
    .stringn " TRADU: SOLID ONE   ",0xF1
    .stringn " COLORAMENTO: ZORLON",0xF1
    .stringn "CRIADO PELA NINTENDO"
.endarea

.org 0x0801BDEC
    .stringn "TEMPO"

; Salvando a rom modificada.
.close