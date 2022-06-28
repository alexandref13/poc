echo "Removendo branchs"

branchs=( "coloque os nomes das branchs separados por espaco" )


for ((x=0; x < ${#branchs[*]}; x++)) ; do
    git branch -D ${branchs[$x]}
    git push origin --delete ${branchs[$x]}
done