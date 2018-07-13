#!/home/hoelzer/local/bin/ruby

require 'bibtex'

## Convert bibtex entries to YML format 

bib = BibTeX.open('_data/publist.bib')
File.open('_data/publist.yml','w') {|file| file.truncate(0) }
yml = File.open('_data/publist.yml','w')

@umlaute = {'o' => 'ö', 'a' => 'ä', 'u' => 'ü', 'O' => 'Ö', 'A' => 'Ä', 'U' => 'Ü', 'ss' => 'ß'}

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
		publist[id].title = entry.title.to_s.gsub('{','').gsub('}','').gsub('"','\"')
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
			puts author
			firstname = author.split(',')[1].strip
			lastname = author.split(',')[0].strip
			@umlaute.each do |umlaut, replace|
				firstname = firstname.gsub("{\\\"#{umlaut}\}",replace).gsub("{\\\"\{#{umlaut}\}\}",replace)
				lastname = lastname.gsub("{\\\"#{umlaut}\}",replace).gsub("{\\\"\{#{umlaut}\}\}",replace)
			end		
			new_authors << "#{firstname} #{lastname}"
		end
	end
	new_authors
end

  #author    = {H{\"o}lzer, Martin and Marz, Manja},

  #author    = {Klassert, Tilman E and Br{\"a}uer, Julia and H{\"o}lzer, Martin and Stock, Magdalena and Riege, Konstantin and Zubir{\'\i}a-Barrera, Cristina and M{\"u}ller, Mario M and Rummler, Silke and Skerka, Christine and Marz, Manja and others},


year.each do |y|
	publist.each do |id, pub|
		next if pub.year.to_s != y
		yml << "- title: \"#{pub.title}\"\n"
		yml << "  authors: #{authors(pub.authors)}\n"
		yml << "  year: #{pub.year}\n"
		yml << "  preprint: 0\n"
		yml << "  link:\n"
		yml << "    url: #{pub.url}\n"
		yml << "    display: #{pub.journal}\n\n"
	end
end

