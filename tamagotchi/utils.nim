import objs
import strutils
import strformat
import random

var
    ps:int
    # quilos:float
proc linha() =
    echo "==========================================="


proc menu*() = 
    linha()
    echo """
    TAMAGOTCHI SEU BIXINHO VIRTUAL!!
    [4] - SAIR DO PROGRAMA
    [1] - CRIAR NOVO TAMAGOTCHI
        """

proc submenu*() = 
    linha()
    echo """
    O QUE DESEJA FAZER?
    [1] - alimentar
    [2] - por pra dormir
    [3] - brincar
    dica: alimente primeiro ;)
        """
    linha()
proc criar_tamagotchi*() = 
    var tamagotchi:Tamagotchi = Tamagotchi()
    linha()
    echo "CRIANDO TAMAGOTCHI........"
    echo "DE UM NOME: "
    tamagotchi.nome = readLine(stdin)
    tamagotchi.peso = 1
    tamagotchi.idade = 0

proc peso*() =
    var tamagotchi:Tamagotchi = Tamagotchi()
    tamagotchi.peso = ps
    if ps < 1:
        echo "seu bicho morreu!!"
