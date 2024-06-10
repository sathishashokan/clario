def reference_code(code)
    slash_to_dash = code.tr('/', '-')
    slash_to_dash.upcase! #Change lowercase to uppercase if present
    arr = slash_to_dash.split("-")
    if arr.length == 1
        if arr[0].match?(/^[A-Z0-9]{5}$/)
            return slash_to_dash
        end
    elsif arr.length == 2
        # unless arr[arr.length-1].match?(/^[A-Z0-9]{5}$/)
        #     return "Invalid substudy reference code: '#{arr[length-1]}' is not valid"
        # end
        if arr[arr.length-1] == "1"
            return "Invalid substudy reference code: '#{arr[length-1]}' is not valid"
        end
        return code
    elsif arr.length == 3
        if arr[arr.length-1] == "1"
            return "Invalid substudy reference code: '#{arr[length-1]}' is not valid"
        end
        arr.pop
        study_code = arr.join("-")
    end
end

puts reference_code("K7DTY-BXV6T")
puts reference_code("K7DTY-3")
puts reference_code("K7Dty/BXV6T/2")
puts reference_code("K7DTY/BxV6t-3")
