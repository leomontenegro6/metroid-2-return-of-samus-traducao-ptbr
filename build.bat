:: Arquivo .bat que remonta a rom traduzida.
:: Uso: build.bat [-colorization] [-maphack]
:: Onde:
::   -colorization: Aplica a colorização do EJRTQ (opcional)
::   -maphack: Aplica o maphack (opcional)
@echo off
setlocal EnableDelayedExpansion
echo ==Gerando rom traduzida.==

REM Inicializa flags
set colorization=0
set maphack=0

REM Percorre todos os argumentos
for %%A in (%*) do (
    if /I "%%A"=="-colorization" set colorization=1
    if /I "%%A"=="-maphack" set maphack=1
)

REM Evita que patches conflitantes sejam combinados
if !colorization! equ 1 if !maphack! equ 1 (
    echo ERRO: Não pode usar -colorization e -maphack juntos.
    exit /b 1
)

del m2ros.gb
copy orig.gb m2ros.gb

if !colorization! equ 1 (
    echo ==Aplicando IPS do EJRTQ Colorization.==
    .\Ferramentas\flips.exe --apply ".\Arquivos Patches\EJRTQ Colorization\metroid ii - color (ejrtq) v1.3.ips" .\m2ros.gb .\m2ros.gb
)

if !maphack! equ 1 (
    echo ==Aplicando IPS do Map Hack do LOO-E.==
    .\Ferramentas\flips.exe --apply ".\Arquivos Patches\M2 Map Hack\M2 Map Hack (LOO-E) v1.2.ips" .\m2ros.gb .\m2ros.gb
)

echo ==Inserindo graficos e textos traduzidos.==
if !maphack! equ 1 (
    .\Ferramentas\armips-lzss\armips-lzss-v1.exe .\Asm\graficos_textos_maphack.asm
) else (
    .\Ferramentas\armips-lzss\armips-lzss-v1.exe .\Asm\graficos_textos.asm
    if !colorization! equ 1 (
        .\Ferramentas\armips-lzss\armips-lzss-v1.exe .\Asm\creditos_ejrtq.asm
    )
)

echo Done.