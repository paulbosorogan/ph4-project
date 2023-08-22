
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
        trailer: "https://imdb-video.media-imdb.com/vi1348706585/1434659607842-pgv4ql-1616202346191.mp4?Expires=1692636824&Signature=rh6cHXVzZpcWSEKlA1IjXAdNWJX~8ryMcRXoTeA7jFEfBNth9xi3tUNawZo86vlRISj3bZ5oAAWOMR3-Wsk4QmtTYnJJIgT0VJPQkStbYEvX8OZu12Nv6sj3P8jW83ZjPvx5J7FIgmq62OLvy6xSfdeDCXP9ljSborasG37O5fKS0gJn~ywskImYJLGPcW57zkxXovC73AJNz9ehI5gxcX8fV3pqII1-k4zuEFFyBHMf95xJXHioxUnKl6KCzErQgref0GcSBOPQfl4Cycp80LOjnlIHGEvsCIoAJ8pt7Fg2pEXqj47mXHgmm76Bv6kj1bXWbrL3Z9B6yZTP8wducQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi324468761/1434659607842-pgv4ql-1563712918369.mp4?Expires=1692637531&Signature=OKVmdXPzE3njz1X5J23~7AQxdIGeUsVhFcFF-5IicBsALj3qe~ea2mKEStVxbaVhe6CO0F2rwiVQWZKy~K2Lm1Mwj1wuJjwuAjeDzLVbk1HbL5AyPDi~1C6fEBGaIEP-TLYWHXNEFW-aqXOBz8bIgy5vwvp9YZORYf9bssTUmnzu766JdwiGmth0LT1x7IpQEYMIh2lZcJikomoUwT~kvam2SKapVv24YV0vxuSond0X5ulJ2DGXtnHY6QZZBW-uk~qLfTnRCfTBXb6Xk9FMPumNqToo7KljUJE0vNzsI-F6qhs149wRXnKEUG2A2rKrzWCytl4GNJDOHJKZQ8-I2w__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi1158527769/1434659607842-pgv4ql-1564710232825.mp4?Expires=1692637176&Signature=rQXbwf55QYPKe-nLVBW5z90x8vMemOPuLETho~VxeUPCnnuvChKnnI5I8hOeXAZl5Hzep8tWDYHTY57xS9TrQ9LKBx5KQ2ufGqXhZfAyvDCMOpJMkvbpPvPoCUmgPb10WP~vQRD1oP5ASUGc7JLYn46pSM0sDhVC~e9zW-6EnPzL9ZOx6na3-YisYwbLuyW5mZoBO8K1HLoaMvxVEXs2OdWRKydLYv6yva2644IW2k0FX3X~MDv2zxj86yDUabksCIVdzMg7aoeg7I0e~Zg7BvFqXZl3uo307wm9FwuEeSY6kCV3XdsfJiQWBgP0O~hJ8VBkwibt-gzqTuUezNejIw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi2620371481/1434659607842-pgv4ql-1450205469045.mp4?Expires=1692637116&Signature=F2IjBcK4XZkd4sXMVIr-t9XSeolGdllgKeZugmWLmmeUoHBxR4WrRk0PBN~LrzQZRjw4etbDK5NnEY2XSSi0EjVHjZ7TEVOsEgFhLlNWwEnZgYUvgiq6R7h3hoYVAAaHU~QiqSJK1N9FsLslGRRPKNRtII379fQOh-loG9reOW7JOJaMNptPcYSEWe14sZSN6FnNNFcExmIZO9gqIg6UyODcdUoTs5oF7WtAXkEP2~jqqPgog16lCluit-7ju9IfVI7Q9l-w~ySNAW03yEb~JlsMugzigoEALvI2bJWAgwxKTiInD0RK82Dc3bMXt1q6GUOX87AedwDkOoHOqbgkPQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
        genre: "Crime, Drama"
    },
    {
        id: 5,
        title: "Forrest Gump",
        year: 1994,
        runtime: 142,
        director: "Robert Zemeckis",
        starring: "Tom Hanks, Robin Wright, Gary Sinise",
        synopsis: "The history of the United States from the 1950s to the '70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSC1pmwVs3b9KW0IT4ivccOXPYRQbAH2VpOWLwSumVqwAnJ1u8G",
        trailer: "https://imdb-video.media-imdb.com/vi3567517977/1434659607842-pgv4ql-1564505606861.mp4?Expires=1692637176&Signature=cCvJUSeYjDcPfhXfKb58f42nLbddO5a4nEddg2ZO1nS9qGuaevgNDmjCGKFN0QiSupUKAn-UitwOKii69t2-1tap0v0IQ2coSSIENPopaDgahPznavXuZcGCOohQikdayhHfzXAdhe1WiGLTzfoFbOSZu-IrWi8dDKmCwsxY79TFhMYk0~xb9utmXBg93K2l4Lig24~t94Yizq6kKaRrRTus5w9ZZmZ4wBQQYw3HK4Vd86shX8xfQVz73akUHNCbUHQmaskbNCI-Zc6NGyagCogcLAAJLmOjje8e1y0IDJDJbBOWin7dy0uqhZFtPxuKQtUpxnjomHgbNN1bgtD9Cg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi1032782617/1434659607842-pgv4ql-1606954147857.mp4?Expires=1692637883&Signature=WrKe-8d9-3e7ouXVpHYJkAQr9Vn7fMabS1kFWi7WUDVLVFOI9YmU5FIR5IKOPqaRPI5HtVSF5J1f7o01KUm6dwPGrKbE2rAc4INXj6xogCKdYe1SwKYE7JmQfWl5jkwy8wPWkPIyGO-RkNms4diV7ZB3G2bWt48cPqwgB1poZywQOB2unk-FjLGEp-6ot-FIglHxF94Cdc107UnGGqyBKn8DMHDZQi7073XQs67PkWG80z2e2n7W28UmPM4jL5TCMFz-QRBMZKTgoKvS7d9iR3KrkaU~t6zbuK8iDdwhlBy7zhmZGD-780Zdr6Go-Eo9gKYcuXdHJZEOZWDckWGvAg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://www.imdb.com/video/vi829277209/?ref_=ext_shr_lnk",
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
        trailer: "https://imdb-video.media-imdb.com/vi2284045593/1434659607842-pgv4ql-1675202168652.mp4?Expires=1692638096&Signature=lLqYXygMyHpKOjHtaqra7I8pvrsCpIxfoT~nfwFZpm5fuWfk2L7X45JbeKhpcfRJuxsw97CIq7t6o-yD6u~3Uym7HlUzs~SYpWMdzeKb8fFL-GhTvqd3d78~EpGJiepI1f1IjpPkBSoqUgdja4wo~fZb42ZB5Dl4U1BDk1fyJn21zKx5lWwjWMbgfco1ccfFmRoiY6TvhJWwDF9CkJztZRigD~WGSr57Bm1qm50sQtiE52rlyA7JCgNqUslmekFkw3RrUn7ERIxv5wxN~~Lb39JOOwuEpzwrhoxNudupHKbUbt~YrQNEJD4Tn9E52ZqjwYCIyBHqnYNGawjsv~E2YQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://youtu.be/bK6ldnjE3Y0?t=5",
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
        trailer: "https://imdb-video.media-imdb.com/vi2192703769/1434659607842-pgv4ql-1616203103302.mp4?Expires=1692638153&Signature=Ft9KAt-L8YWj8WwP9UML4FuZrUQxtvCjU4IJcLfXnVie4f4KQlqltgLaeyIlGlo7nFLwPTMjDNfoheYjJHVHp9NWzduil4Lj4R0HBSBzhRWxJWvYMUBBFyxASdUBiTBvDymVDgo-Kr-uz5fZu5MZQHDrWEsEu36VvE1BROpVYMbdBumTxadqFppcE09AI6crKSFR7Gop~RqwoPHZSSupa27eqMZoPe1KLx~Ob~9jKg3SJ7GLO86KQvMqJBGccREmKR0M3rc5t7ERhpk-FAq5HpC02i1t~1sQUBeKKMF3Cl5cF3p1SruUj5RlzfSgowuG261O1aL29MHaNbLPOXgoXA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi2296906777/1434659607842-pgv4ql-1563701881811.mp4?Expires=1692638333&Signature=p~L6jpDBQTUlay6swsdB23FY5tnArXsNKCcuOoltiQ11xl2AhIwSeiPttgmUAMZSTHzPza2Pqg3gkzPpHYNk9i9TlobyJEp14K1-w0kVKLyoXuNGpLpUiEnMN~SOWQVwJyz4Na~AnBBmCp8EMsvv0KZQ7~l9KjP2UwbGng3ds-Ky3GviV7uiHTcExFA4TJwbyZ33q9RMRKK9md82VPGpArRryDFVV4s2u6lJr9z5keDNxJq6HzdmamrFmJsqYJXkjncJlDSzT8MLG-J4jrQGjqbe3Tu1bvgpUE6ORzWVBXA4vPTtjXICeuSIqpA7ZeO~mvyvhYkOnVuN5tO06hAx1Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi3394028569/1434659607842-pgv4ql-1686234072815.mp4?Expires=1692638433&Signature=jDgBKZTLp8m92jXIdKjHDN-5kzyIvtdaWBWi5YT~b~ivh7uGvHRXwRAY2GzNkxCxQx4eca5Ua42BIIP5PeJlsB4OgurM3A2IMjK2vGok5M60H2NIVTuiyrZdRTzrHMETvKUlmSz2ebk84M8daWljy2wV9RZ36dfFIb0liV~oz6tEhf167IIlxXS1JdKZmSaN43405ZTGQaVgm9li5iyGQo6DXE0I-HUAKJ7G-j~bLiXXHjrOtBlUNZ1N-IFCdIn8-dJVktOg0R0fDADYRfpT0keqlb2eRxHAnxGkyPMWEcvmIuOG3APk4-fYMt8b9UKugCcDagQcJ6Lvecubs63MHg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi2747054617/1434659607842-pgv4ql-1538175423177.mp4?Expires=1692639483&Signature=KLtX1PvIYM-EfDDY2hodmuD6JFiM7LqauNyaC7doVLT6rqLQE9pj9qzfIsJpgcLAoRYkfotg0w8luHvss8lkt0vdmAuu4IPtgzxOpx2SHtibw88dkzGI~VC8LER9nq0Lt3Q8y6W~bCoKFqZ3P7b9hBbYs22XZSuBQs4TkTk6Hvp5jvb0vGYyletImDFXzRSMqDa5580XOhMfRDf8IWYabaZgtAUx3-U6INu8i2vGKj~VhvOM4fg9es83eQNPP8y6QPRXY-qFW4MLmvxjnhTPKjIPSDCxOc7GlD3wNAHpzErxyryuaHp3T92tHYf6xPjL~4paW9097kR5AvtwapYgEw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi1708573209/1434659607842-pgv4ql-1655379584923.mp4?Expires=1692639281&Signature=X-iFGPruee1eizOQHGXmNTpm3moy1dwNc4duTVLJbbnTEk7tVu2aLoQ3bbQotjn6lGnOZwUhSwJBAL6y-5pcsaK~Adjbi7TWoYplUK9THbpRougF~un7450xbPLvVSkQ5sf0OiJkJ8GfbCZGUQPJ8BNJBCoHJM5F-xQ4Nfb-V0YslstNe80rMR4Dc1YGGLcOefcL4FNEn9m73eBkghw4FvQfrL-tnZU7-R4rSdOV4Y9yPLrwu3a8vE2UtxxIiXKWi1wH~z2dCU1m1sT-6Fmz-LNmD861B1IJM-e6J~JqXtG9lqVG4i8UVRshVim1b3vM7FBvR1RUKWI6U3Ql~H4Vag__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi579274265/1434659607842-pgv4ql-1564609889450.mp4?Expires=1692639144&Signature=l8JTQq-AR05aqcygL4EYgY~X2T4VH34X7MU47sc8i7F65Mj1aB1uhxAuqEB~~QPIie~kyIMA1-1N2fNhFcQRj0UfWJxxZ80re2VUUwUZqJ7TC1CwLHPzEZd-XMvI692A~zfWkXldUNcpUO3Br8MSbAPkuf2PHCGOufURB3WlMV5dZsCmYIHO7EtPwBitCj5eeYgs540voE9itDANX6X0LpW-nBjjM-jlMk7QA7WSn-SltsI-UZgVdQn~7ZexD7RcsUsONNwW23UWT8fyWkcDIT12ThI7Slj8sRrZ-V4sVHJ~QN832XXMnJQ93Sow3Lqu---J5ZD-Ct3tyyTIn3alJQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi3536037913/1434659607842-pgv4ql-1616203027124.mp4?Expires=1692639011&Signature=Ywgbyp2GdTOu~RHmMS~S805cfMND2QFO-rFXOgkrzlEb9HorU5i9bc4ktwCtOwg5feuFfKUOg8n0HMvnj5vOTalX4ErmNNZpIJ1xjaxSI2mqQfRVFKRzGVoTzGfB1hFqeeuvSFN3x5653ca2-GtORUJ9KEk9Bas5PlwNEGxr2x~c0HJF5xpVKM3L8p5diCeIh3IBJtlfLbId~4FjU33PSQxOJLBBCjqKMXl8IMq5bpcHQ5hsGD0HDB2KKbCTdXefK1KSgSr8b~KlDaFEHbVdvcioYfCFwPEn3-JFbW8rpqiF4485PLrNkjwNEV0MzPh6dlIparqq2PbepjYZVzFhXw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi2312218649/1434659607842-pgv4ql-1616202335617.mp4?Expires=1692639392&Signature=rEkK6fDloArHAwSp3ev8nxVDscYGvDFA-HWikfFFw6VaS6pkOOqlPGBugLL-edOmDpzSCgrVAKvwboyp0-V6J-bC9ZmgZYzLa2BmBuQcUt4TyquIPkHYkuphpipzfz9uzBKgDt7A2cKMlkE1lDR90yZlLoHRWze4ERFJZTMQCoasfKbUeWNwq2uZS4Z2oULKcyJD4oEJxnO4dHzsxIYn9Rs6Ko16tXwRfmEY~F0Hk-mtMs1ivnwmPg8fW5fVt4JQzrHLYyQsZ4Rg6abA4UKmYLytBxuF9dXlXdXdX7L3AJzFMZjxPZg7~1DpNPWqnR8dwZfOVtNw0nSNR-WgmhkDug__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi2628367897/1434659607842-pgv4ql-1473794595177.mp4?Expires=1692640304&Signature=sjWweRPuo-VbmLhC3VJ04U5aVJN97Fxpm7G96knTMekS7Ljh1GehLlxjyplDvxpB94sdQ8D4Hh~40zDUUceIThuw52yXMSj3J-MAB-6Cm4KTSpjNaHEl4Rpc69BMaHH1d6atRGsNjix5eRSeK-oIjA5XSnJpnhdz5j40VUunkR7Ucj1YRoWnEMjWqj5HfjLd-PNHTMGgHiPdtxCb5Z5GkH9maMSpyqgXSa8ZR8QvLd9X5L0BT-ZkYwMioi4cSZwVHYTTTF3JMICvW5ZKgcET~-TvFyWdsM-WLeUsHGh8pFmLIjtJorPC~-kmgOSpsuC1Hna8~Fl4vuHetsiGXrPJUg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi3868524825/1434659607842-pgv4ql-1564199282818.mp4?Expires=1692639710&Signature=ZD9pI4yPNCMSGcRk7iWD23sAvsOHJhoki1~ga07Tj~WLCEmj1WQqmJQigobk~LARKevXN9LrolL~AEfSA5ypfSeU9qz29zttnaYF8POT8fqPcyZwmUw4jUFrVayHC7WWvJR38gGZobZraKtoJ4iTMW8RqjqRYnh1usOpMr8o1Wo28wbxyhNll~6iJ414~ZOHKKbuVkfnRP6v~XXwJByR3BO1RMPLiJE5MGOCHbl3NWSAZFT-eJ8rM3tZuga5T~2M0~KQxb3lNUNq6pAYBkXzS9006lbjKOw5cz~dFNciv-G3OkQ8zDukBfw0llLnJDHOPVEiNe2wb~ihq5rFvk~Nkg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        trailer: "https://imdb-video.media-imdb.com/vi4215119129/1434659607842-pgv4ql-1616204081150.mp4?Expires=1692640439&Signature=TFB~av~T5k9-lm1nN6xTf3y5SSEvQXspjM4RCdTzTYLk~a4oa7cpHwbB6gEiPv59w9GrcCHDHxCksyjswwppYynuliV-yuhJXkSRiFUh38yC6zrJo0xD2gBd3th4baXdB5GhgJIKjeqAixfMdzDo9cxeLyNCgo10~AIbgwWxKdatr78Mu0I8E376PpVHGX4pGclNNyTTkAkpEFYB78zaaBVcMsLEChzJTMP-OFPdtQLerdds~SQo83L8zmk6FrNmKvkQRIWGz72A1ISFt5sYyE7xB7oHx7oRdjMkvlsnyCdMvOxmKvWDBPt40bOjIk1E60BaGge9yW0ql4xSLHIJFg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
        genre: "Comedy, Romance"
    }
]

array.each do |o| 
    Movie.create(title: o[:title], year: o[:year], runtime: o[:runtime], director: o[:director], starring: o[:starring], short: o[:short], image_url: o[:image_url], trailer: o[:trailer], genre: o[:genre])
    end
    
puts 'Seeding complete ✅'