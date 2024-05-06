function calc_percentage(original_val, percentage)
    return original_val * (percentage / 100)
end

function calc_percent_of_total(part, total)
    return (part / total) * 100
end

function calc_percent_inc_or_dec(original_val, new_val)
    percent_change = ((new_val - original_val) / original_val) * 100
    if percent_change > 0
        return "Increase of $percent_change%"
    elseif percent_change < 0
        return "Decrease of $(abs(percent_change))%"
    else
        return "No change"
    end
end

# Example usage:
original_val = 100
percentage = 20
part = 30
total = 200
new_val = 120

println("1. $percentage% of $original_val is: ", calc_percentage(original_val, percentage))
println("2. $part is $total, which is ", calc_percent_of_total(part, total), "% of the total.")
println("3. Going from $original_val to $new_val represents a ", calc_percent_inc_or_dec(original_val, new_val))

