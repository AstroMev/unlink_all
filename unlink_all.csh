#!/usr/bin/env tcsh -f

if ($#argv == 0) then
    echo "Usage % $0 [1:symlink1] [2:symlink2] ..."
    exit
endif

foreach file ($*)
    if (! -l $file) then
	echo "$file isn't a link file."
	exit
    endif

    echo $file
    unlink $file
end
