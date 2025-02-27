#!/bin/bash
texfile="$2"
pdffile="$1"
#mupdf "$pdffile" &>/dev/null &
zathura "$pdffile" &>/dev/null &
mupid="$!"
muwinid="0"
nummps=$(xdotool search --class "Zathura" getwindowname %@ | grep -n "$pdffile" | cut -d":" -f1)
while [ -z $nummps ] ; do
    sleep 0.1
    nummps=$(xdotool search --class "Zathura" getwindowname %@ | grep -n "$pdffile" | cut -d":" -f1)
done
echo -n "$(xdotool search --class "Zathura" | sed -n "$nummps p")"
# try to return focus to GVIM
xdotool search --class --name "${texfile}.*GVIM" windowactivate &>/dev/null
exit 0
