# To enable preemption re-loading, set `hydra.run.dir` or 
# `checkpointing.save_dir` explicitly.

source activate edlm

exp=arebm_owt_ckpt

cd ${path}

python -u -m main \
    loader.batch_size=16 \
    loader.eval_batch_size=16 \
    model=small \
    data=openwebtext-split \
    wandb.name=$exp \
    hydra.run.dir=outputs/$exp \
    parameterization=subs \
    model.length=1024 \
    eval.compute_generative_perplexity=True \
    sampling.steps=1000 \
    ebm_backbone=ar \
    eval.checkpoint_path=kuleshov-group/mdlm-owt \
    sampling.num_sample_batches=1
