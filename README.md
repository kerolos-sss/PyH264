# PyH264

Experimental implementation of H264 in pure Python. This is intended to be a learning codec, so it's intended to be easy to understand but is inefficient as a result. This also is terrific as a software model for an HDL (hardware) implementation.

This uses quite suboptimal data structures (for example, each macroblock is an object) for educational use. As a result, each frame takes several seconds to encode.

What's supported:

* Fixed 16x16 macroblocks
* Quantization, with configurable Qp
* Intra frame compression

What's currently not supported:
* Inter frame compression
* I-frames
* Motion prediction
* Transport stream generation (bitmap only)

## How it can work

run

```sh
docker-compose up 
```

attache to the shell of the running machine 
go to /code/project
run

```sh

/code/project # python testH264.py
```
