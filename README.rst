Project DeepSpeech
==================


.. image:: https://readthedocs.org/projects/deepspeech/badge/?version=latest
   :target: https://deepspeech.readthedocs.io/?badge=latest
   :alt: Documentation


.. image:: https://github.com/mozilla/DeepSpeech/actions/workflows/macOS-amd64.yml/badge.svg
   :target: https://github.com/mozilla/DeepSpeech/actions/workflows/macOS-amd64.yml
   :alt: macOS builds

.. image:: https://github.com/mozilla/DeepSpeech/actions/workflows/lint.yml/badge.svg
   :target: https://github.com/mozilla/DeepSpeech/actions/workflows/lint.yml
   :alt: Linters

.. image:: https://github.com/mozilla/DeepSpeech/actions/workflows/docker.yml/badge.svg
   :target: https://github.com/mozilla/DeepSpeech/actions/workflows/docker.yml
   :alt: Docker Images


DeepSpeech is an open-source Speech-To-Text engine, using a model trained by machine learning techniques based on `Baidu's Deep Speech research paper <https://arxiv.org/abs/1412.5567>`_. Project DeepSpeech uses Google's `TensorFlow <https://www.tensorflow.org/>`_ to make the implementation easier.

Documentation for installation, usage, and training models are available on [deepspeech.readthedocs.io].
For the trained model, language model, scorer file, and checkpoints, you can check the data/data61 folder. Also, in this folder, you can find preprocessing data, a CSV file for training, and audio files for Warsh narration of the Quran containing 4 reciters. 
results : 
Dataset  for chaptre(hizb) 60th + fatiha WER: 0.148515, CER: 0.083203, validation loss: 51.262039

For the latest release, including pre-trained models and checkpoints, `see the latest release on GitHub <https://github.com/mozilla/DeepSpeech/releases/latest>`_.

For contribution guidelines, see `CONTRIBUTING.rst <CONTRIBUTING.rst>`_.

For contact and support information, see `SUPPORT.rst <SUPPORT.rst>`_.
