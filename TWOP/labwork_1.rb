class Labwork1
  def initialize(items)
    @items = items
	end

  def add

	end

	def draw(length)

	end
end

labwork_1 = Labwork1.new([1,2,3])

labwork_1.add


				5
		4				6
	3		5		6		7

[5, 3, 5, 4, 6, 7, 6]

# First should be root
# e.g. get 7
# 7 > 5 then

tree = {
		5 => {
			7 => {
				7 => nil,
				7 => nil
			},
			4 => {
				4 => nil,
				4 => nil
			},
			6 => {
				6 => nil,
				6 => nil
			}
		}
	}

def test(test_tree)
  test_tree.each_with_index do |_, index|
		index.size
	end
end


loop do
  if test(tree) == 2
		p
end
