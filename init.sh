sageprefix=$(cat ./config.txt)

echo "Creating $sageprefix ..."
mkdir -p $sageprefix
if [ $? -eq 0 ]
then
  echo "done."
fi
