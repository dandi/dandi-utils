#!/bin/bash
#SBATCH --job-name=dandi-s3invsync
#SBATCH --output=dandi-s3invsync-%j.out
#SBATCH --error=dandi-s3invsync-%j.err
#SBATCH --partition=sched_mit_hill
#SBATCH --time=12:00:00
#SBATCH --mem=64G
#SBATCH --cpus-per-task=4

cd /home/kabi/s3invsync
cargo run --release -- --ok-errors access-denied s3://dandiarchive/dandiarchive/dandiarchive/ /orcd/data/dandi/001/s3dandiarchive/
