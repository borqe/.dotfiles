TODO: explorer.exe shell:RecycleBinFolder


If `install.sh` script fails on _Windows_ because of `^M` carriage return character error, run this

`sed -i -e 's/\r$//' <script.sh>`

