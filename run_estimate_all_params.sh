runfile="./estimate_sec_bkz_sieve.sh"

Run() {
  echo "logN = $1, logQ = $2"
  sh $runfile $1 $2
}

echo "* * * * * (logN=10)"
Run 10 27
Run 10 19
Run 10 14

echo "* * * * * (logN=11)"
Run 11 54
Run 11 37
Run 11 29

echo "* * * * * (logN=12)"
Run 12 109
Run 12 75
Run 12 58

echo "* * * * * (logN=13)"
Run 13 218
Run 13 152
Run 13 118

echo "* * * * * (logN=14)"
Run 14 438
Run 14 305
Run 14 237

echo "* * * * * (logN=15"
Run 15 881
Run 15 611
Run 15 476
