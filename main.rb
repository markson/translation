require 'sinatra'

f = File.open('users.csv')

result_array = []

class Users 
	attr_accessor :id, :user_name, :first_name, :last_name
end

f.each do |l|
	u = Users.new
	attribute_array = l.split(',')
	u.id = attribute_array[0] 
	u.user_name = attribute_array[1] 
	u.first_name = attribute_array[2] 
	u.last_name = attribute_array[3] 
	result_array << u
end

get '/users' do
	<<-EOF
	#{result_array[0].user_name}
	#{result_array[0].first_name}
	#{result_array.first.last_name}
	EOF
end
