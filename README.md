# WAT-scripts
Modified scripts used for Japanese translation evaluation at WAT.

## Why?
The perl scripts at
* http://lotus.kuee.kyoto-u.ac.jp/WAT/evaluation/automatic_evaluation_systems/automaticEvaluationJA.html
* http://lotus.kuee.kyoto-u.ac.jp/WAT/evaluation/automatic_evaluation_systems/script.segmentation.distribution.tar.gz <br>

do not work in the latest perl environment.

## Modifications
* -Mencoding=utf8 -> use utf8;
* Add the -C option

## Usage
After setting relevant paths, we can run <br>
`./bleu_kytea.sh` <br>
`./bleu_kytea_old.sh` <br>
to see the same BLEU scores are output by both the new and old scripts, where the Kytea-based evaluation is used for example.
