require 'yaml'

def shuffle arr 
	arr.sort_by{rand}
end

def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
yaml_string = File.read filename
	YAML::load yaml_string
end


Dir.chdir '/Users/thaczuk/Downloads/playlist'

unshuffledSongs = Dir['/Users/thaczuk/Downloads/playlist/*.{MP3,mp3}']
puts 'Your shuffled array: '
puts shuffle unshuffledSongs

puts 'What would you like to call this playlist?'
playlist_name = gets.chomp

playlist_name = playlist_name + '.m3u'
puts playlist_name

print "#{unshuffledSongs.length} in playlist.\n"
shuffle unshuffledSongs

if File.exist?(playlist_name)
	puts "\nPlaylist " + playlist_name + ' already exists. Exiting.'
	exit
else
	yaml_save unshuffledSongs, playlist_name
end

puts 
read_array = yaml_load playlist_name

if read_array == unshuffledSongs
	puts 'Playlist saved successfully'
else 
	puts 'ERROR'
end