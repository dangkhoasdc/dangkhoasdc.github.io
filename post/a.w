.. highlight: cpp

+++
title = "Hello world with Literate Programming"
date = "2018-09-04"


+++

Hello world
============

This is a demo for `pyweb`

First, we have to define the program, let call it `hello.cpp`:

@o hello.cpp @{
@<header files for program@>
int main(int argc, const char* [] argv) {
    @<print the message @>
}
@}

Header Files
-------------

Basically, we only need a header file which handles the output of the message,
namely `std::cout`:

@d header files for program
@{
#include <iostream>
using namespace std;
@}

Messages
--------

To print the message `Hello world`, we simply put the output to the argument
of `std::cout`:

@d print the message
@{
cout << "Hello world" << endl;
@}

It is done.
