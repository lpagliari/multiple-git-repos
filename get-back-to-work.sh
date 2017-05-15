for dir in * ; do
  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      echo $dir
      cd $dir
      git pull --rebase
    );
  fi
done
