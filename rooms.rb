my_hash = { data: { rooms: [
    { id: 1, room_number: "201", capacity: 50 },
    { id: 2, room_number: "301", capacity: 200 },
    { id: 3, room_number: "1B", capacity: 100 }
  ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 }
    ]
  }
}


# #WTFHASH is given two keys with a shtit ton of values
# #WTFHASH[data: all the information]
# rooms(key) values => array of hashes

room201cap = my_hash[:data][:rooms][0][:capacity]

puts room201cap

puts my_hash[:data][:events][0][:attendees]

# my_hash[:data][:events].each do |event|
#   if event[:room_id] == my_hash[:data][:rooms][:id]
#     puts "ok"
#   else
#     puts "not enough room"
#   end
# end



my_hash[:data][:events].each do |event|
  if event[:room_id] == 1
    if event[:attendees] <= room201cap
      puts "ok"
    else
      puts "not okay"
    end
  end
end
