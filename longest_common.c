// Modify this file

#include "longest_common.h"

/*
Arguments:
    filename: name of the input file
    first_line: temporary space to store what is read from the first line of the file
    second_line: temporary space to store what is read from the second line of the file
    size: size of line
Return:
    length of the longest common substring between two strings
*/
int longest_common(char* filename, char* first_line, char* second_line, int size)
{
    // EDIT THIS FUNCTION
    // You may follow the steps and use the codes given, but you may also ignore and make your own moves as well.

    // Step 1: Open the file
    //         Don't forget to handle failures


    // Step 2: Read two lines from the file
    //         Save the first line at first_line and second line at second_line
    //         Don't forget to handle the failures


    // Step 3: Remove each line's newline character
    first_line[strcspn(first_line, "\r\n")]  = '\0';
    second_line[strcspn(second_line, "\r\n")] = '\0';

    // Step 4: Find the longest common substring between the two strings
    //         Probably, you would have to loops (that are nested)
    int max_length = 0;         // Maximum length of common substring that was found




    // Step 5 :Return the maximum length of common substrings
    return max_length;
}
