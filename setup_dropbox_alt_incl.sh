# 17319

function setup()
{
    CFG=$1
    DATA=$2

    [[ -z "$CFG" ]]  && echo "ERROR: config folder is not defined" && exit
    [[ -z "$DATA" ]] && echo "ERROR: data folder is not defined" && exit

    mkdir $CFG
    HOME=$CFG dropbox start -i
    ln -s $CFG/Dropbox $DATA
}
