function printProgrammingInformation
    clear
    echo -e "\e[34mgcc \e[33m<program.c> \e[32m-o \e[33m<neuerName>                  \e[0m  | Kompilieren"
    echo -e "\e[34m./\e[33m<neuerName>    \e[0m                                 | Ausführen"
    echo -e "\e[34mgcc \e[33m<program.c> \e[32m-o \e[33m<neuerName> \e[34m&& ./\e[33m<neuerName> \e[0m  | Einzeiler"
    echo
    echo "----------------------------------------------------------------------"
    echo
    echo -e "\e[34m gdb ./\e[33m<neuerName>    \e[0m        | Debugging starten"
    echo -e " \e[32m> break main             \e[0m    | Haltepunkt bei main() setzen"
    echo -e " \e[32m> break \e[33m x               \e[0m    | Haltepunkt bei Zeile \e[33mx \e[0msetzen"
    echo -e " \e[32m> run                    \e[0m    | starte das Programm"
    echo -e " \e[32m> next                   \e[0m    | nächste Zeile (springt über Funktionen"
    echo -e " \e[32m> step                   \e[0m    | gehe in die nächste Funktion hinein"
    echo -e " \e[32m> print \e[33mx                \e[0m    | zeige den Wert der Variable \e[33mx"
    echo -e " \e[32m> backtrace              \e[0m    | zeige den Aufruf-Stack"
    echo -e " \e[32m> continue               \e[0m    | bis zum nächsten Haltepunkt laufen"
    echo -e " \e[32m> quit                   \e[0m    | Beende GDB"
end
