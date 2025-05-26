source activate mdlm
cd ${path}

exp=ebm_owt_load_hf

checkpoint_path=${path}/outputs/$exp/checkpoints/last.ckpt
export HYDRA_FULL_ERROR=1

for T in 0; do
    echo "$T"
    python -u -m main_ebm \
    mode=ppl_eval \
    loader.batch_size=1 \
    loader.eval_batch_size=1 \
    data=openwebtext-split \
    model=small \
    parameterization=subs \
    ebm_backbone=dit \
    model.length=1024 \
    T="$T" \
    hydra.run.dir=outputs/$exp \
    eval.checkpoint_path=$checkpoint_path \
    +wandb.offline=true
done
