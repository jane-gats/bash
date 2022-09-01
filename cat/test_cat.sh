
    echo "TEST b"
    ./s21_cat -b my.txt >s21_cat_result
    cat -b my.txt >cat_result
    diff -s s21_cat_result cat_result
    
    echo "TEST e"
    ./s21_cat -e my.txt >s21_cat_result
    cat -e my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST n"
    ./s21_cat -n my.txt >s21_cat_result
    cat -n my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST s"
    ./s21_cat -s my.txt >s21_cat_result
    cat -s my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST t"
    ./s21_cat -t my.txt >s21_cat_result
    cat -t my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST v"
    ./s21_cat -v my.txt >s21_cat_result
    cat -v my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST number"
    ./s21_cat --number my.txt >s21_cat_result
    cat -n my.txt >cat_result
    diff -s s21_cat_result cat_result

    echo "TEST number-nonblank"
    ./s21_cat --number-nonblank my.txt >s21_cat_result
    cat -b my.txt >cat_result
    diff -s s21_cat_result cat_result    

    echo "TEST squeeze-blank"
    ./s21_cat --squeeze-blank my.txt >s21_cat_result
    cat -s my.txt >cat_result
    diff -s s21_cat_result cat_result   


rm -rf s21_cat_result cat_result
