echo 'repos with uncommitted changes: '

for dir in * ; do
  if [[ -d $dir  ]] && [[ -d $dir/.git ]]; then
    (
      cd $dir
      # do we have any change on repo?
      if [ 1 -ne `git status | grep 'nothing to commit' | wc -l` ]; then
        echo $dir
        git status -s
      fi
    );
  fi
done

echo
echo 'repos with unpushed changes: '

for dir in * ; do
  if [[ -d $dir  ]] && [[ -d $dir/.git ]]; then
    (
      cd $dir
      # do we have any unpushed commit on repo?
      if [ 0 -ne `git status | grep 'Your branch is ahead of' | wc -l` ]; then
        echo $dir
      fi
    );
  fi
done

echo
echo 'repos on feature-branches: '

for dir in * ; do
  if [[ -d $dir  ]] && [[ -d $dir/.git ]]; then
    (
      cd $dir
      # are we on master branch?
      if [ 1 -ne `git status | grep 'On branch master' | wc -l` ]; then
        echo $dir": "$(git rev-parse --abbrev-ref HEAD)
      fi
    );
  fi
done
