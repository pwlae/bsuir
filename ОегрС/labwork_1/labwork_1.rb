module LabWork
  require 'mysql2'

  class Core
    def initialize
    end

    def increment(item)
      item += 1
    end
  end

  class Dictionary
    def initialize
      #FIXME: Path should not be static
      @dictionary = File.read('/Users/pdanelian/Desktop/dict_ru.txt')
    end

    def word_list
      list = []
      @dictionary.split("\n").each do |word|
        list << word.split('|')[0].tr(' ', '')
      end

      list
    end

    def word_body
      body = []
      @dictionary.split("\n").each do |scheme|
        # get body of each word
        body << scheme.split('|')[1].tr(' ', '').split('/')[0]
      end

      body
    end
  end

=begin
  class Database < Core
    def initialize
      @client = Mysql2::Client.new(
        hostname: 'localhost',
        username: 'root',
        database: 'words'
      )
    end

    def select_query
      @client.query(query)

    end
  end
=end
end

class Text
  # TODO: test project

  include LabWork

  def initialize
    @text = File.read('output')
    @text_array = []
  end

  def word_counter
    word_counter = Hash.new 0
    text_to_array.each do |word|
      word_counter[word] += 1
    end
    word_counter.sort_by { |key, value| puts "#{key}: #{value}" }
    # text_array_without_duplicates.each do
    # p (to_array.length - text_array_without_duplicates.length)
    # p to_array.length
    # p text_array_without_duplicates.length
  end

  def uniq_word
    uniq_word_list = []
    word_counter = Hash.new 0
    text_to_array.each do |word|
      word_counter[word] += 1
    end

    word_counter.sort_by do |key, value|
      uniq_word_list << key
    end

    uniq_word_list
  end

  # def synonym()
  #   Database.new.select_query
  # end

  def text_to_array(text = @text)
    text.split("\n").each do |line|
      line.split.join(' ').split(' ').each do |word|
        @text_array << word.downcase
      end
    end
    @text_array
  end

  def word_with_same_body
    Dictionary.new.word_body.each do |body|
      uniq_word.each do |word|
        if /#{body}/ =~ word
          p word
        end
      end
    end
  end
end

Text.new.word_counter
Text.new.word_with_same_body
