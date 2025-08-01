# JuliaHLRS25

A four-day workshop that will take place in Stuttgart at the [High Performance Computing Center Stuttgart (HLRS)](https://www.hlrs.de/) in September 2025.

**Course page:** https://www.hlrs.de/training/2025/julia   
**Trainer:** [Dr. Carsten Bauer](https://carstenbauer.eu)

<!-- <div style="float: left">
 <a href="https://www.hlrs.de/"><img src="https://user-images.githubusercontent.com/187980/190168233-6f96774f-ed0a-44cc-b1b5-3ba0b75d39f8.svg" height=100px></a>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <a href="https://pc2.uni-paderborn.de/"><img src="https://user-images.githubusercontent.com/187980/190167755-ead6173d-fb87-40da-ae0f-f0c99e72c22b.png" height=100px></a>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <a href="https://www.nhr-verein.de/"><img src="https://user-images.githubusercontent.com/187980/190169322-89560987-69cf-4c6f-9236-993704461763.svg" height=100px></a>
</div> -->


## Tentative schedule

<a href="https://github.com/carstenbauer/JuliaHLRS25/raw/main/orga/timetable.pdf"><img src="https://github.com/carstenbauer/JuliaHLRS25/raw/main/orga/timetable.png" width=720px></a>

## Optional: Preparing for the workshop (if you bring your own device)

**Important note:** We will provide preconfigured Laptops for the course and you don't need to bring your own device. If you do, please note that you might not be able to perform all exercises on your private machine, in particular those that are supposed to be done on the HLRS training cluster.

### Software

What you need:
  * [Julia 1.11](https://julialang.org/)
    * I recommend to use [juliaup](https://github.com/JuliaLang/juliaup) to install and manage Julia versions!
    * `curl -fsSL https://install.julialang.org | sh`
  * [Jupyter Lab](https://jupyter.org/)
  * (Optional but recommended: [Visual Studio Code](https://code.visualstudio.com/))
  * (Optional: [LIKWID](https://github.com/RRZE-HPC/likwid))

### Workshop materials & Julia dependencies

To download the workshop materials (this GitHub repository) and to install all Julia dependencies, run

```bash
git clone https://github.com/carstenbauer/JuliaHLRS25
cd JuliaHLRS24
julia install.jl
```

**IMPORTANT NOTE:** I might make some last minute changes. To be on the safe side, make sure you update your local instance of the repository right before the start of the workshop. (You can always delete your local copy and redownload or simply `git pull` to update.)

**Remarks:**
  * If you don't have Julia and want a single script to install everything you need (except Jupyter Lab and VS Code), see `orga/local_install.sh`.
  * Because we want the workshop to be as self-contained as possible, we also install dependencies like CUDA and MPI (via Julia's Pkg). The overall size of the installation is therefore expected to be in the ballpark of 5 GB.




<!-- ## Static HTML

In case you don't have Jupyter and just want to follow along: The folder [`HTML/`](https://github.com/carstenbauer/JuliaHLRS25/tree/main/HTML) contains all the main content (jupyter notebooks) in static HTML format. -->
