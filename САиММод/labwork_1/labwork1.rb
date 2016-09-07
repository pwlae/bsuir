# TODO: chance
# p1 if false
# 1 - p1 if true

all_values = %w(
	1000
	1001
	1010
	1011
	1100
	1101
	1110
	1111
	1200
	1201
	1210
	1211
	2000
	2001
	2010
	2011
	2100
	2101
	2110
	2111
	2200
	2201
	2210
	2211
)

_all_values = all_values.dup

possible_values = %w(
	1000
	1001
	1010
	1011
	1110
	1111
	1210
	1211
	2000
	2001
	2010
	2011
	2110
	2111
	2210
	2211
)


all_values.each_with_index do |value, i|
  all_values.each_with_index do |_value, j|
		if [possible_values.include?(value), possible_values.include?(_value)].all?
			print [i,j]
			print " [#{value}, #{_value}]\n"
		end
	end
end
