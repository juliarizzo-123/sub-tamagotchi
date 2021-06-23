import utils
import objs
import strutils
import strformat
import random

var 
    x:int
    y:int
    b:int
    c:int
    ps:int

while x != 4:
    menu()
    y = parseInt(readline(stdin))

    case y
    of 1: criar_tamagotchi()
    else:
        echo "ate a proxima!!!!!"
        break 

    randomize()
    let acoes = ["COMER", "DORMIR", "BRINCAR"]
    let pick = sample(acoes)
    # echo pick
    echo &"seu bixinho quer: {pick} \n "
    
    submenu()
    b = parseInt(readline(stdin))
    if b == 1:
        var tamagotchi:Tamagotchi = Tamagotchi()
        echo "hora da comida!!"
        echo "[1] - comer muito "
        echo "[2] - comer pouco"
        c = parseInt(readline(stdin))
        if c == 1:
            tamagotchi.peso = tamagotchi.peso + 5
            echo &"seu bixo esta pesando: {tamagotchi.peso}"
            echo "seu bixo esta com sono"
        elif c == 2:
            tamagotchi.peso = tamagotchi.peso + 3
            echo &"seu bixo esta pesando: {tamagotchi.peso}"
        
    elif b == 2:
        var tamagotchi:Tamagotchi = Tamagotchi()
        echo "hora da soneca!!"
        echo "[1] - dormir muito "
        echo "[2] - dormir pouco"
        c = parseInt(readline(stdin))
        if c == 1:
            tamagotchi.peso = tamagotchi.peso - 4 
            echo &"seu bixo esta pesando: {tamagotchi.peso}"
            echo "seu bixo esta com sono"
        elif c == 2:
            tamagotchi.peso = tamagotchi.peso - 1
            echo &"seu bixo esta pesando: {tamagotchi.peso}"
    elif b == 3:
        var tamagotchi:Tamagotchi = Tamagotchi()
        echo "hora da brincadeira!!"
        echo "[1] - brincar muito "
        echo "[2] - brincar pouco"
        c = parseInt(readline(stdin))
        if c == 1:
            tamagotchi.peso = tamagotchi.peso - 2
            echo &"seu bixo esta pesando: {tamagotchi.peso}"
            echo "seu bixo esta com sono"
        elif c == 2:
            tamagotchi.peso = tamagotchi.peso - 1
            echo &"seu bixo esta pesando: {tamagotchi.peso}"

        break
    else:
        echo "opçao invalida!!"
        break
    
    