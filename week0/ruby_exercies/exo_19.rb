mails = Array.new
for i in 1 .. 4 do
    mails.push ("jean.dupond.0#{i*2}@email.fr")
end
for j in 5 .. 25 do
    mails.push ("jean.dupond.#{j*2}@email.fr")
end

puts mails

