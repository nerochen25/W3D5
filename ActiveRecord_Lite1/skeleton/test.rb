def table_name=(table_name)
  # ...
  name = []
  table_name.split('_').map do |piece|
    name += piece.downcase + '_'
  end

  name[0...-1].join('')
end
