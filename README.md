# WAT-scripts
Modified scripts used for Japanese translation evaluation at WAT.

## Why?
The perl scripts at
* http://lotus.kuee.kyoto-u.ac.jp/WAT/evaluation/automatic_evaluation_systems/automaticEvaluationJA.html
* http://lotus.kuee.kyoto-u.ac.jp/WAT/evaluation/automatic_evaluation_systems/script.segmentation.distribution.tar.gz <br>

do not work in recent perl environments (e.g., v5.26.1).

If the prodived scripts do not work in your perl environment, the modified scripts in this repo will work well.

## Modifications
* -Mencoding=utf8 -> use utf8;
* Add the -C option

The modifications are applicable not only to the Kytea-based scripts in this repo, but also to other scripts. For more details, please check `diff` of corresponding scripts.

## Usage
After setting relevant paths, we can run <br>
`./bleu_kytea.sh` <br>
`./bleu_kytea_old.sh` <br>
to see the same BLEU scores are output by both the new and old scripts, where the Kytea-based evaluation is used for example. In some of my perl environments, the `./bleu_kytea_old.sh` script works on v5.18.2 but not on v5.26.1, and the `./bleu_kytea.sh` script works both on v5.18.2 and v5.26.1.
