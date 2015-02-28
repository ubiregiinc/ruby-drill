class Query
  def initialize(table)
    @table = table
    @where = []
  end

  def initialize_copy(query)
    @where = @where.dup
  end

  def where(conditions)
    self.dup.instance_eval do
      @where << conditions
      self
    end
  end

  def to_sql
    query = "SELECT * FROM #{@table}"

    if @where.size > 0
      query << " WHERE "

      conditions = []
      @where.each do |hash|
        hash.each do |k, v|
          case v
          when String
            conditions << "#{k} = '#{v}'"
          when Numeric
            conditions << "#{k} = #{v}"
          end
        end
      end

      query << conditions.join(" AND ")
    end

    query
  end
end

p Query.new("accounts").where(id: 1).where(login: "soutaro").to_sql
