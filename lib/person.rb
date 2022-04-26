# your code goes here
require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
    end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
        # if num <= 10 && num >= 0 
        #     @happiness = num
        # elsif num > 10
        #     @happiness = 10
        # else 
        #     @happiness =  0 
        # end
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
        # if num <= 10 && num >= 0
        #     @hygiene = num
        # elsif num > 10
        #     @hygiene = 10
        # else 
        #     @hygiene =  0 
        # end
    end

    def happy?
       @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # num = @hygiene += 4
        # self.hygiene=(num)
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end





