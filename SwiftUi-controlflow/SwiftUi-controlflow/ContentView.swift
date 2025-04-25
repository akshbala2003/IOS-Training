import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI Control Flow Demo")
                .font(.title2)
                .bold()

            Text("If-Else: \(ifElseExample())")
            Text("Switch: \(switchExample(grade: "B"))")
            Text("For Loop: \(forLoopExample())")
            Text("While Loop: \(whileLoopExample())")
            Text("Repeat-While: \(repeatWhileExample())")
            Text("Guard nil: \(guardExample(name: nil))")
            Text("Guard valid: \(guardExample(name: "Akshaya"))")
        }
        .padding()
    }


    // MARK: - Control Flow Functions

    func ifElseExample() -> String {
        let age = 20
        if age >= 18 {
            return "Adult"
        } else {
            return "Minor"
        }
    }

    func switchExample(grade: String) -> String {
        switch grade {
        case "A": return "Excellent"
        case "B": return "Good"
        case "C": return "Fair"
        default: return "Needs Work"
        }
    }

    func forLoopExample() -> String {
        var result = ""
        for i in 1...3 {
            result += "\(i) "
        }
        return result.trimmingCharacters(in: .whitespaces)
    }

    func whileLoopExample() -> String {
        var result = ""
        var i = 3
        while i > 0 {
            result += "\(i) "
            i -= 1
        }
        return result.trimmingCharacters(in: .whitespaces)
    }

    func repeatWhileExample() -> String {
        var i = 0
        var result = ""
        repeat {
            result += "\(i) "
            i += 1
        } while i < 3
        return result.trimmingCharacters(in: .whitespaces)
    }

    func guardExample(name: String?) -> String {
        guard let validName = name else {
            return "No name"
        }
        return "Hello, \(validName)"
    }
}

#Preview {
    ContentView()
}
