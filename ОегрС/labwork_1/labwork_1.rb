module LabWork
  require 'mysql2'

	class Core
		def initialize
		end

		def increment(item)
			item += 1
		end
	end

	class Database < Core
		def initialize
			@client = Mysql2::Client.new(
				{
					hostname: '',
					username: '',
					database: ''
				}
			)
	  end

		def select_query()
		end
	end

	class Text < Core
		def initialize
	  end

		def to_array
		end
	end
end



class Text
  # TODO: test project
  def initialize
    @text = File.read('/Users/pdanelian/Documents/changelog.txt')
    @text_array = []
  end

  def counter
    word_counter = Hash.new 0
    text_to_array.each do |word|
      word_counter[word] +=1
    end
    word_counter.sort_by {|key,value| puts "#{key}: #{value}"}
    # text_array_without_duplicates.each do
    # p (to_array.length - text_array_without_duplicates.length)
    # p to_array.length
    # p text_array_without_duplicates.length
  end

  def text_to_array(text = @text)
    text.split("\n").each do |line|
      line.split.join(' ').split(' ').each do |word|
        @text_array << word
      end
    end
    @text_array
  end
end

Text.new.counter
