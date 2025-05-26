source activate edlm
cd ${path}

exp=arebm_owt_ckpt

export HYDRA_FULL_ERROR=1

for T in 0; do
    echo "$T"
    python -u -m main \
    mode=ppl_eval \
    loader.batch_size=16 \
    loader.eval_batch_size=16 \
    data=openwebtext-split \
    model=small \
    parameterization=subs \
    ebm_backbone=ar \
    hydra.run.dir=outputs/$exp \
    model.length=1024 \
    T="$T" \
    +wandb.offline=true
done
