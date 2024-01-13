#! /bin/env bash

FILE=HelloWorld && compile_solidity $FILE.sol 1>&2 && \
    run_solidity $FILE && \
    rm -rf $FILE