def nyc_pigeon_organizer (data)
  final = {}
  
  data.each do |attribute, stat|
    stat.each do |sub_attribute, pigeon|
      pigeon.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  
  final_keys = final.keys
  
  data.each do |attribute, stat|
    if attribute == :color
      stat.each do |sub_attribute, pigeon|
        pigeon.each do |name|
          final_keys.each do |bird_name|
          final[name][:color] << 
          path.push(sub_attribute.to_s) if name == final.keys
        end 
      end 
    end 
  end 
  
  
    
  return final 
end 