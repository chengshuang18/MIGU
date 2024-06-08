source /workspace/S/zhangyang/miniconda3/bin/activate cluster_lora
conda info -e
cd /lustre/S/zhangyang/chengshuang/CL/cluster_activate_full
export NCCL_DEBUG=INFO


# # mkdir -p output/t5_large/valinna/sequential/order_1/logs
# # bash scripts/t5_large/valinna/order_1.sh > output/t5_large/valinna/sequential/order_1/logs/train_and_infer.log  2>&1

# mkdir -p output/t5_large/valinna/sequential/order_2/logs
# bash scripts/t5_large/valinna/order_2.sh > output/t5_large/valinna/sequential/order_2/logs/train_and_infer.log  2>&1

# # mkdir -p output/t5_large/valinna/sequential/order_3/logs
# # bash scripts/t5_large/valinna/order_3.sh > output/t5_large/valinna/sequential/order_3/logs/train_and_infer.log  2>&1

# echo "bash scripts/run_order3.sh"
# bash scripts/run_order3.sh

# echo "bash scripts/run_order1.sh"
# bash scripts/run_order1.sh

# echo "bash scripts/run_order2.sh"
# bash scripts/run_order2.sh

echo "bash scripts/run_valinna_3.sh"
bash scripts/run_valinna_3.sh