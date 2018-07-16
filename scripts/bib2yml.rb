#!/home/hoelzer/local/bin/ruby

require 'bibtex'

## Convert bibtex entries to YML format 

bib = BibTeX.open('_data/publist.bib')
File.open('_data/publist.yml','w') {|file| file.truncate(0) }
yml = File.open('_data/publist.yml','w')

@umlaute = {'o' => 'ö', 'a' => 'ä', 'u' => 'ü', 'O' => 'Ö', 'A' => 'Ä', 'U' => 'Ü', 'ss' => 'ß'}
special_i = '{\ \'\i}'.gsub(' ','')
@special = {special_i => '&iacute;'}
#Zubir{\'\i}a

class Pub
	attr_accessor :title, :authors, :year, :url, :journal
end

publist = {}
year = []
id = nil

bib.each do |entry|
	if entry.type == :article
		id = entry.key
		publist[id] = Pub.new

		publist[id].authors = entry.authors.to_s 
		publist[id].title = entry.title.to_s#.gsub('{','').gsub('}','').gsub('"','\"')
		publist[id].year = entry.year.to_s
		publist[id].url = entry.url.to_s
		publist[id].journal = entry.journal.to_s

		year.push(entry.year.to_s)
	end
end
year.uniq!.sort!.reverse!

def authors(authors)
	new_authors = ''
	c = 0
	authors.split(' and ').each do |author|
		c += 1
		if c > 8
			new_authors << " *et al*."
			break
		else	
			new_authors << ", " if new_authors.size > 1
			firstname = author.split(',')[1].strip
			lastname = author.split(',')[0].strip
			@umlaute.each do |umlaut, replace|
				firstname = firstname.gsub("{\\\"#{umlaut}\}",replace).gsub("{\\\"\{#{umlaut}\}\}",replace)
				lastname = lastname.gsub("{\\\"#{umlaut}\}",replace).gsub("{\\\"\{#{umlaut}\}\}",replace)
			end		
			@special.each do |special, replace|
				firstname = firstname.gsub(special, replace)
				lastname = lastname.gsub(special, replace)
			end
			new_authors << "#{firstname} #{lastname}"
		end
	end
	new_authors
end

def title(title)
	puts title if title.include?('Myco')
	new_title = title
	['\emph{', '\textit{'].each do |rep|
		while new_title.include?(rep)
			replacement = new_title.split(rep)[1].split('}')[0]
			new_title = new_title.split(rep)[0] \
			+ '*' \
			+ new_title.split(rep)[1].split('}')[0] \
			+ '*' 
			puts replacement
			new_title << title.split("#{replacement}\}")[1]
		end
	end
	puts new_title if title.include?('Myco')
	new_title = new_title.gsub('{','').gsub('}','').gsub('.\\','.')
end


year.each do |y|
	publist.each do |id, pub|
		next if pub.year.to_s != y
		book = '0'
		book = '1' if pub.title.include?('Software')
		yml << "- title: \"#{title(pub.title.gsub('"','\"'))}\"\n"
		yml << "  authors: #{authors(pub.authors)}\n"
		yml << "  year: #{pub.year}\n"
		yml << "  preprint: 0\n"
		yml << "  book: #{book}\n"
		yml << "  link:\n"
		yml << "    url: #{pub.url}\n"
		yml << "    display: #{pub.journal}\n\n"
	end
end
