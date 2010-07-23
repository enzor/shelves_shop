Factory.define :user do |f|
  f.username "vincenzo"
  f.password "rivello"
  f.password_confirmation "rivello"
  f.email "vincenzo.rivello@gmail.com" 
end


Factory.define :product do |f|
end

Factory.define :promotion do |f|
  f.start  DateTime.now
  f.end  1.year.from_now
end


Factory.define :cart do |f|
end

Factory.define :line_item do |f|
end