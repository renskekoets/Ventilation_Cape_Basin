#! usr/bin/bash
#echo "start" >> /home/renske/file.txt

#source /home/renske/conda/bin/activate RTD
#echo "activate" >> /home/renske/file.txt

#rm /home/renske/data/fsle.nc
#rm /home/renske/data/adt/fsle/list.ini
touch /home/renske/data/adt/list.ini

python3 /home/renske/prep_fsle.py

#echo "prep" >> /home/renske/file.txt
