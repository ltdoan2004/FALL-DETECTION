#!/bin/bash
#SBATCH --job-name=falldetection
#SBATCH --output=res_%j.out         
#SBATCH --error=res_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1                
#SBATCH --gres=gpu:1               
#SBATCH --cpus-per-task=4          
#SBATCH --mem=16G                  
#SBATCH --partition=gtx1080
#SBATCH --gres=gpu:2             
#SBATCH --time=1-23:59:00    

module load cuda/10.2 

conda activate falldetection

python main.py

echo "Training complete."