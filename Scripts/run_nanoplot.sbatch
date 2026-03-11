#!/bin/bash

#SBATCH --job-name=run_nanoplot
#SBATCH --output /home/cmdowlin/kelpMorph/Logs/nanoplot-%j.out
#SBATCH --error /home/cmdowlin/kelpMorph/Logs/nanoplot-%j.err
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH --mem=24G 
#SBATCH --partition=lab-mpinsky
#SBATCH --qos=pi-mpinsky
#SBATCH --account=pi-mpinsky

############# run_nanoplot.sbatch  ###################
# Run nanoplot on unaligned ONT bams to generate quality assessment plots

# load required modules 
module load miniconda3

# activate conda environemnt 
conda activate nanoplot

# run NanoPlot
NanoPlot -t 12 --ubam /home/cmdowlin/kelpMorph/Data/Raw/SWCinteg001.bam --plots dot -o /home/cmdowlin/kelpMorph/Data/Raw/bamPlots

NanoPlot -t 12 --ubam /home/cmdowlin/kelpMorph/Data/Raw/SWCinteg002.bam --plots dot -o /home/cmdowlin/kelpMorph/Data/Raw/bamPlots

# END SCRIPT
