class Card 
    attr_reader :face_value
    attr_writer :cards

    def initialize (face_value)
        @face_value = face_value
        @face_up = false
        @cards=[]
    end

    def hide 
        @face_up = false 
    end

    def reveal  
         @face_up = true 
         puts face_value
    end
    def ==(card2)
        self.face_value== card2.face_value
    end 

    
    # def to_s 
    #     @face_value.is_a?(String)
    # end

end