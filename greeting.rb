def greeting
    for i in 1 ... ARGV.length
        puts"#{ARGV[0]} #{ARGV[i]}"
    end
end

greeting