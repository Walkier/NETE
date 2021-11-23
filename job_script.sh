#!/bin/bash

# NOTE: Lines starting with "#SBATCH" are valid SLURM commands or statements,
#       while those starting with "#" and "##SBATCH" are comments.  Uncomment
#       "##SBATCH" line means to remove one # and start with #SBATCH to be a
#       SLURM command or statement.


SBATCH -J nete_slurm_job #Slurm job name

# Set the maximum runtime, uncomment if you need it
SBATCH -t 24:00:00 #Maximum runtime of 48 hours

# Enable email notificaitons when job begins and ends, uncomment if you need it
SBATCH --mail-user=whychow@ust.hk #Update your email address
SBATCH --mail-type=begin
SBATCH --mail-type=end

# Choose partition (queue) "gpu" or "gpu-share"
SBATCH -p gpu-share

# To use 4 cpu cores and 1 gpu device in a node
SBATCH -N 1 -n 4 --gres=gpu:1

# Setup runtime environment if necessary 
# or you can source ~/.bashrc or ~/.bash_profile 

# Go to the job submission directory and run your application 
cd /home/whychow/NETE

# Execute applications in parallel 
# srun -n 2 --gres=gpu:1 myapp1 &    # Assign 2 CPU cores and 1 GPU device to run application "myapp1" 
srun -n 2 --gres=gpu:1 myapp2     # Similarly, assign 2 CPU cores and 1 GPU device to run application "myapp2" 
wait
