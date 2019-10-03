# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 収入費目
IncomeItem.create(title: '給与')
IncomeItem.create(title: 'ボーナス')
IncomeItem.create(title: '配当金')
IncomeItem.create(title: '株式売却益')
IncomeItem.create(title: '副収入')
IncomeItem.create(title: 'その他')

# 支出費目
OutcomeItem.create(title: '食費')
OutcomeItem.create(title: '外食費')
OutcomeItem.create(title: '住宅費')
OutcomeItem.create(title: '水道光熱費')
OutcomeItem.create(title: '通信費')
OutcomeItem.create(title: '交通費')
OutcomeItem.create(title: '医療費')
OutcomeItem.create(title: '生活雑貨・日用品')
OutcomeItem.create(title: '教育費')
OutcomeItem.create(title: '交際費')
OutcomeItem.create(title: '保険料')
OutcomeItem.create(title: '趣味・娯楽費')
OutcomeItem.create(title: '冠婚葬祭')
