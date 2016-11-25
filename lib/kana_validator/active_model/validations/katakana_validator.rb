module ActiveModel
  module Validations
    class KatakanaValidator < EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute) if /^[#{Moji.kata}\s　]*$/.match(value).nil?        
      end
    end
  end
end
