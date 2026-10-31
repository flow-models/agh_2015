# agh_2015/IPv4

https://www.flow-models.org/?dataset=agh_2015&selector=IPv4

## Citation

Please cite as:

    @article{flows-agh,
        title = {Flow length and size distributions in campus Internet traffic},
        journal = {Computer Communications},
        volume = {167},
        pages = {15-30},
        year = {2021},
        issn = {0140-3664},
        doi = {10.1016/j.comcom.2020.12.016},
        author = {Piotr Jurkiewicz and Grzegorz Rzym and Piotr Bory\l{}o}
    }

Available at: http://arxiv.org/abs/1809.03486

## Overview

This model is a filtered subset of the `agh_2015` dataset stored in the
[ALL](../ALL) directory, based on
NetFlow records collected on the Internet-facing interface of the AGH
University of Krakow network during the consecutive period of 30 days.
Flow records are not included in this repository.

## Reproduction

In order to reproduce all steps towards creating artifacts in this repository use the following commands:

    make histograms
    make mixtures
    make plots
    make summary
    make series
    make first_mirror

Please consult the [Makefile](Makefile) for more details.

## Dataset summary

| Parameter         |         Value |      Unit |
|-------------------|--------------:|----------:|
| Dataset name      | agh_2015/IPv4 |           |
| Flow definition   |       5-tuple |           |
| Exporter          |  Cisco router | (NetFlow) |
| L2 technology     |      Ethernet |           |
| Sampling rate     |          none |           |
| Active timeout    |           300 |   seconds |
| Inactive timeout  |            15 |   seconds |
| Filter expression |     `af == 2` |           |
| Flow records      |  not included |           |
| IP Anonymization  |             - |           |
|                   |               |           |
