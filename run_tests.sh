#! /bin/sh
success=0
fail=0

echo
echo "-----------------------------------------------------------"
echo " Running tests from $1 in scasp..."
echo " Usage: ./run_test.sh testfolder"
echo "-----------------------------------------------------------"
echo

STARTTIME=$(date +%s)
for i in $1/test*.pl; do
    echo "TEST DESCRIPTION: $i"
    grep "DESCRIPTION" $i | sed 's/\%\% DESCRIPTION: //'
    scasp -s1 $i > temp.out
    echo
    echo "TEST RESULT:"
    grep -A 1 "QUERY:I would like to know if" temp.out
    grep "no models" temp.out
    if [ $? -eq 0 ]
    then
        fail=$((fail + 1))
    fi
    grep "ANSWER:" temp.out
    if [ $? -eq 0 ]
    then
        success=$((success + 1))
    fi
    echo
    echo "----------------------------------"
    echo
    rm temp.out
done


ENDTIME=$(date +%s)
echo
echo "Tests Complete. ${success} successes, ${fail} failures. Processing time $(($ENDTIME - $STARTTIME)) seconds."
echo