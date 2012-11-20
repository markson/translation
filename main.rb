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
end

get '/users' do
	<<-EOF
	#{u.user_name}
	#{u.first_name}
	#{u.last_name}
	EOF
end
