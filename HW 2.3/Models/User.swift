//
//  User.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 07.04.2022.
//

struct User {
    let username: String
    let password: String
    let people: Person
    
    static func getUsers() -> User {
        User(
            username: "User",
            password: "Password",
            people: Person(
                name: ["Ваня", "Денис", "Егор", "Илья"],
                nickName: ["Кука", "Дэнчик", "Егорчикас", "Беля"],
                position: ["Нападающий", "Говорит что Нападающий", "Вратарь"],
                workingLeg: ["Правая", "Обе"],
                favoriteDrink: ["Вода и 🍹", "Не вода 🥃🤪", "Ананасовый сок 🍼", "Пивчик🍺"],
                aboutPlayer: ["Голеодор, много забивает и не забивает еще больше, игра головой лучшая в команде, даже иногда от ударов головой соперники страдают🤼‍♂️, слоган: <Бил, бью и буду бить⚽️>", "Сказал что нападающий, но голы не главное, поэтому особо не забивает. Золотые слова нападающего Системы: <Зачем бежать вперед, если надо будет бежать назад> а также: <Пил, пью и буду пить😁🍺>", "Говорит что фанат Ивана Кукарских, изучает его стиль игры и применяет на практике, не слушает партнеров по команде, пасы отдает неохотно, прям реально применяет стиль игры Ивана, но в последнее время начал забивать, красава🍭", "Лучший вратарь и лучший тренер, если что, то это он сказал так указать "],
                image: ["kukaImage", "denisImage", "himichevImage", "belyakImage", "labelTeamImage", "backgroundImage"]
            )
        )
    }
}

struct Person {
    let name: [String]
    let nickName: [String]
    let position: [String]
    let workingLeg: [String]
    let favoriteDrink: [String]
    let aboutPlayer: [String]
    let image: [String]
}
