#ifndef DICTIONARY_H
#define DICTIONARY_H

#define MAX_WORD_SIZE   40
#define MAX_DESC_SIZE  200

/**
* A dictionary is a collection of mappings from WORDs to DESCRIPTIONs
* A WORD is a sequence of characters up to MAX_WORD_SIZE in length
* A DESCRIPTION is a sequence of characters (including spaces) up to
*   MAX_DESC_SIZE in length
*/

void dictionary_initialise();

int dictionary_read_from_file(const char * filename);

int dictionary_lookup(const char * word, char * meaning);

#endif
