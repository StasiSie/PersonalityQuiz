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
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыбы", animal: .cat),
                    Answer(title: "Кукуруза", animal: .turtle),
                    Answer(title: "Морковока", animal: .rabbit)
                ],
                type: .single
            ),
            Question(
                title: "Что предпочитаете?",
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Есть", animal: .turtle),
                    Answer(title: "Обниматься", animal: .rabbit)
                ],
                type: .multiple
            ),
            Question(
                title: "Любите поездки на машине?",
                answers: [
                    Answer(title: "Да", animal: .dog),
                    Answer(title: "Наверное да", animal: .cat),
                    Answer(title: "Наверное нет", animal: .turtle),
                    Answer(title: "Нет", animal: .rabbit)
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
            return "Песики любят стейки, плавать и одназначно кататься на машине"
        case .cat:
            return "Котики любят рыбу, спать и возможно кататься на машине"
        case .turtle:
            return "Черепахи любят есть, особенно кукурузу, но вот кататься на машине скорее не любят"
        case .rabbit:
            return "Кролики жуют морковку, очень любят обниматься, но очень не любять поездки на машине"
        }
    }
}

