sbatch job_script
squeue -u $USER
sleep 60
filename=`ls -Art | tail -n 1`
tmux new -s "$filename"
watch -n 1 tail -n 75 "$filename"