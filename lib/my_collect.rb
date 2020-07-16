def my_collect(array)
  languages = []
  if block_given?
    i = 0
    while i < array.length
    languages << yield(array[i])
    i += 1
  end
  end
  languages
end 






 it "can handle an empty collection" do
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
    expect(counter).to eq(0)
  end

