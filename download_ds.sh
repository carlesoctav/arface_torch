
wget https://data.mendeley.com/public-files/datasets/hsv83m5zbb/files/499bed88-e291-4516-b52e-4fa34c71d15b/file_downloaded -O komnet.zip
mkdir datasets

unzip -d raw_datasets/ komnet.zip
mv raw_datasets/Face\ dataset raw_datasets/komnet
find ./raw_datasets -name "*.zip" | while read filename; do unzip -o -d "`dirname "$filename"`" "$filename"; done;
