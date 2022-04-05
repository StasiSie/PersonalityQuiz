//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Игорь Богданов on 05.04.2022.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
    
    static func formQuestion() -> [Question] {
        [
            Question(
                title: "Что едите?",
                answers: [
                    Answer(title: "Steik", animal: .dog),
                    Answer(title: "Ryba", animal: .cat),
                    Answer(title: "Kukuruza", animal: .turtle),
                    Answer(title: "Morkovka", animal: .rabbit)
                ],
                type: .single
            ),
            Question(
                title: "Что предпочитаете?",
                answers: [
                    Answer(title: "Plavat'", animal: .dog),
                    Answer(title: "Spat'", animal: .cat),
                    Answer(title: "Est'", animal: .turtle),
                    Answer(title: "Obnimatsya", animal: .rabbit)
                ],
                type: .multiple
            ),
            Question(
                title: "Любите поездки на машине?",
                answers: [
                    Answer(title: "Da", animal: .dog),
                    Answer(title: "Navernoe da", animal: .cat),
                    Answer(title: "Navernoe net", animal: .turtle),
                    Answer(title: "Net", animal: .rabbit)
                ],
                type: .range
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case range
}

enum Animal: Character {
    case dog = "🐕"
    case cat = "🐈"
    case turtle = "🐢"
    case rabbit = "🐇"
    
    var definition: String {
        switch self {
        case .dog:
            return "Sobaka"
        case .cat:
            return "Kot"
        case .turtle:
            return "Tscherepacha"
        case .rabbit:
            return "Krolik"
        }
    }
}

