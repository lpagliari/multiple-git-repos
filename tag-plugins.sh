TAG="1.0.0-alpha.2019.07.1"
for dir in * ; do
  if [[ -d $dir  ]] &&  [[ -d $dir/.git ]]; then
    (
      cd $dir &&
        # Delete any pre-existing tag with the same name.
        # Only use this if you're replacing an existing tag
        # git tag --delete $TAG || true &&
        # git push --delete origin $TAG || true &&
        git tag $TAG &&
        git push origin $TAG
    );
  fi
done

# demais repos:
# git tag $TAG && git push origin $TAG
