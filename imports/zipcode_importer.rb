require 'pg'
require 'json'

def main
  # Set these variables to your own database info
  dbhost = ""
  dbname = ""
  dbuser = ""
  dbpass = ""
  dbport = 5432

  # Start the db connection
  conn = PG.connect(host: dbhost, dbname: dbname, user: dbuser, password: dbpass, port: dbport)

  # Load the zipcodes
  file = File.read("nyc_zipcodes.geojson")
  zipcode_data = JSON.parse(file)

  # Insert the data into the db
  features = zipcode_data["features"]
  features.each do |json|
    sql = sql_from_json(json)
    res = conn.exec(sql)
  end

  # Close the db connection
  conn.close
end

def sql_from_json(json)
  zipcode = json["properties"]["postalCode"]
  borough = json["properties"]["borough"]
  po_name = json["properties"]["PO_NAME"]
  geo_data = json["geometry"]
  sql = "INSERT INTO zipcodes (zipcode, borough, po_name, polygon) VALUES ('#{zipcode}', '#{borough}', '#{po_name}', ST_GeomFromGeoJSON('#{geo_data.to_json}'))"
end

main
