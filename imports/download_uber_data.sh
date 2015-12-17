input="uber_data_urls.txt"
while IFS= read -r var
do
  wget -P uber_data $var
done < "$input"
