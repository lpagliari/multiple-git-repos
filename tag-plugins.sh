for dir in * ; do
  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      cd $dir &&
        # git tag --delete 1.0.0-alpha.2018.11 || true &&
        git tag 1.0.0-alpha.2018.11 &&
        # git push --delete origin 1.0.0-alpha.2018.11 || true &&
        git push origin 1.0.0-alpha.2018.11
    );
  fi
done
