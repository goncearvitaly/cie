Given('I land on home screen') do
  puts("Landed on home screen")
end

When('I press on Movie card') do
  find_element(id: "00000000-0000-000f-7fff-ffff0000000c").click
end

Then('I should see Movie details page') do
  value =  find_element(id: "00000000-0000-0025-7fff-ffff0000008d").text
  if value != "Movie Details"
    fail("expected value is 'Movie details', actual value is #{value}")
  end
end

Then('I should add Movie to favorites') do
  find_element(id: "00000000-0000-0025-7fff-ffff000001b7").click
end

Then('I should add Movie to favorites') do
  value2 =  find_element(id: "00000000-0000-0027-7fff-ffff00000306").text
  if value2.include? "added to favorites"
    puts("Success")
  end
end