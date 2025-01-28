#!/bin/bash

rm -rf bin
mkdir bin
javac -sourcepath src -d bin/ src/lox/Lox.java

if [ $? -eq 0 ]; then
    java -cp bin lox.Lox "$@"
else
    echo "Compilation failed. Please fix the errors and try again."
fi
