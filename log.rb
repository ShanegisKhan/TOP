$nestingDepth = 1
$testString = ""

def log description_of_block, &block    
    indent = "  " * $nestingDepth
    puts indent + "Staring #{description_of_block} now!"
    $nestingDepth += 1
    blocksValue = block.call
    puts indent + "...Finished #{description_of_block}, returning: #{blocksValue}" 
end


log "outer block" do 
    log "inner block" do
        5
    end

    log "yet another block" do
        "I like Thai Food!"
    end
    false
end