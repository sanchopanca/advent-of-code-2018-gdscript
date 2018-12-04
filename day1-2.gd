extends SceneTree

func file_to_list_of_strings(file_name):
    var file = File.new()
    file.open(file_name, file.READ)
    var content = file.get_as_text()
    file.close()
    return content.split('\n')


func find_frequency():
    var frequencies_changes = file_to_list_of_strings('./day1-1.txt')
    var seen_frequencies = {}
    var result_frequency = 0
    for i in range(1000):  # I hope I would not need to iterate more than that
        for frequency in frequencies_changes:
            result_frequency += int(frequency)
            if seen_frequencies.has(result_frequency):
                return result_frequency
            seen_frequencies[result_frequency] = 1
            
func _init():
    var result_frequency = find_frequency()
    print(result_frequency)
    quit()
