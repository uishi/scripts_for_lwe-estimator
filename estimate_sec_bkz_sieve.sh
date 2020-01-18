sageprefix=$(cat ./config.txt)
if [ $# -ne 2 ]
then
	echo "No arguments supplied"
	echo "[usage]$./xxx logN logQ"
else
	logN=$1
	logQ=$2
	filename=$sageprefix"/logN${logN}logQ${logQ}_he_ternary.sage"
	echo "load(\"./lwe-estimator/estimator.py\")" > $filename
	echo "n = 2^$logN;" >> $filename
	echo "q = 2^$logQ;" >> $filename
	echo "alpha = 8/q;" >> $filename
	echo "m = 2*n" >> $filename
	echo "_ = estimate_lwe(n, alpha, q, secret_distribution=((-1,1)), reduction_cost_model=BKZ.sieve, m=m)" >> $filename
	sage < $filename
fi
