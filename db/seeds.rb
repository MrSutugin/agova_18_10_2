require 'csv'

Dir.glob("#{Rails.root}/db/settlement/*.csv") do |file|
  next if file == '.' or file == '..'

  CSV.read(file, headers: true).each do |row|

    country = Country.find_or_create_by!(
      name: row['country']
    )

    region = Region.find_or_create_by!(
      name: row['region'],
      country: country
    )

    municipality = Municipality.find_or_create_by!(
      name: row['municipality'],
      region: region
    )

    settlement = Settlement.find_or_create_by!(
      name: row['name'],
      addressshort: row['address_short'],
      address: row['address'],
      population: row['population'],
      children: row['children'],
      oktmo: row['oktmo'],
      latitude: row['latitude_dd'],
      longitude: row['longitude_dd'],
      municipality: municipality
    )
  end

end

