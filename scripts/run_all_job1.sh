source /workspace/S/zhangyang/miniconda3/bin/activate cluster_lora
conda info -e
cd /lustre/S/zhangyang/chengshuang/CL/cluster_activate_full
export NCCL_DEBUG=INFO

# echo "bash scripts/run_order4.sh"
# bash scripts/run_order4.sh

# echo "bash scripts/run_order1.sh"
# bash scripts/run_order1.sh

# echo "bash scripts/run_order2.sh"
# bash scripts/run_order2.sh

echo "bash scripts/run_valinna_1.sh"
bash scripts/run_valinna_1.sh
