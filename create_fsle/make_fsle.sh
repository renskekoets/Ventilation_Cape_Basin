#!/usr/bin/bash

# Set start and end dates
start_date="2023-03-15"
#end_date="2023-05-31"

end_date="2023-05-21"

# Path to the output file
output_file="/home/renske/data/adt/fsle/fsle_combined.nc"

# Temporary directory to store individual fsle files
temp_dir="/home/renske/data/adt/fsle/temp_fsle"
mkdir -p $temp_dir

# Remove any existing combined output file
rm -f $output_file

# Loop over dates
current_date=$start_date
while [[ "$current_date" < "$end_date" ]] || [[ "$current_date" == "$end_date" ]]
do
    echo "Processing FSLE for date: $current_date"
    
    # Run the Python script for the current date
    python /home/renske/map_of_fle.py /home/renske/data/adt/list.ini "$temp_dir/fsle_$current_date.nc" "$current_date" --advection_time 7  --resolution=0.05 \
    --final_separation 0.5 --x_min 0 --x_max 35 --y_min -50 --y_max -20 \
    --final_separation 0.5 --verbose --time_direction backward


    # Update current_date to the next day
    current_date=$(date -I -d "$current_date + 1 day")
done

# Combine the individual fsle files into a single netCDF file
echo "Combining FSLE files into $output_file"
ncrcat $temp_dir/fsle_*.nc $output_file

# Clean up temporary files
# rm -r $temp_dir

echo "All FSLE computations completed. Combined file is available at: $output_file"
#! usr/bin/bash


