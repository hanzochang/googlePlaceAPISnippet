module Csv
  class Parser
    attr_reader :csv, :names, :types, :addresses

    def initialize(file)
      parse(file)
    end

    private

    def parse(file)
      @names = []
      @addresses = []
      @types = []

      CSV.foreach(file, headers: true) do |row|
        @names << row[1]
        @types << row[5]
        @addresses << row[6]
      end
    end
  end
end
