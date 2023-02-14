import UIKit


//  Fibonacci - fibonacciho postupnost je kde dalsie cislo ziskame scitanim dvoch predoslych. V nasom pripade mame vypisat prvych 15 cisiel tejto postupnosti, vacsinou zacina od cisiel 0,1. Fibo postupnost zvykne byt zlaty standard otazok na pohovore preto som moje riesenie vysvetlil uplne do detailu ako pre dojca aby bolo jasne ze to co som napisal aj ovladam. Inak prvotne som toto programoval na papier s perom a kreslil si co to robi a ako to funguje.

var sequence     = [0, 1] // Definuejem start fibonacciho postupnosti
var velkostPola  = 15 // zadana dlzka postupnosti

while sequence.count != velkostPola { // zaciname iteraciu dokym neni splnena nasa podmienka v tomto pripade dlzka postupnosti
    if velkostPola <= 2{
        break // nestujeme if statement ktory nas vyhodi z loopy ked je zelana velkost nizsia alebo rovna 2 ( kedze 2 cisla uz pozname )
    }
    let first = sequence[sequence.count - 2] // definujeme si prvu konstantu ktora ma hodnotu indexu ktory ziskame odcitanmim countu (2) a cisla 2 teda 2 - 2 je 0 a na indexe 0 mame cislo 0.
    let second = sequence.last! // definujeme druhu kontantu ktora vytiahne poslednu hodnotu pola v tomto pripade 1
    sequence.append(first + second) // nasledne scitame dve hodnoty a pridame ich na koniec pola, v tomto pripade 0 + 1 = 1 ide na koniec pola - pokracovanie tu ->
}

if sequence.count <= 2 {
    print("Velkost pola musi byt viac ako 2") // koncovy if statement ktory nas odkazuje na to ze sme zadali prilis malu hodnotu dlzky pola postupnosti
} else {
    print(sequence) // vypisuje zelane pole Fibo postupnosti
    
}

// -> aktualny stav pola sequence je [0,1,1], znova pozerame podmienku vo while loope a kedze count = 3 pokracujeme:
// premenna first znova zistuje index a to tym ze odratame cislo 2 od countu (3) a ziskame 1 - tym padom sme sa posunuli o jedno policko od prvej iteracie a dostavame cislo 1 kedze sequence[1] = 1
// premenna second pozera posledny index v poli v nasom pripade 1 kedze aktualne pole je [0,1,1]
// nakoniec scitame index 1 a posledny index, v nasom pripade 1 + 1 a dostavame cislo 2 ktore zapisujeme na koniec pola -> [0,1,1,2]










