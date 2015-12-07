mas = [9, 13, 7, 12, 10, 14, 8, 11, 6]
for i in 1..mas.length - 1
  x = mas[i]
  for j in 0..i - 1
    if mas[i] < mas[j]
        i.downto(j + 1) do |k|
          mas[k] = mas[k - 1]
        end
      mas[j] = x
      break
    end
  end
end
puts mas.join(" ")