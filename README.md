# Shell Script Bug: Modifying Array During Iteration

This repository demonstrates a common bug in shell scripting: modifying an array while iterating over it.  The script attempts to process a list of files, but the addition of a new file to the array within the loop causes unexpected behavior.  The solution demonstrates the correct way to handle such situations.

## Bug Description
The script iterates through a file list. However, it adds a new file to the list during iteration, causing the loop to skip elements or produce unexpected results. This is because the array's indices change as elements are added.

## Solution
The solution uses a different approach to process the files. It iterates through a copy of the array or uses a different loop structure that doesn't alter the index during the iteration process.