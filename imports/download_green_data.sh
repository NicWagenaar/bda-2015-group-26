input="green_data_urls.txt"
while IFS= read -r var
do
  wget -P green_data $var
done < "$input"
