# RetroCap

# Links
- https://wiki.console5.com/wiki/Microsoft_Xbox
- https://amitools.readthedocs.io/en/latest/tools/xdftool.html

# Tips
```
tr  -s '[:blank:]' ' ' < nintendo_snes_junior.in | sed -r -e 's/([0-9]+)uf/\1uF/g' -e 's/([0-9]+)v/\1V/g'  > a
```

```
[dbaron@razerdb schema]$ cat nintendo_snes_* | cut -f2,3 -d ' ' | sort -k2h -k1rh | uniq -c
      1 220uF 6.3V
      4 100uF 6V
      2 47uF 10V
      1 47uF 16V
      5 10uF 16V
      2 1000uF 25V
      5 33uF 25V
      2 2.2uF 50V
```
