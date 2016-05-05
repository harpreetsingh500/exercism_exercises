class ETL
  def self.transform(legacy)
    shiny = {}
    legacy.each do |score, letters|
      letters.each { |char| shiny[char.downcase] = score }
    end
    shiny
  end
end
