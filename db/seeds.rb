# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tabulator Award Data
    tabulators = AwardTabulator.create([ 
        {price: 5,award:400,state: true},
        {price: 6,award:500,state: true},
        {price: 7,award:600,state: true},
        {price: 8,award:700,state: true},
        {price: 10,award:800,state: true},
        {price: 13,award:1000,state: true},
        {price: 15,award:1200,state: true},
        {price: 20,award:1600,state: true},
        {price: 25,award:2000,state: true},
        {price: 30,award:2400,state: true},
        {price: 40,award:3200,state: true},
        {price: 50,award:4000,state: true},
        {price: 60,award:4800,state: true},
        {price: 63,award:5000,state: true},
        {price: 70,award:5600,state: true},
        {price: 80,award:6400,state: true},
        {price: 90,award:7200,state: true},
        {price: 100,award:8000,state: true},
        {price: 110,award:8800,state: true},
        {price: 120,award:9600,state: true},
        {price: 125,award:10000,state: true},
        {price: 130,award:10400,state: true},
        {price: 140,award:11200,state: true},
        {price: 150,award:12000,state: true},
        {price: 160,award:12800,state: true},
        {price: 170,award:13600,state: true},
        {price: 180,award:14400,state: true},
        {price: 190,award:15200,state: true},
        {price: 200,award:16000,state: true},
        {price: 250,award:20000,state: true},
        {price: 200,award:24000,state: true}])
    
# Type Lottery Data
    typeLotteries = TypeLottery.create([
        {type_name: "Dia", status: true},
        {type_name: "Tarde", status: true},
        {type_name: "Noche", status:true},
        {type_name: "Sabado", status: true}
    ])
        