# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        return nil if self.empty?
        sorted = self.sort
        sorted[-1] - sorted[0]
    end

    def average
        return nil if self.empty?
        self.sum.to_f / self.length
    end

    def median
        return nil if self.empty?
        sorted = self.sort
        mid = sorted.length / 2
        if sorted.length.odd?
            sorted[mid]
        else
            sorted[(mid - 1)..mid].average
        end
    end

    def counts
        counter = Hash.new(0)
        self.each { |ele| counter[ele] += 1 }
        counter
    end

    def my_count(val)
        counts = self.counts
        counts.include?(val) ? counts[val] : 0
    end

    def my_index(val)
        return nil if !self.include?(val)
        self.each.with_index do |ele, i|
            return i if ele == val
        end
    end

    def my_uniq
        self.select.with_index do |ele, idx| 
            !self[0...idx].include?(ele) 
        end
    end

    def my_transpose
        transposed = Array.new(self.length) { Array.new }
        (0...self.length).each do |i|
            self.each do |sub_arr|
                transposed[i] << sub_arr[i]
            end
        end
        transposed
    end

end


