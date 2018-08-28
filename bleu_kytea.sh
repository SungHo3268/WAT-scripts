KYTEA_MODEL=
MOSES_SCRIPT=
KYTEA=
T=./trans.txt
G=./gold.txt

cat ${T} | perl -C -pe 'use utf8; s/(.)［[０-９．]+］$/${1}/;' |sh ./remove-space.sh |perl -C ./h2z-utf8-without-space.pl | ${KYTEA} -model ${KYTEA_MODEL}/jp-0.4.2-utf8-1.mod -out tok | perl -C -pe 's/^ +//; s/ +$//; s/ +/ /g;' |perl -C -pe 'use utf8; while(s/([０-９]) ([０-９])/$1$2/g){} s/([０-９]) (．) ([０-９])/$1$2$3/g; while(s/([Ａ-Ｚ]) ([Ａ-Ｚａ-ｚ])/$1$2/g){} while(s/([ａ-ｚ]) ([ａ-ｚ])/$1$2/g){}' > ${T}.eval

cat ${G} | perl -C -pe 'use utf8; s/(.)［[０-９．]+］$/${1}/;' |sh ./remove-space.sh |perl -C ./h2z-utf8-without-space.pl | ${KYTEA} -model ${KYTEA_MODEL}/jp-0.4.2-utf8-1.mod -out tok | perl -C -pe 's/^ +//; s/ +$//; s/ +/ /g;' |perl -C -pe 'use utf8; while(s/([０-９]) ([０-９])/$1$2/g){} s/([０-９]) (．) ([０-９])/$1$2$3/g; while(s/([Ａ-Ｚ]) ([Ａ-Ｚａ-ｚ])/$1$2/g){} while(s/([ａ-ｚ]) ([ａ-ｚ])/$1$2/g){}' > ${G}.eval


perl ${MOSES_SCRIPT}/generic/multi-bleu.perl ${G}.eval < ${T}.eval
