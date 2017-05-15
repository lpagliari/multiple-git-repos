for dir in * ; do
  echo $dir

  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      cd $dir
      git remote -v
    );
  fi
done

