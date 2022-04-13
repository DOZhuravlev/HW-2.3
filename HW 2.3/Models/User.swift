//
//  User.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 07.04.2022.
//

struct User {
    let username: String
    let password: String
    let people: [Person]
    
    static func getUser() -> [User] {
        [
            User(
                username: "User",
                password: "Password",
                people: [
                    Person(
                        name: .vanya,
                        nickName: .kuka,
                        position: .forward,
                        workingLeg: .right,
                        favoriteDrink: .water,
                        aboutPlayer: .aboutKuka
                    ),
                    Person(
                        name: .denis,
                        nickName: .dan,
                        position: .saidForward,
                        workingLeg: .right,
                        favoriteDrink: .notWater,
                        aboutPlayer: .aboutKuka
                    )
                ]
            )
        ]
    }
}

struct Person {
    let name: NamePlayer
    let nickName: SecondNamePlayer
    let position: Position
    let workingLeg: Leg
    let favoriteDrink: Drink
    let aboutPlayer: AboutPlayerSaid
}

enum NamePlayer: String {
    case vanya = "Ваня"
    case denis = "Денис"
}

enum SecondNamePlayer: String {
    case kuka = "Кука"
    case dan = "Дэнчик"
}

enum Position: String {
    case forward = "Нападающий"
    case saidForward = "Говорит что Нападающий"
}

enum Leg: String {
    case left = "Левая"
    case right = "Правая"
}

enum Drink: String {
    case water = "Вода и 🍼"
    case notWater = "Не вода 🥃🤪"
}

enum AboutPlayerSaid: String {
    case aboutKuka = "Голеодор, много забивает и не забивает еще больше, игра головой лучшая в команде, даже иногда от ударов головой соперники страдают🤼‍♂️, слоган: <Бил, бью и буду бить⚽️>"
    case aboutDan = "Сказал что нападающий, но голы не главное, поэтому особо не забивает. Золотые слова нападающего Системы: <Зачем бежать вперед, если надо будет бежать назад> а также: <Пил, пью и буду пить😁🍺>"
    case egor = "Говорит что фанат Ивана Кукарских, изучает его стиль игры и применяет на практике, не слушает партнеров по команде, пасы отдает неохотно, прям реально применяет стиль игры Ивана"
    case belyak = "Лучший вратарь и лучший тренер, если что, то это он сказал так указать "
}
