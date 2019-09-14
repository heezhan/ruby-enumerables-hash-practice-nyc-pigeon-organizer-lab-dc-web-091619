def nyc_pigeon_organizer (data)
  final = {}
  
  data.each do |attribute, stat|
    stat.each do |sub_attribute, pigeon|
      pigeon.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  
  data.each do |attribute, stat|
    if attribute == :color
      stat.each do |sub_attribute, pigeon|
        pigeon.each do |name|
          final[name][:color] << sub_attribute.to_s
        end 
      end 
    end 
  end 
  
    data.each do |attribute, stat|
    if attribute == :gender 
      stat.each do |sub_attribute, pigeon|
        pigeon.each do |name|
          final[name][:gender] << sub_attribute.to_s
        end 
      end 
    end 
  end 
  
    data.each do |attribute, stat|
    if attribute == :lives 
      stat.each do |sub_attribute, pigeon|
        pigeon.each do |name|
          final[name][:lives] << sub_attribute.to_s
        end 
      end 
    end 
  end 
  
  return final 
end 