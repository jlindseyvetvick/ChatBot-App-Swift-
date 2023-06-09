import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    //var messageCount = 0
    var messages = [openingLine]
    
    var messageCount: Int {
        return messages.count
    }

    
    /// Add a new question to the conversation
    func add(question: String) {
        //messageCount += 1
        print("Asked to add question: \(question)")
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        //messageCount += 1
        print("Asked to add answer: \(answer)")
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        // return Message(date: Date(), text: "Hello, world!", type: .answer)
        
        //        if index % 2 == 0 {
        //            return Message(date: Date(), text: "Question \(index / 2)", type: .question)
        //        } else {
        //            return Message(date: Date(), text: "Answer \(index / 2)", type: .answer)
        //        }
    
        return messages[index]
        
    }
}
