# Scripts for lwe-estimator

The purpose of this repository is to reproduce a part of security estimation numbers provided in [Tab.1 in Homomorphic Encryption Standard](https://eprint.iacr.org/2019/939).

We focus on the ternary distritbuion, i.e., {-1, 0, 1}^n, where $n$ is known as the ring dimension.



# Parameters

We use the followings:

 - lwe-estimator: commit hash 560525

 - key distsitbuion: ternary distribution (w/o hamming weight)

 - ring dimension: n

 - ciphertext modulus parameter: q

 - standard deviation of the error distribution: \sigma = 8/\sqrt{2 \pi} \approx 3.2

 - cost model: BKZ.sieve

# Prerequisite

  - [SageMath](https://www.sagemath.org/)


# Run the scripts

## Clone this repo.

    https://github.com/uishi/sage_for_lwe_estimator --recursive


## 1. Specify the location that sage scripts are saved

Our scripts internally generates a sage script that is subsequently taken to `./lwe-estimator/estimator.py` as input. To do so, we need to modify `config.txt` to specify a directory where the sage script is saved. (`/tmp/sage_scripts` is specified by default.)
The following script makes the directory if that is not exist.

    sh init.sh


## 2. Run the estimator

    sh run_estimate_all_params.sh 

The `run_estimate_all_params.sh` internally executes `estimate_sec_bkz_sieve.sh`.
The `estimate_sec_bkz_sieve` takes the ring dimension (logN) and the ciphertext modulus (logQ) as input, generates a corresponding sage script, and returns estimated security levels based on several attacks.
  

If you want to cleanup the sage scripts, run the following:

    sh clean.sh

# Caution

This repository is unofficial and independent of the standard effort.

# Reference:

* [[ACCD+19]](https://eprint.iacr.org/2019/939) Martin Albrecht, Melissa Chase, Hao Chen, Jintai Ding, Shafi Goldwasser, SergeyGorbunov, Shai Halevi, JeffreyHoffstein, Kim Laine, Kristin Lauter, Satya Lokam, Daniele Micciancio, DustinMoody, Travis Morrison, Amit Sahai, Vinod Vaikuntanathan, "Homomorphic Encryption Standard", Cryptology ePrint Archive: Report 2019/939

* [[APS15]](https://eprint.iacr.org/2015/046.pdf) Martin R. Albrecht, Rachel Player, and Sam Scott, "On the concrete hardness of Learning with Errors", Journal of Mathematical Cryptology. Volume 9, Issue 3, Pages 169–203, ISSN (Online) 1862-2984, ISSN (Print) 1862-2976 DOI: 10.1515/jmc-2015-0016, October 2015

