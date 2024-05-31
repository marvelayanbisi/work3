#!/bin/bash
#HTB{z1p_and_unz1p_ma_bruddahs}
ZIPFILE="37366.zip"

while true; do
    PASSWORD=$(unzip -l $ZIPFILE | tail -n 3 | head -n 1 | awk '{print $NF}' | cut -d '.' -f 1)
    unzip -oP "$PASSWORD" "$ZIPFILE"

    if [[ $? != 0 ]]; then
        break
    else
        rm $ZIPFILE
    fi

    ZIPFILE="${PASSWORD}.zip"
done

unzip -P letmeinplease 6969.zip
strings DoNotTouch | grep -Po 'HTB(.+)'
echo "Adeyemi Aiyegbusi"