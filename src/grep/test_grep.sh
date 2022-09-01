
    echo "TEST e"
    ./s21_grep -e hi my.txt >s21_grep_result
    grep -e hi my.txt >grep_result
    diff -s s21_grep_result grep_result

      echo "TEST i"
    ./s21_grep -i hi my.txt >s21_grep_result
    grep -i hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST v"
    ./s21_grep -v hi my.txt >s21_grep_result
    grep -v hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST c"
    ./s21_grep -c hi my.txt >s21_grep_result
    grep -c hi my.txt >grep_result
    diff -s s21_grep_result grep_result  

    echo "TEST l"
    ./s21_grep -l hi my.txt >s21_grep_result
    grep -l hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST n"
    ./s21_grep -n hi my.txt >s21_grep_result
    grep -n hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST h"
    ./s21_grep -h hi my.txt >s21_grep_result
    grep -h hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST s"
    ./s21_grep -s hi my.txt >s21_grep_result
    grep -s hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST f"
    ./s21_grep -f reg.txt my.txt >s21_grep_result
    grep -f reg.txt my.txt >grep_result
    diff -s s21_grep_result grep_result
        
    echo "TEST o"
    ./s21_grep -o hi my.txt >s21_grep_result
    grep -o hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST iv"
    ./s21_grep -iv hi my.txt >s21_grep_result
    grep -iv hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST in"
    ./s21_grep -in hi my.txt >s21_grep_result
    grep -in hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST ic"
    ./s21_grep -ic hi my.txt >s21_grep_result
    grep -ic hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST il"
    ./s21_grep -il hi my.txt >s21_grep_result
    grep -il hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST in"
    ./s21_grep -in hi my.txt >s21_grep_result
    grep -in hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST is"
    ./s21_grep -is hi my.txt >s21_grep_result
    grep -is hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST io"
    ./s21_grep -io hi my.txt >s21_grep_result
    grep -io hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST vc"
    ./s21_grep -vc hi my.txt >s21_grep_result
    grep -vc hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST vl"
    ./s21_grep -vl hi my.txt >s21_grep_result
    grep -vl hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST vn"
    ./s21_grep -vn hi my.txt >s21_grep_result
    grep -vn hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST vh"
    ./s21_grep -vh hi my.txt >s21_grep_result
    grep -vh hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST vs"
    ./s21_grep -vs hi my.txt >s21_grep_result
    grep -vs hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST vo"
    ./s21_grep -vo hi my.txt >s21_grep_result
    grep -vo hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST cl"
    ./s21_grep -cl hi my.txt >s21_grep_result
    grep -cl hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST cn"
    ./s21_grep -cn hi my.txt >s21_grep_result
    grep -cn hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST ch"
    ./s21_grep -ch hi my.txt >s21_grep_result
    grep -ch hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST cs"
    ./s21_grep -cs hi my.txt >s21_grep_result
    grep -cs hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST co"
    ./s21_grep -co hi my.txt >s21_grep_result
    grep -co hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST ln"
    ./s21_grep -ln hi my.txt >s21_grep_result
    grep -ln hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST lh"
    ./s21_grep -lh hi my.txt >s21_grep_result
    grep -lh hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST ls"
    ./s21_grep -ls hi my.txt >s21_grep_result
    grep -ls hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST lo"
    ./s21_grep -lo hi my.txt >s21_grep_result
    grep -lo hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST nh"
    ./s21_grep -nh hi my.txt >s21_grep_result
    grep -nh hi my.txt >grep_result
    diff -s s21_grep_result grep_result
    
    echo "TEST ns"
    ./s21_grep -ns hi my.txt >s21_grep_result
    grep -ns hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST no"
    ./s21_grep -no hi my.txt >s21_grep_result
    grep -no hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST hs"
    ./s21_grep -hs hi my.txt >s21_grep_result
    grep -hs hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST ho"
    ./s21_grep -ho hi my.txt >s21_grep_result
    grep -ho hi my.txt >grep_result
    diff -s s21_grep_result grep_result

    echo "TEST so"
    ./s21_grep -so hi my.txt >s21_grep_result
    grep -so hi my.txt >grep_result
    diff -s s21_grep_result grep_result

rm -rf s21_grep_result grep_result

