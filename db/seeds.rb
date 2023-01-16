


2.times { User.create(name: Faker::Name.name) }

Category.create([{ title: 'Литература' }, {title: 'Информатика' }, {title: 'История'}])

Test.create([{ title: 'ГЛАВНЫЕ ГЕРОИ СКАЗОК', category_id: 1, author_id: 1 }, { title: 'КОДИРОВАНИЕ ИНФОРМАЦИИ' , category_id: 2, level: 2, author_id: 2 },
  { title: 'ДРЕВНИЙ МИР', category_id: 3, author_id: 1 }])

Question.create([{ body: 'Какой герой очень известной волшебной сказки продал свою азбуку?', test_id: 1 }, {body: 'Полный набор символов, используемый для кодирования, называют', test_id: 2 },
  { body: 'Какого оружия не существовало в Древнем мире?', test_id: 3 }, { body: 'Какой фрукт упал на голову Архимеду', test_id: 3 }])

Answer.create([{ body: 'Чиполлино', question_id: 1 }, { body: 'Буратино', question_id: 1, correct: false }, { body: 'синтаксис', question_id: 2 }, { body: 'алфавит', question_id: 2, correct: false },
  { body: 'Лук', question_id: 3, correct: false }, { body: 'Рогатка', question_id: 3 }, { body: 'Яблоко', question_id: 4 }, { body: 'Банан', question_id: 4, correct: false }])
