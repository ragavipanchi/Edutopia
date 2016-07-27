class ActiveRecord::Base
  class << self
    def values_sql_for_columns_and_attributes(columns, array_of_attributes)   # :nodoc:
      connection_memo = connection
      array_of_attributes.map do |arr|
        my_values = arr.each_with_index.map do |val,j|
          column = columns[j]
 
          if val.nil? && column.name == primary_key && !sequence_name.blank?
             connection_memo.next_value_for_sequence(sequence_name)
          elsif column
            if column.respond_to?(:type_cast_from_user)
              connection_memo.quote(column.type_cast_from_user(val), column)
            elsif column.respond_to?(:type_cast)
              connection_memo.quote(column.type_cast(val), column)
            else
              connection_memo.quote(val)
            end
          end
        end
        "(#{my_values.join(',')})"
      end
    end
  end
end
