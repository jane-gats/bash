#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct flags {
    int b;
    int e;
    int n;
    int s;
    int t;
    int v;
} flags;

int parsing(char* str);
void init_flags();
void print_file(char* name);
ssize_t cast_e(char* str, ssize_t linelen);
ssize_t cast_v_t(char* str, ssize_t linelen, int flag_t);
void insert(char* str, char n, size_t i, ssize_t linelen);

int main(int argc, char* argv[]) {
    init_flags();
    int stop = 0, i = 1;
    if (argc > 1) {
        while (stop == 0) {
            stop = parsing(argv[i]);
            i++;
        }
    }
    if (flags.b == 1 && flags.n == 1) flags.n = 0;
    int start_of_filenames = i - 1;
    if (stop == 1) {
        for (; argv[start_of_filenames]; start_of_filenames++) {
            print_file(argv[start_of_filenames]);
        }
    }
    return 0;
}

void init_flags() {
    flags.b = 0;
    flags.e = 0;
    flags.n = 0;
    flags.s = 0;
    flags.t = 0;
    flags.v = 0;
}

int parsing(char* str) {
    int res = 0;
    if (str[0] == '-') {
        if (str[1] == '-') {
            if (!strcmp(str, "--squeeze-blank"))
                flags.s = 1;
            else if (!strcmp(str, "--number"))
                flags.n = 1;
            else if (!strcmp(str, "--number-nonblank"))
                flags.b = 1;
            else
                res = -1;
        } else {
            for (int i = 1; str[i]; i++) {
                if (str[i] == 'b')
                    flags.b = 1;
                else if (str[i] == 'e')
                    flags.e = flags.v = 1;
                else if (str[i] == 'n')
                    flags.n = 1;
                else if (str[i] == 's')
                    flags.s = 1;
                else if (str[i] == 't')
                    flags.t = flags.v = 1;
                else if (str[i] == 'v')
                    flags.v = 1;
                else if (str[i] == 'T')
                    flags.t = 1;
                else if (str[i] == 'T')
                    flags.t = 1;
                else if (str[i] == 'E')
                    flags.e = 1;
                else
                    res = -1;
            }
        }
    } else {
        res = 1;
    }
    return res;
}

void print_file(char* name) {
    FILE* fp;
    if ((fp = fopen(name, "r")) != NULL) {
        int line = 0;
        int flag = 0;
        char* str = NULL;
        size_t str_size = 0;
        ssize_t linelen = 0;
        while ((linelen = getline(&str, &str_size, fp)) > 0) {
            if (flags.b == 1 && str[0] != '\n') printf("%6d\t", ++line);
            if (flags.n == 1 && (flags.s == 0 || flag < 2))
                printf("%6d\t", ++line);
            if (flags.s == 1) {
                if (str[0] == '\n')
                    flag++;
                else
                    flag = 0;
            }
            if (flags.e == 1) linelen = cast_e(str, linelen);
            if (flags.v == 1) {
                char* tmp = realloc(str, str_size * 2);
                if (tmp == NULL) {
                    free(str);
                    fclose(fp);
                    exit(1);
                }
                str = tmp;
                linelen = cast_v_t(str, linelen, flags.t);
            }

            if (flags.s == 0 || flag < 2) {
                for (ssize_t i = 0; i < linelen; i++) printf("%c", str[i]);
            }
        }
        free(str);
        fclose(fp);
    }
}

ssize_t cast_v_t(char* str, ssize_t linelen, int flag_t) {
    for (int i = 0; (ssize_t)i < linelen; i++) {
        if ((0 <= str[i] && str[i] <= 31 && str[i] != 9 && str[i] != 10) ||
            (flag_t == 1 && str[i] == 9)) {
            insert(str, '^', i, linelen);
            i++;
            str[i] += 64;
            linelen++;
        }
        if (str[i] == 127) {
            insert(str, '^', i, linelen);
            i++;
            str[i] -= 64;
            linelen++;
        }
    }
    return linelen;
}

void insert(char* str, char n, size_t i, ssize_t linelen) {
    for (; (int)linelen >= (int)i; linelen--) str[linelen + 1] = str[linelen];
    str[i] = n;
}

ssize_t cast_e(char* str, ssize_t linelen) {
    if (str[linelen - 1] == '\n') {
        str[linelen - 1] = '$';
        str[linelen] = '\n';
        linelen++;
    }
    return linelen;
}
