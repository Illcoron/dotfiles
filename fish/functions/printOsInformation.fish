function printOsInformation
for line in (pygmentize -f terminal test.sh)
           echo $line
    end
end
