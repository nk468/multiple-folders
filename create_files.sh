while IFS= read -r line; do
#   extension="${line##*.}"
#   echo "Extension: $extension"
  if [[ $line =~ .*\. ]]; then
    touch $line
  else
    mkdir -p $line
  fi
done < filesList.txt