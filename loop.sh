#!/bin/bash

courses=(Avinash,Garikipati)
for (( index=0 ; index<=2 ; index++ ))
do
        echo "${courses[$index]}"
done