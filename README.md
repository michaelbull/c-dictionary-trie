# C Dictionary Trie Implementation

## Purpose
To provide an implementation of a dictionary, that contains words with their relevant descriptions, and allow the user to populate it with large amounts of information and still remain searchable in an acceptable and efficient timeframe.

## Manifest
* `dictionary.h`
    * The header file for the dictionary implementation which creates a skeleton of how the dictionary API should function. This gives strict specifications on how each method is implemented and allows the user to reference this information without reading the full source code.

* `dictionary.c`
    * The source code file for the dictionary implementation which contains the logic and main implementation of the dictionary library. This model is backed using a data structure commonly known as a 'trie', often referred to as a 'digital tree' or a 'prefix tree'. A 'trie' is similar to a binary tree but allows for multiple child nodes and a string value assigned to each node that allows for easy traversal.

* `dictionary_run.c`
    * The test program which utilises the dictionary library in order to test it in a scenario that has been predefined for this exercise. It has remain untouched.

* `Makefile`
    * The Makefile allows the user to use the CLI for program manipulation. It allows access to the cleaning of the working directory which removes all output and executable files (make clean), the building of the dictionary library & the dictionary_run program (make all) or (make dictionary_run), and finally allows the user to easily zip all of the relevant files with one command into a tarball file (make zip).

* `dictionary_1.txt`
    * The first set of test cases that the dictionary_run program can use to populate the test dictionary.

* `dictionary_2.txt`
    * The second set of test cases that the dictionary_run program can use to populate the test dictionary.

## Usage
1. Run the program by entering the following command into the terminal:
    * `./dictionary_run dictionary_1.txt`
    
2. If you make changes, you can recompile the library and test program using:
    * `make` (alternatively you can use: make all or make dictionary_run)

3. To clean the directory once finished, enter the following command into the terminal:
    * `make clean`

4. To rezip the working directory, enter the command:
    * `make zip`

## Implementation Notes

The implementation is backed by a 'trie', commonly referred to as a 'digital tree' or a 'prefix tree'.

Unlike a binary tree which simply has two child nodes, each node has a maximum of 52 child nodes which account for each letter in the alphabet, in both lower and uppercase form (0-25 = a-z, 26-51 = A-Z).

Each child node then has a string value assigned to it, which would be the description of the word if it has been added, and its own set of child nodes.

This approach applies itself well to a dictionary case scenario as traversing through the trie results in descending through the tree with each letter of the word.

Using this method for traversal allows us to operate in an `O(m)` timeframe where `m` is the length of the word. This leads to linear performance given the length of the word to search for. This performance will be incredibly valuable for largely populated dictionaries as the amount of words within the dictionary will have no effect on the timeframe that it can be traversed in.

An example of the tries hierarchy is shown below:

![An example trie][example]

[example]: /diagram.png
