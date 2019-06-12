require "f1sales_helpers/version"

module F1SalesHelpers
  class Error < StandardError; end
end

class String
  def colons_to_hash(split_exp = /(\n[A-Z].*?:)/, insert_line_break = true)
    insert(0, "\n") if insert_line_break
    gsub!('*', '')
    data = split(split_exp).drop(1)
    is_key = true
    key = ''
    result = {}
    data.each do |content|
      if is_key
        key = content.downcase.gsub(/[^0-9a-z ]/i, '')
        key.gsub!(' ', '_')
        result[key] = '' if result[key].nil? or result[key] == ''
      else
        result[key] = content.strip if result[key] == ''
      end

      is_key = !is_key
    end

    result
  end 
end
