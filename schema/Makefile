.PHONY: *.in

*.in:
	@tr  -s '[:blank:]' ' ' <$@ | sed -r -e 's/([0-9]+)uf/\1uF/g' -e 's/([0-9]+)v/\1V/g'  > a
	@cat a | cut -f2,3 -d ' ' | sort -k2h -k1rh | uniq -c
	@wc -l a

