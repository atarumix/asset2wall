#!/bin/bash
minimum=204800 #
minwidth=1200
destdir=/mnt/c/var/lib/wall
if [ -f ${destdir} ]; then
  mkdir -p ${dsstdir}
fi
pushd /mnt/c/Users/${LOGNAME}/AppData/Local/Packages/Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy/LocalState/Assets
for file in * ; do
  size=`stat -c%s $file`
  # echo $size $file
  if [ $size -ge $minimum ]; then
    width=`identify -format '%w' $file`
    if [ $width -ge $minwidth ]; then
      echo $size $width $file
      base=`basename $file`
      if [ ! -e $destdir/$base.jpg ]; then
        echo $size $file
        cp $file $destdir/$base.jpg
      fi
    fi
  fi
done
popd
