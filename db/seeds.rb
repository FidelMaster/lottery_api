# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tabulator Award Data
    tabulators = AwardTabulator.create([ 
        {price: 5,award:400,status: true},
        {price: 6,award:500,status: true},
        {price: 7,award:600,status: true},
        {price: 8,award:700,status: true},
        {price: 10,award:800,status: true},
        {price: 13,award:1000,status: true},
        {price: 15,award:1200,status: true},
        {price: 20,award:1600,status: true},
        {price: 25,award:2000,status: true},
        {price: 30,award:2400,status: true},
        {price: 40,award:3200,status: true},
        {price: 50,award:4000,status: true},
        {price: 60,award:4800,status: true},
        {price: 63,award:5000,status: true},
        {price: 70,award:5600,status: true},
        {price: 80,award:6400,status: true},
        {price: 90,award:7200,status: true},
        {price: 100,award:8000,status: true},
        {price: 110,award:8800,status: true},
        {price: 120,award:9600,status: true},
        {price: 125,award:10000,status: true},
        {price: 130,award:10400,status: true},
        {price: 140,award:11200,status: true},
        {price: 150,award:12000,status: true},
        {price: 160,award:12800,status: true},
        {price: 170,award:13600,status: true},
        {price: 180,award:14400,status: true},
        {price: 190,award:15200,status: true},
        {price: 200,award:16000,status: true},
        {price: 250,award:20000,status: true},
        {price: 200,award:24000,status: true}])\
    
# Type Lottery Data
    typeLotteries = TypeLottery.create([
        {type: 'Dia', status: true},
        {type: 'Tarde', status: true},
        {type: 'Noche', status:true},
        {type: 'Sabado', status: true}
    ])
        