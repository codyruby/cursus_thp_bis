mails = Array.new
for i in 1 .. 9 do
mails.push ("jean.dupond.0#{i}@email.fr")
end
for j in 10 .. 50 do
    mails.push ("jean.dupond.#{j}@email.fr")
end
puts mails
