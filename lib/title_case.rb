class TitleCase
  # Correctly formats input string to title case as specified
  def self.format_title(title)
    # Lower case input
    title = title.downcase
    # Split sentence to wordsa
    title = title.split(' ')
    # Capitalise word if is first, last or not in exempt list
    exempt_list = ['a', 'an', 'and', 'the', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by']
    (0...title.length).each do |index|
      if index == 0 || index == title.length - 1 || !exempt_list.include?(title[index])
        title[index] = title[index].capitalize
      end
    end
    # Re-join words and return
    title.join(' ')
  end
end
