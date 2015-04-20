class HashExample
  companies = {
      'RCNTEC' => {
          'website' => 'www.rcntec.com',
          'phone' => '1223445677'
      },
      'LUKOIL' => {
          'website' => 'www.lukoil.com',
          'phone' => '3434346565',
          'twitter' => 'luk-oil'
      }
  }

  my_websites = Array.new
  my_phone = Array.new

  companies.each do |company, contact|
    contact.each do |key, value|
      if key == "website"
        my_websites << value
        elsif key == "phone"
          my_phone << value
        end
      end
    end


  puts my_websites
  puts my_phone
end