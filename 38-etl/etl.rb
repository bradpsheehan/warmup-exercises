module ETL
  extend self

  def transform(old)
    old.each_with_object Hash.new do |(key, values), new_hash|
      values.each do |value|
        new_hash[value.downcase] = key
      end
    end
  end

end
