# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# added by travis gem
[ -f /Users/nathanlim/.travis/travis.sh ] && source /Users/nathanlim/.travis/travis.sh
export SPARK_HOME=/tmp/spark-2.3.0-bin-hadoop2.7
export PATH=/bin:/Library/TeX/texbin://anaconda/bin:/Users/nathanlim/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/MacGPG2/bin:/opt/X11/bin
export PYTHONPATH=/python:
export SPARK_HOME=/tmp/spark-2.3.0-bin-hadoop2.7
export PATH=/tmp/spark-2.3.0-bin-hadoop2.7/bin://anaconda/envs/mmft/bin:/bin:/Library/TeX/texbin://anaconda/bin:/Users/nathanlim/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/MacGPG2/bin:/opt/X11/bin
export PYTHONPATH=/tmp/spark-2.3.0-bin-hadoop2.7/python:/python:
export MMTF_REDUCED=$HOME/Research/MMFT/mmtf-pyspark/resources/mmtf_reduced_sample/
export MMTF_FULL=$HOME/Research/MMFT/mmtf-pyspark/resources/mmtf_full_sample/

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
