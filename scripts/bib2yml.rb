#!/home/hoelzer/local/bin/ruby

require 'bibtex'

## Convert bibtex entries to YML format 

bib = BibTeX.open('_data/publist.bib')
File.open('_data/publist.yml','w') {|file| file.truncate(0) }
yml = File.open('_data/publist.yml','w')

@umlaute = {'o' => 'ö', 'a' => 'ä', 'u' => 'ü', 'O' => 'Ö', 'A' => 'Ä', 'U' => 'Ü', 'ss' => 'ß'}
special_i = '{\ \'\i}'.gsub(' ','')
special_o = '\`{o}'
special_o_diff = '{\`o}'
@special = {special_i => '&iacute;', special_o => '&ograve;', special_o_diff => '&ograve;'}
#Zubir{\'\i}a

@team = {'Martin Hölzer' => '<b>Martin Hölzer</b>', 'Ruman Gerst' => '<b>Ruman Gerst</b>', 'Marie Lataretu' => '<b>Marie Lataretu</b>', 
'Sebastian Krautwurst' => '<b>Sebastian Krautwurst</b>', 'Lisa-Marie Barf' => '<b>Lisa-Marie Barf</b>', 'Sandra Triebel' => '<b>Sandra Triebel</b>'}

class Pub
	attr_accessor :title, :authors, :year, :url, :journal, :supp, :acknow, :section
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
		if entry.supp
			publist[id].supp = entry.supp.to_s
		else
			publist[id].supp = '0'
		end
		if entry.acknow
			publist[id].acknow = entry.acknow.to_i
		else
			publist[id].acknow = '0'
		end		
		if entry.section
			publist[id].section = entry.section.to_i
		else
			publist[id].section = '0'
		end
		year.push(entry.year.to_s)
	end
end
year.uniq!.sort!.reverse!

def authors(authors)
	new_authors = ''
	c = 0
	authors.split(' and ').each do |author|
		c += 1
		if c > 12
			new_authors << " *et al*."
			break
		else	
			puts author
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
				if firstname == "Daniel"
					puts lastname
					puts @special
					end

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
		submitted = '0'
		acknow = '0'
		book = '1' if pub.title.include?('Software {D}edicated') || pub.title.include?('Virus {B}ioinformatics')
		submitted = '1' if pub.journal.include?('Submitted') 
		submitted = '2' if pub.journal.include?('bioRxiv') || pub.journal.include?('medRxiv') || pub.journal.include?('Preprints') || pub.journal.include?('Authorea') || pub.journal.include?('Submitted') && pub.acknow != 1
		acknow = '1' if pub.acknow == 1
		yml << "- title: \"#{title(pub.title.gsub('"','\"'))}\"\n"
		authors_string = authors(pub.authors)
		@team.each do |author, bold_author|
			authors_string = authors_string.sub(author, bold_author)
		end
		yml << "  authors: #{authors_string}\n"
		yml << "  year: #{pub.year}\n"
		yml << "  preprint: 0\n"
		yml << "  submitted: #{submitted}\n"
		yml << "  book: #{book}\n"
		yml << "  supp: #{pub.supp}\n"
		yml << "  acknow: #{acknow}\n"
		yml << "  section: #{pub.section}\n" # 0 == Misc, 1 == Transcriptomics, 2 == Genomics, 3 == Viruses, 4 == Tools
		yml << "  link:\n"
		yml << "    url: #{pub.url}\n"
		yml << "    display: #{pub.journal}\n\n"
	end
end

