class Card 
    attr_reader :face_value, :face_direction

    def initialize (face_value, face_direction)
        @face_value = face_value
        @face_direction = face_direction
    end

    def hide 
        if @face_direction == false
            return true
        end
        false   
    end

    def reveal  
        if @face_direction == true
            return true
        end
        false   
    end

    
    






end