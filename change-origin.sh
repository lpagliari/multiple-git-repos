for dir in *pier* ; do
  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      echo $dir
      cd $dir
      git remote set-url origin git@github.com:pier-digital/$dir.git
    );
  fi
done

