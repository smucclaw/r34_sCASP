#! /bin/sh

while getopts ":i1" opt; do
    case ${opt} in
        i )
            interactive="true"
            ;;
        1 )
            one="true"
            ;;
        \? )
            echo "invalid flag $OPTARG" 1>&2
            exit 0
            ;;
    esac
done

success=0
fail=0

echo
echo "-----------------------------------------------------------"
echo " Running tests from $3 for $2 in scasp..."
echo " Usage: ./run_test.sh -flags filename.pl testfolder"
echo " Possible Flags: -1, -i, -i1"
echo " Use -i to run one test at a time"
echo " Use -1 to search for only one model per test"
echo "-----------------------------------------------------------"
echo

STARTTIME=$(date +%s)
for i in $3/test*.pl; do
    echo "TEST DESCRIPTION: $i"
    grep "DESCRIPTION" $i | sed 's/\%\% DESCRIPTION: //'
    if [[ ${one} = "true" ]]
    then
        scasp -s1 $2 $3/basic_facts.pl $i > temp.out
    else
        scasp -s0 $2 $3/basic_facts.pl $i > temp.out
    fi
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
    if [[ ${interactive} = "true" ]]
    then
        read -p "Press enter to continue" 
    fi
done


ENDTIME=$(date +%s)
echo
echo "Tests Complete. ${success} successes, ${fail} failures. Processing time $(($ENDTIME - $STARTTIME)) seconds."
echo