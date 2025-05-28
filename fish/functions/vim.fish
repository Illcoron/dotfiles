function vim
    if test (count $argv) -ge 1; and test $argv[1] = "-temp"
        set template $argv[2]
        set newName $argv[3]

        if test -z "$template" -o -z "$newName"
            echo "Usage: vim -temp TEMPLATE_NAME NEW_FILENAME"
            return 1
        end

        set srcPath ~/Templates/$template.*
        if not test -f $srcPath
            echo "Template $srcPath not found!"
            return 1
        end

        cp $srcPath .
        mv (basename $srcPath) $newName
        if test $template = Vorlesung
                set lines (cat $newName)
                set name (basename $newName .md)
                set lines[7] $name
                set lines[2] "Module:           "(basename $PWD)
                set lines[3] "Date:             "(date "+%d.%m.%Y")
                printf "%s\n" $lines > $newName
        end
        nvim $newName
    else
        command nvim $argv
    end
end
