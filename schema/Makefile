.PHONY: *.in

*.in:
	@tr  -s '[:blank:]' ' ' <$@ | sed -r -e 's/([0-9]+)uf/\1uF/g' -e 's/([0-9]+)v/\1V/g'  > sigma.txt
	@cut -f2,3 -d ' ' < sigma.txt | sort -k2h -k1rh | uniq -c
	@wc -l sigma.txt && rm sigma.txt

