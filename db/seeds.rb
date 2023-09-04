
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding data 📝'

array = [ 
    
    {   
        id: 1,
        title: "The Godfather",
        year: 1972,
        runtime: 175,
        director: "Francis Ford Coppola",
        starring: "Mario Puzo, Al Pacino, James Caan",
        short: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
        image_url: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
        genre: "Crime, Drama"
    },
    {
        id: 2,
        title: "The Dark Knight",
        year: 2008,
        runtime: 152,
        director: "Christopher Nolan",
        starring: "Christian Bale, Heather Ledger, Aaron Eckhart",
        short: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTdkJNhyQgUH-VQBVaeczyvAMEi78DeTFRMexMdUxpapinKBf1h",
        genre: "Action, Crime, Drama"
    },
    {
        id: 3,
        title: "Schindler's List",
        year: 1993,
        runtime: 195,
        director: "Steven Spielberg",
        starring: "Liam Neeson, Ralph Fiennes, Ben Kingsley",
        short: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR97mJ8OxvSFGwOCBENKiI6o6fsXbWDf_KqtCzHjHlCfROdpqo0",
        genre: "Biography, Drama, History"
    },
    {
        id: 4,
        title: "Pulp Fiction",
        year: 1994,
        runtime: 154,
        director: "Quentin Tarantino",
        starring: "John Travolta, Uma Rhurman, Samuel L. Jackson",
        short: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNRzwKlBbE6QGNyvO0rGoruofKdYgGK9MeozNwRdWmnDMf8xI",
        genre: "Crime, Drama"
    },
    {
        id: 5,
        title: "Forrest Gump",
        year: 1994,
        runtime: 142,
        director: "Robert Zemeckis",
        starring: "Tom Hanks, Robin Wright, Gary Sinise",
        short: "The history of the United States from the 1950s to the '70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSC1pmwVs3b9KW0IT4ivccOXPYRQbAH2VpOWLwSumVqwAnJ1u8G",
        genre: "Drama, Romance"
    },
    {
        id: 6,
        title: "The Matrix",
        year: 1999,
        runtime: 136,
        director: "Lana Wachowski, Lilly Wachowski",
        starring: "Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss",
        short: "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3MOU9bwdtLj5bMlHioRxzkr2HEyll3bm1qab6D71WulrKJrtY",
        genre: "Action, Sci-Fi"
    },
    {
        id: 7,
        title: "Spider-Man: Across the Spider-Verse",
        year: 2023,
        runtime: 140,
        director: "Joaquim Dos Santos, Kemp Powers, Justin K. Thompson",
        starring: "Shameik Moore, Hailee Steinfeld, Brian Tyree Henry",
        short: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKz79yovAPqs4fiRYszmsith-sdApiuPsQHCOK7S437Ru5AkE2",
        genre: "Animation, Action, Adventure"
    },
    { 
        id: 8,
        title: "It's a Wonderful Life",
        year: 1946,
        runtime: 130,
        director: "Frank Capra",
        short: "James Stweart, Donna Reed, Lionel Barrymore",
        synopsis: "An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQwoAqs6ApRX0qeosRb5ozGnrCZWfST0AJJiP3iJzNK5qcPXssx",
        genre: "Drama, Family, Fantasy"
    },
    {
        id: 9,
        title: "Oppenheimer",
        year: 2023,
        runtime: 180,
        director: "Christopher Nolan",
        starring: "Cillian Murphy, Emily Blunt, Matt Damon",
        short: "The story of American scientist, J. Robert Oppenheimer, and his role in the development of the atomic bomb.",
        image_url: "https://pbs.twimg.com/media/FvUVt3hXgAAxP1H?format=jpg&name=900x900",
        genre: "Biography, Drama, History"
    },
    {
        id: 10,
        title: "WALL·E",
        year: 2008,
        runtime: 98,
        director: "Andrew Stanton",
        starring: "Ben Burtt, Elissa Knight, Jeff Garlin",
        short: "In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxYd3qWb7UlM_UBeis23ZV3SHzJpNy9-aBeScMnEzLHO1zc0wD",
        genre: "Animation, Adventure, Family"
    },
    {
        id: 11,
        title: "Hachi: A Dog's Tale",
        year: 2009,
        runtime: 93,
        director: "Lasse Hallström",
        starring: "Richard Gere, Joan Allen, Cary-Hiroyuki Tagawa",
        short: "A college professor bonds with an abandoned dog he takes into his home.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcThFoS_76_p3OGveanMgjOR-gTgIQo7XYDBBApuzU2tI1XHEoml",
        genre: "Biography, Drama, Family"
    },
    {
        id: 12,
        title: "No Hard Feelings",
        year: 2023,
        runtime: 163,
        director: "Gene Stupnitsky",
        starring: "Jennifer Lawrence, Andrew Barth Feldman, Laura Benanti",
        short: "On the brink of losing her home, Maddie finds an intriguing job listing: helicopter parents looking for someone to bring their introverted 19-year-old son out of his shell before college. She has one summer to make him a man or die trying.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT3fkBbUz91Ghq2e3SkXT6QfMkNhGMwbCK4cbySDaBafqZYFKIc",
        genre: "Comedy, Romance"
    },
    {
        id: 13,
        title: "Mrs. Doubtfire",
        year: 1993,
        runtime: 125,
        director: "Chris Columbus",
        starring: "Robin Williams, Sally Field, Pierce Brosnan",
        short: "After a bitter divorce, an actor disguises himself as a female housekeeper to spend time with his children held in custody by his former wife.",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQy_xqFwJBJlGKxahu1AvfkuPmXKraC7xXG22kywAAJ1gp_1XHw",
        genre: "Comedy, Drama"
    },
    {
        id: 14,
        title: "Everything Everywhere All at Once",
        year: 2022,
        runtime: 139,
        director: "Daniel Kwan, Daniel Scheinert",
        starring: "Michelle Yeoh, Stephanie Hsu, Jamie Lee Curtis",
        short: "A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSHXnPFszcpNapxaCWUSBl3LZezeb-9X_HUKcefCmNZfbPZzmZ5",
        genre: "Action, Adventure, Comedy"
    },
    {
        id: 15,
        title: "Rush Hour",
        year: 1998,
        runtime: 98,
        director: "Brett Ratner",
        starring: "Jackie Chan, Chris Tucker, Ken Leung",
        short: "A loyal and dedicated Hong Kong Inspector teams up with a reckless and loudmouthed L.A.P.D. detective to rescue the Chinese Consul's kidnapped daughter, while trying to arrest a dangerous crime lord along the way.",
        image_url: "https://m.media-amazon.com/images/M/MV5BYWM2NDZmYmYtNzlmZC00M2MyLWJmOGUtMjhiYmQ2OGU1YTE1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
        genre: "Action, Comedy, Crime"
    },
    {
        id: 16,
        title: "It",
        year: 1990,
        runtime: 192,
        director: "Stephen King",
        starring: "Richard Thomas, Tim Reid, Annette O'Toole",
        short: "In 1960, seven pre-teen outcasts fight an evil demon who poses as a child-killing clown. Thirty years later, they reunite to stop the demon once and for all when it returns to their hometown.",
        image_url: "https://m.media-amazon.com/images/M/MV5BYjg1YTRkNzQtODgyYi00MTQ5LThiMDYtNDJjMWRjNTdjZDZlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg",
        genre: "Drama, Horror, Mystery"
    },
    {
        id: 17,
        title: "The Wolf of Wall Street",
        year: 2013,
        runtime: 180,
        director: "Martin Scorsese",
        starring: "Leonardo DiCaprio, Jonah Hill, Margot Robbie",
        short: "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.",
        image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTrqI60p3I82Q67Wh6HEyDC24Orl0qFzSWNX7EH6niO1SnvBsPl",
        genre: "Biography, Comedy, Crime"
    },
    {
        id: 18,
        title: "Gladiator",
        year: 2000,
        runtime: 155,
        director: "Ridley Scott",
        starring: "Russell Crowe, Joaquin Pheonix, Connie Nielsen",
        short: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQo_O8X1L56DAr8hFZz-B8ku7vvcvbrBh5plxWxa_Y1uIWA9Ohr",
        genre: "Action, Adventure, Drama"
    },
    {
        id: 19,
        title: "Mean Girls",
        year: 2004,
        runtime: 97,
        director: "Mark Waters",
        starring: "Lindsay Lohan, Jonathan Bennett, Rachel McAdams",
        short: "Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR-hIzPhaLolvghkLVJIRbCDUW3WXlLhYJkTk1Fpz-RxWYwtiSi",
        genre: "Comedy"
    },
    {
        id: 20,
        title: "Bridesmaids",
        year: 2011,
        runtime: 125,
        director: "Paul Fieg",
        starring: "Kristen Wiig, Maya Rudolph, Rose Byrne",
        short: "Competition between the maid of honor and a bridesmaid, over who is the bride's best friend, threatens to upend the life of an out-of-work pastry chef.",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTv8N4Pfcss3Y10uosDdI7PbJ_br3I4-Pv7D-sXk9cVHr4J43I9",
        genre: "Comedy, Romance"
    }
]

array.each do |o| 
    Movie.create(title: o[:title], year: o[:year], runtime: o[:runtime], director: o[:director], starring: o[:starring], short: o[:short], image_url: o[:image_url], genre: o[:genre])
    end
    
puts 'Seeding complete ✅'