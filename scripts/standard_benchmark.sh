# source /workspace/S/zhangyang/miniconda3/bin/activate cluster_lora
# conda info -e
# cd /lustre/S/zhangyang/chengshuang/CL/cluster_activate_full

cluster=1024
ini_thresholds=(0.7)
cluster_constructure_method="sequential"
activation_combined=True
method="cluster_activate"

seeds=(1111 42 1234 512 2024)
for ini_threshold in "${ini_thresholds[@]}"; do
  for seed in "${seeds[@]}"; do


    mkdir -p output/t5_large/${method}/sequential/order_1/logs/${seed}
    LOGFILE="output/t5_large/${method}/sequential/order_1/logs/${seed}/train_and_infer_${ini_threshold}.log"
    if [ ! -f "$LOGFILE" ]; then
        bash scripts/t5_large/${method}/order_1.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} ${method} > "$LOGFILE" 2>&1
    else
        echo "Log file already exists: $LOGFILE"
    fi

    mkdir -p output/t5_large/${method}/sequential/order_2/logs/${seed}
    LOGFILE="output/t5_large/${method}/sequential/order_2/logs/${seed}/train_and_infer_${ini_threshold}.log"
    if [ ! -f "$LOGFILE" ]; then
        bash scripts/t5_large/${method}/order_2.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} ${method} > "$LOGFILE" 2>&1
    else
        echo "Log file already exists: $LOGFILE"
    fi

    mkdir -p output/t5_large/${method}/sequential/order_3/logs/${seed}
    LOGFILE="output/t5_large/${method}/sequential/order_3/logs/${seed}/train_and_infer_${ini_threshold}.log"
    if [ ! -f "$LOGFILE" ]; then
        bash scripts/t5_large/${method}/order_3.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} ${method} > "$LOGFILE" 2>&1
    else
        echo "Log file already exists: $LOGFILE"
    fi

  done
done