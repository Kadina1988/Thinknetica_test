users = User.create!([
  { name: 'Sasha' },
  { name: 'Masha' }
])
categories = Category.create!([{ title: 'Литература' }, {title: 'Информатика' }, {title: 'История'}])

tests = Test.create!([
  { title: 'ГЛАВНЫЕ ГЕРОИ СКАЗОК', category_id: categories[0].id, author_id: users[0].id },
  { title: 'КОДИРОВАНИЕ ИНФОРМАЦИИ' , category_id: categories[1].id, level: 2, author_id: users[1].id },
  { title: 'ДРЕВНИЙ МИР', category_id: categories[2].id, author_id: users[0].id }])

questions = Question.create!([
  { body: 'Какой герой очень известной волшебной сказки продал свою азбуку?', test_id: tests[0].id },
  { body: 'Единственная птица, у которой есть ушные раковины', test_id: tests[0].id },
  { body: 'Кто написал роман «Отцы и дети»?', test_id: tests[0].id },
  { body: 'Во что Онегин играл сам с собой в доме своего дяди?', test_id: tests[1].id },
  { body: 'Какой математический символ обычно содержится в иррациональном уравнении?', test_id: tests[1].id },
  { body: 'Полный набор символов, используемый для кодирования, называют', test_id: tests[1].id },
  { body: 'Какого оружия не существовало в Древнем мире?', test_id: tests[2].id },
  { body: 'Сколько хромосом у человека?', test_id: tests[2].id },
  { body: 'Какой фрукт упал на голову Архимеду', test_id: tests[2].id }])

answers = Answer.create!([
  { body: 'Чиполлино', question_id: questions[0].id, correct:false },
  { body: 'Буратино', question_id: questions[0].id, correct: false },
  { body: 'Интеграл', question_id: questions[0].id },
  { body: 'синтаксис', question_id: questions[1].id, correct: false },
  { body: 'Скобки', question_id: questions[1].id },
  { body: 'алфавит', question_id: questions[1].id, correct: false },
  { body: 'Лук', question_id: questions[2].id, correct: false },
  { body: 'Рогатка', question_id: questions[2].id, correct: false },
  { body: 'Силу тока', question_id: questions[2].id },
  { body: 'Яблоко', question_id: questions[3].id, correct: false },
  { body: 'Влажность воздуха', question_id: questions[3].id },
  { body: 'Македония', question_id: questions[3].id, correct: false },
  { body: 'Бильярд', question_id:questions[4].id, correct: false },
  { body: 'Домино', question_id:questions[4].id },
  { body: 'Банан', question_id: questions[4].id, correct: false },
  { body: 'Существительное', question_id: questions[5].id, correct: false },
  { body: 'Гепард', question_id: questions[5].id},
  { body: 'Крокодил', question_id: questions[5].id, correct: false },
  { body: 'Гигантский кальмар', question_id: questions[6].id, correct: false },
  { body: 'Белка-летяга', question_id: questions[6].id, correct: false },
  { body: 'Белоголовый орлан', question_id: questions[6].id },
  { body: 'Колуго', question_id: questions[7].id, correct: false },
  { body: 'Всеядное животное', question_id: questions[7].id, correct: false },
  { body: 'Потому что они любят друг друга', question_id: questions[7].id },
  { body: 'Чтобы они не уплывали, когда спят', question_id: questions[8].id },
  { body: 'У насекомых могут быть крылья, у пауков они отсутствуют', question_id: questions[8].id, correct: false },
  { body: 'Крякает, как утка', question_id: questions[8].id }])

  user_profile = UserProfile.create!([
    { user_id: users[0].id, test_id: tests[0].id },
    { user_id: users[0].id, test_id: tests[2].id },
    { user_id: users[1].id, test_id: tests[1].id }
  ])
