require "csv"

class ImportCsv
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      Text.create!(
        genre: row["genre"],
        title: row["title"],
        content: row["content"]
      )
    end
  end

  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      Movie.create!(
        genre: row["genre"],
        title: row["title"],
        url: row["url"]
      )
    end
  end
end
