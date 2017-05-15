for dir in * ; do
  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      cd $dir
      # git push --delete origin 1.0.0-alpha
      git tag 1.0.0-alpha2
      git push origin 1.0.0-alpha2
    );
  fi
done