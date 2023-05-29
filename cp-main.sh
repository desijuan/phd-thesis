#!/bin/bash

flatex main-modelo-uff.tex > /dev/null
diff ../../63ee8ed25fe99259774059ff/main.tex a.tex && rm a.tex || mv a.tex ../../63ee8ed25fe99259774059ff/main.tex

