def all_words_capitalized?(arr)
    arr.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
    domains = ['.com', '.net', '.io', '.org']
    urls.none? do |url|
        domains.each do |domain|
            return false if url.include?(domain)
        end
        false
    end
end

def any_passing_students?(students)
    students.any? do |student|
        student[:grades].sum / student[:grades].length >= 75
    end
end



