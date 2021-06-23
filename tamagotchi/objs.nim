import utils

type
    Tamagotchi* = ref object of RootObj  
        nome*:string 
        peso*:int
        idade*:int 