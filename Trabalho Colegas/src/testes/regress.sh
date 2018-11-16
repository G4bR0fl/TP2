#!/bin/bash

for filename in Test*.rb; do
	fn=${filename%.*}
        echo ====== $fn.rb =====
	file=${fn##*/}
	touch log/$file.log &&
       	exec ruby $filename -v v  | tee log/$file.log | \
                grep  "test_" | \
                 GREP_COLORS='mt=01;32' egrep '(test_.*[0-9]\))|$' --color=always | \
                 GREP_COLORS='mt=01;31' egrep '(test_.*E$)|^(Error:*)|^(Failure:*)|$' --color=always
done
