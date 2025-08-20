// Do NOT modify this file

#include "longest_common.h"

int main(int argc, char** argv) {
    if (argc != 2) {
        return EXIT_FAILURE;
    }

    char* first_line= malloc(sizeof *first_line * LINE_LEN);
    char* second_line = malloc(sizeof *second_line * LINE_LEN);
    printf("%d", longest_common(argv[1], first_line, second_line, LINE_LEN));
    free(first_line);
    free(second_line);
    return EXIT_SUCCESS;
}
