#Program shortcuts
alias tree='tree -CF --dirsfirst'
alias vi='vim'
alias vmd='/Applications/VMD\ 1.9.3.app/Contents/vmd/vmd_MACOSXX86'
alias pymol='/Volumes/Macintosh\ HD/Applications/MacPyMOLX11Hybrid.app/Contents/MacOS/MacPyMOL'

alias slackdark='cat /Users/nathanlim/.slack_dark_theme.js >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js'

# SSHFS Mounting Aliases
alias mount-gp3='sshfs -o Ciphers=arcfour,Compression=no,auto_cache -o follow_symlinks -o volname=gp limn1@gplogin3.ps.uci.edu: ~/Mounts/gp'
alias mount-tscc='sshfs -o Ciphers=arcfour,Compression=no,auto_cache -o follow_symlinks -o volname=tscc limn1@tscc-login.sdsc.edu: ~/Mounts/tscc'
alias mount-mobleylab='sshfs -o Compression=no,auto_cache -o follow_symlinks nathanlim@titanx.bio.uci.edu: ~/Mounts/mobleylab'
alias mount-whatbox='sshfs -o auto_cache -o follow_symlinks -o volname=falcon anonymous926@falcon.whatbox.ca: ~/Mounts/falcon'
alias mount-unraid='sudo mount -t nfs 128.200.204.55:/mnt/user/Research /mnt/unraid/Research'

# SSH Tunnels
alias tunnel-lab='ssh -i ~/.ssh/id_rsa -N -f -L localhost:8899:localhost:8888 titanx -p 3110'
alias tunnel-unraid='ssh -N -f -L :8869:localhost:8888 nathanlim@unraid.bio.uci.edu -p 926'
alias tunnel-falcon='ssh -ND 8080 anonymous926@falcon.whatbox.ca'
alias tunnel-plex='ssh -N -f -L :32400:localhost:32400 nathanlim@128.200.204.55 -p 926'

# SSH Login aliases
alias gp1='ssh -YC limn1@gplogin1.ps.uci.edu'
alias gp2='ssh -YC limn1@gplogin2.ps.uci.edu'
alias gp3='ssh -YC limn1@gplogin3.ps.uci.edu'
alias hpc='ssh -YC limn1@hpc.oit.uci.edu'
alias hydration='ssh -YC limn1@gplogin3.ps.uci.edu ; cd /work/cluster/limn1/Hydration_project/'
alias lab-website='ssh -YC mobleyla@mobleylab.org'
alias lab-desktop='ssh -YC limn1@limn1-labdesktop.bio.uci.edu'
alias tscc='ssh -YC limn1@tscc-login.sdsc.edu'
alias falcon='ssh anonymous926@falcon.whatbox.ca'
alias unraid='ssh nathanlim@128.200.204.55 -p 926'

# Falcon VPN
alias falcon-vpn='sudo openvpn --config /home/nathanlim/Documents/openvpn/Falcon.ovpn &'
alias falcon-ftp='lftp sftp://anonymous926@falcon.whatbox.ca:22'

#ls aliases
alias ls="gls"
alias ls="gls -lFh --color=auto --group-directories-first"
alias lt="gls -lFhtr --color=auto  --group-directories-first"
alias la='gls -Ah --color=auto --group-directories-first'
alias l='gls -CF --color=auto --group-directories-first'

#Directory Shortcuts
alias github='cd /home/nathanlim/Github'

# get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#Create parent directories on demand
alias mkdir='mkdir -pv'

# handy short cuts #
alias h='history'
alias j='jobs -l'

# Parenting changing perms on / #
#  alias chown='chown --preserve-root'
 # alias chmod='chmod --preserve-root'
  #alias chgrp='chgrp --preserve-root'

# Rsync
alias crsync='rsync -azhSP'
alias tunnel-rsync="echo 'rsync -azhSP -e 'ssh -A user@proxy ssh' ./src root@target:/dst' "

alias nb-dark='jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88% -T'
alias nb-light='jt -t grade3 -fs 95 -altp -tfs 11 -nfs 115 -cellw 88% -T'


function pv_pigz {
   cores=${2:-4}
   dir="${1%/*}"
   echo "Compressing(x$cores) to $dir.tgz"
   tar cf - $dir | pv -s $(du -sb $dir | awk '{print $1}') -cN $dir | pigz -9R -p $cores > $dir.tgz
}

function pv_unpigz {
   file=${1%/}
   echo "Extracting..."
   pv -cN $file $file | unpigz | tar -xf -
}

eval "$(thefuck --alias)"

ppm2mpg () {
    ffmpeg -r 30 -pattern_type glob -i "${1}*.ppm" -vcodec libx264 -vf scale=-2:1080,format=yuv420p "${2}.mp4"
    #ffmpeg -r 30 -i "${2}.mp4" -codec:v mpeg4 -flags:v +qscale -global_quality:v 0 -codec:a libmp31ame "${2}.avi"
}


