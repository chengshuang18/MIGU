cluster=32
ini_threshold=0.1
cluster_constructure_method="sequential"
activation_combined=False

seeds=(42 1024 2048)
lrs=(3e-4 1e-4 3e-5 1e-5)
for seed in "${seeds[@]}"; do
  for lr in "${lrs[@]}"; do
    # mkdir -p output/t5_large/valinna/sequential/order_1/logs/${seed}
    # bash scripts/t5_large/valinna/order_1.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} > output/t5_large/valinna/sequential/order_1/logs/${seed}/train_and_infer.log  2>&1

    # mkdir -p output/t5_large/valinna/sequential/order_2/logs/${seed}
    # bash scripts/t5_large/valinna/order_2.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} > output/t5_large/valinna/sequential/order_2/logs/${seed}/train_and_infer.log  2>&1

    # mkdir -p output/t5_large/valinna/sequential/order_3/logs/${seed}
    # bash scripts/t5_large/valinna/order_3.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} > output/t5_large/valinna/sequential/order_3/logs/${seed}/train_and_infer.log  2>&1

    mkdir -p output/t5_large/valinna/sequential/order_6/logs/${seed}
    echo "bash scripts/t5_large/valinna/order_6.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} ${lr}> output/t5_large/valinna/sequential/order_6/logs/${seed}/train_and_infer_${lr}.log  2>&1"
    bash scripts/t5_large/valinna/order_6.sh ${cluster} ${ini_threshold} ${cluster_constructure_method} ${activation_combined} ${seed} ${lr}> output/t5_large/valinna/sequential/order_6/logs/${seed}/train_and_infer_${lr}.log  2>&1
  done
done
