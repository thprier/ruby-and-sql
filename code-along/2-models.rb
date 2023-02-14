# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
#puts "There are #{Company.all.count} companies"

company = Company.new
company["name"] = "Apple"
company["city"] = "Cupertino"
company["state"] = "CA"
company["url"] = "https://apple.com"
company.save

# puts company.inspect

company2 = Company.new
company2["name"] = "Amazon"
company2["city"] = "Seattle"
company2["state"] = "WA"
company2.save

company3 = Company.new
company3["name"] = "Twitter"
company3["city"] = "San Francisco"
company3["state"] = "CA"
company3.save



#puts "There are #{Company.all.count} companies"
# 3. query companies table to find all row with California company
all_companies = Company.all
#puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
#puts cali_companies.inspect

# 4. query companies table to find single row for Apple

# 5. read a row's column value

# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})
#puts amazon.inspect

amazon["url"] = "https://amazon.com"
amazon.save

#puts amazon.inspect

# 7. delete a row
twitter = Company.find_by({"name" => "Twitter"})
puts twitter.inspect
twitter.destroy

puts "There are #{Company.all.count} companies"