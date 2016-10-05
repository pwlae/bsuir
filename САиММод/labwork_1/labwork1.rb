def all_values
  result = []
  (1..2).reverse_each do |signal_source|
    (0..2).each do |signal_queue|
      (0..1).each do |signal_chenal_1|
        (0..1).each do |signal_chenal_2|
          result << [
            signal_source,
            signal_queue,
            signal_chenal_1,
            signal_chenal_2
          ].join
        end
      end
    end
  end
  result
end

def sorted_result
  result = []
  all_values.each { |_| p _ }
  half_length = all_values.length / 2
  for i in (0..half_length)
    result << all_values[i]
    result << all_values[i + half_length]
  end
  2.times { result = result.reverse.drop(1).reverse }
  result
end

def input
  result = []
  sorted_result.each do |mask|
    result << queue(mask)
  end
  p result.compact
end

def queue(value)
  if busy?(value[1])
    false
    value if [system_1(value), system_2(value)].all?
  else
    value
  end
end

def system_1(value, drop = true)
  return true if drop
  false
  true if busy?(value[2])
end

def system_2(value, drop = false)
  return true if drop
  false
  true if busy?(value[3])
end

def busy?(value)
  value == '0' ? false : true
end

input
