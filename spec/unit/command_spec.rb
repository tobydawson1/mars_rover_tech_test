require 'command'

    describe Command do

        before :each do
            @command = Command.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
        end

        it 'can input and store the commands' do
            expect(@command.grid_size).to eq("5 5")
            expect(@command.start_one).to eq("1 2 N")
            expect(@command.movement_one).to eq("LMLMLMLMM")
            expect(@command.start_two).to eq("3 3 E")
            expect(@command.movement_two).to eq("MMRMMRMRRM")
        end

    end