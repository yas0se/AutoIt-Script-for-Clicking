#include <Misc.au3>

HotKeySet("*", "Terminate") ; Définit la touche * du pavé numérique pour arrêter le script

Global $running = True

While $running
    If _IsPressed("01") Then ; Vérifie si le bouton gauche de la souris est pressé
        For $i = 1 To 5 ; Changez le 5 par le nombre de clics que vous souhaitez
            MouseClick("left")
            Sleep(50) ; Ajoute un délai entre les clics, ajustez si nécessaire
        Next
    EndIf
    Sleep(10) ; Petite pause pour éviter une utilisation excessive du processeur
WEnd

Func Terminate()
    $running = False
EndFunc
