source activate edlm
cd ${path}

export HYDRA_FULL_ERROR=1

parameterization=arebm
exp_name=${exp_names[$parameterization]}
backbone=${backbones[$parameterization]}

is_start=1.0

output_file=${parameterization}_${eval_model_name}_${num_step}_${is_size}_${is_start}_${is_end}

python -u -m main \
    mode=sample_eval \
    hydra.run.dir=outputs/$exp_name \
    eval.gen_ppl_eval_model_name_or_path=$eval_model \
    data=openwebtext-split  \
    model.length=1024  \
    sampling.predictor=ddpm_cache  \
    sampling.steps=$num_step \
    sampling.is_size=$is_size \
    sampling.is_start=$is_start \
    sampling.is_end=$is_end \
    loader.eval_batch_size=1 \
    sampling.num_sample_batches=128 \
    ebm_backbone=$backbone
