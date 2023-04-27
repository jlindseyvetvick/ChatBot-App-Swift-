struct ConversationDelegate {
    /// Creates a String in response to another String.
    
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.contains("app"){
            return  "Why yes, this app is awesome!"
        }
        
        else {
          
            let defaultNumber = question.count % 5
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "That's a great question."
            } else if defaultNumber == 2 {
                return "Seems like you're lucky."
            } else if defaultNumber == 3 {
                return "I haven't thought of that."
            } else if defaultNumber == 4 {
                return "Looks promising."
            } else {
                return "Ask me again tomorrow"
            }

        }
    }
}
