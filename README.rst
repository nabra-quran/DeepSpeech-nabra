# Project DeepSpeech

[![Documentation](https://readthedocs.org/projects/deepspeech/badge/?version=latest)](https://deepspeech.readthedocs.io/?badge=latest)
[![macOS builds](https://github.com/mozilla/DeepSpeech/actions/workflows/macOS-amd64.yml/badge.svg)](https://github.com/mozilla/DeepSpeech/actions/workflows/macOS-amd64.yml)
[![Linters](https://github.com/mozilla/DeepSpeech/actions/workflows/lint.yml/badge.svg)](https://github.com/mozilla/DeepSpeech/actions/workflows/lint.yml)
[![Docker Images](https://github.com/mozilla/DeepSpeech/actions/workflows/docker.yml/badge.svg)](https://github.com/mozilla/DeepSpeech/actions/workflows/docker.yml)

DeepSpeech is an open-source Speech-To-Text engine, using a model trained by machine learning techniques based on [Baidu's Deep Speech research paper](https://arxiv.org/abs/1412.5567). Project DeepSpeech utilizes [Google's TensorFlow](https://www.tensorflow.org/) to facilitate the implementation.

## Documentation
Comprehensive documentation for installation, usage, and training models is available on [deepspeech.readthedocs.io](https://deepspeech.readthedocs.io/).

## Data and Resources
For the trained model, language model, scorer file, and checkpoints, check the `data/data61` folder. This folder also contains preprocessing data, a CSV file for training, and audio files for Warsh narration of the Quran featuring four reciters.

### Results
Dataset for chapter (hizb) 60th + Fatiha:
- **WER**: 0.148515
- **CER**: 0.083203
- **Validation loss**: 51.262039

## Latest Release
For the latest release, including pre-trained models and checkpoints, visit the [latest release on GitHub](https://github.com/mozilla/DeepSpeech/releases/latest).

## Contribution
For contribution guidelines, see [CONTRIBUTING.rst](CONTRIBUTING.rst).

## Contact and Support
For contact and support information, see [SUPPORT.rst](SUPPORT.rst).
