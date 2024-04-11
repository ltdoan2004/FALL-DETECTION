#!/bin/bash
#SBATCH --job-name=yolo_train       # Job name
#SBATCH --output=res_%j.out         # Output and error (%j expands to jobId)
#SBATCH --error=res_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1                  # Number of tasks (see below)
#SBATCH --gres=gpu:1                # Request GPU "generic resources"
#SBATCH --cpus-per-task=4           # Number of CPU cores per task
#SBATCH --mem=16G                   # Memory (default is 1GB per CPU-core)
#SBATCH --partition=gpu             # GPU partition
#SBATCH --time=2-00:00:00           # Time limit days-hrs:min:sec

conda activate falldetection

python main.py