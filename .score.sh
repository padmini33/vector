if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -w "11" .hidden.txt | wc -l) -gt 0 ]&&[ $(grep -w "22" .hidden.txt | wc -l) -gt 0 ]&&[ $(grep -w "33" .hidden.txt | wc -l) -gt 0 ]&&[ $(grep -w "44" .hidden.txt| wc -l) -gt 0 ]&&[ $(grep -w "55" .hidden.txt| wc -l) -gt 0 ]&&[ $(grep -w "[1]" .hidden.txt| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






