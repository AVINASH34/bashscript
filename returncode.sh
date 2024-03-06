#!/bin/bash

HOME_DIR=/home/lenovo

test -d ${HOME_DIR}

full_hand_rc=$?


[ -d ${HOME_DIR} ]

short_notation_rc=$?


echo " This line from test and the reault was ${full_hand_rc} "


echo " This line from short_hand and the reault was ${short_notation_rc} "