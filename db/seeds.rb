# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    met = Museum.create(name: "Metroplitan Musuem of Art", borough: "New York")
    moma = Museum.create(name: "Metroplitan Musuem of Modern Art", borough: "New York")
    MNH = Museum.create(name: "Musuem of Natural History", borough: "New York")
    bk = Museum.create(name: "Brooklyn Musuem", borough: "Brooklyn")
    bam = Museum.create(name: "BAM", borough: "Brooklyn")
    qm = Museum.create(name: "Queens Mueums", borough: "Queens")

