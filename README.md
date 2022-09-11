# SCRIPTS

Scripts for eliminating common command patterns in daily work.


### Why?

While working with several different repos, all with their own environment, I found myself repeating the same chain of commands again and again. The longest of these was cloning a new project, creating a virtual environment for the project, installing all the dependencies, and activating the environment. And when all the repos, virtual environments, and so on are at least three words long combined by hyphens, this adds up to a lot of typing.

```bash
# Setup a new project locally
git clone some-incredibly-long-repo-name && cd some-incredibly-long-repo-name
conda create --name some-incredibly-long-repo-name python=3.10
conda activate some-incredibly-long-repo-name
python -m pip install requirements.txt

# Switch to another project
conda deactivate
cd some-other-incredibly-long-repo-name
conda activate some-other-incredibly-long-repo-name
```

Being a "lazy developer", I figured this chain of commands could be combined into a single script. And so this repo was born. The above script can now be run simply with:

```bash
# Setup a new project locally
git clone some-incredibly-long-repo-name && cd some-incredibly-long-repo-name
create

# Switch to another project
cd some-other-incredibly-long-repo-name
activate
```

So much less typing! The `create` command will only ask you which python version you want to install as part of the virtual environment, but then takes care of everything else from naming, deactivating other running environments, activating the created environment, and even pip installing all the dependencies from the project's `requirements.txt` file.

The full list commands that are automated here are:

    - `create`: Creats a new virtual environment with anaconda that's named after the present working directory.
    - `activate`: Activates the virtual environment based on what working directory you're presently in after deactivating any currently active environment. This makes switching virtual environments between projects much easier.
    - `deactivate`: Deactivates the anaconda virtual environment with a single command instead of the usual `conda deactivate`.


### Prerequisites

These scripts were written to work with unix commands.

They were written to work with `zsh` and require a `.zshrc` file to be located in the $HOME directory.

They also require [anaconda](https://www.anaconda.com/products/distribution) to be installed and working locally.


### Steps to get scripts working

1. Clone this repository into your home folder. `git clone <ssh> ~`
2. Change access permissions of files within the scripts folder. This will allow them to be called from the command line. `chmod +x ~/scripts/*.sh`
3. Setup the path and aliases. `setup.sh`[^1]

If all went well, you should now be able to run `create`, `activate`, and `deactivate` commands from your shell[^1]. 

[^1]: You may need to restart your shell for the command(s) to work.
