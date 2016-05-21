cd ../
cp -R material/ tmp/
rm -rf tmp/scss && rm -rf tmp/.sass-cache
zip material.zip tmp
rm -rf tmp
mv material.zip material
cd material