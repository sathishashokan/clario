def reference_code(code)
    slash_to_dash = code.tr('/', '-')
    arr = slash_to_dash.split("-")
    if arr.length == 2
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
puts reference_code("K7DTY/BXV6T/2")
puts reference_code("K7DTY/BXV6T-3")
