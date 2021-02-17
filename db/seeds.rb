# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Museum.destroy_all
    Review.destroy_all
    User.destroy_all  


    met = Museum.create(name: "Metropolitan Musuem of Art", borough: "New York")
    moma = Museum.create(name: "Metropolitan Musuem of Modern Art", borough: "New York")
    MNH = Museum.create(name: "Museum of Natural History", borough: "New York")
    bk = Museum.create(name: "Brooklyn Museum", borough: "Brooklyn")
    bam = Museum.create(name: "BAM", borough: "Brooklyn")
    qm = Museum.create(name: "Queens Museum", borough: "Queens")


    

