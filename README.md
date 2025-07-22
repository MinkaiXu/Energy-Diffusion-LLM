# Energy-Based Diffusion Language Models for Text Generation

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/MinkaiXu/Energy-Diffusion-LLM/LICENSE)
[![ArXiv](http://img.shields.io/badge/cs.LG-arXiv%3A2305.01140-B31B1B.svg)](https://arxiv.org/abs/2410.21357)

Official code release for the paper "Energy-Based Diffusion Language Models for Text Generation", accepted at *The 13th International Conference on Learning Representations, 2025*.

## Guidelines

Checkpoints of pretrained Diffusion and AR LLMs can be downloaded at [here](https://github.com/kuleshov-group/mdlm?tab=readme-ov-file#checkpoints).

Save checkpoints to `checkpoints` folder, *e.g.*, `checkpoints/ar.ckpt`. Then you can run training and evaluation scripts in the `scripts` directory. We suggest you trying `scripts/job_sample_eval_owt_T_arebm.sh` and `scripts/job_eval_owt_T_arebm.sh` first, which don't involve any training.

More detailed guidelines for using this repository will be provided soon. 

## Acknowledgements

You can also find useful information in the [MDLM](https://github.com/kuleshov-group/mdlm) repository, which this repository is built upon.

## Citation
```
@article{xu2024energy,
  title={Energy-based diffusion language models for text generation},
  author={Xu, Minkai and Geffner, Tomas and Kreis, Karsten and Nie, Weili and Xu, Yilun and Leskovec, Jure and Ermon, Stefano and Vahdat, Arash},
  journal={arXiv preprint arXiv:2410.21357},
  year={2024}
}
```
