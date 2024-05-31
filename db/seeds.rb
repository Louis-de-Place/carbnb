require 'date'
require 'cloudinary'
require 'open-uri'

Offer.delete_all
User.delete_all

users = [
  { first_name: 'Thomas', last_name: 'Mascheretti', birth_date: Date.new(1990, 3, 11), rating: 4.8, email: 'admin@admin.com', password: 'admin123'},
  { first_name: 'John', last_name: 'Doe', birth_date: Date.new(1980, 1, 1), rating: 3.5, email: 'john.doe@example.com', password: 'password123' },
]

users.each do |user|
  User.create!(user)
end

addresses = [
  "10 Rue de la Paix, 75002 Paris",
  "52 Rue Mouffetard, 75005 Paris",
  "25 Rue des Francs Bourgeois, 75004 Paris",
  "14 Rue de Rivoli, 75001 Paris",
  "5 Rue de Charonne, 75011 Paris",
  "42 Rue du Faubourg Saint-Antoine, 75012 Paris",
  "8 Rue de la Roquette, 75011 Paris",
  "20 Avenue de la Porte de la Villette, 75019 Paris",
  "128 Rue La Fayette, 75010 Paris",
  "15 Rue du Faubourg Montmartre, 75009 Paris",
  "6 Rue des Archives, 75004 Paris",
  "45 Rue du Faubourg Saint-Honoré, 75008 Paris",
  "66 Avenue des Champs-Élysées, 75008 Paris",
  "30 Avenue des Champs-Élysées, 75008 Paris",
  "21 Rue du Mont Thabor, 75001 Paris",
  "7 Rue de la Paix, 75002 Paris",
  "31 Avenue George V, 75008 Paris",
  "26 Place Vendôme, 75001 Paris"
]

offers = [
  {
    brand: 'Aston Martin',
    model: 'DB7 coupé Zagato',
    year: 2004,
    price: 2800,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/421/10770421_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/421/10770421_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/421/10770421_Vue%2003.jpg"
    ],
    descriptions: [
      "Experience the timeless elegance and power of the 2004 Aston Martin DB7 Coupé Zagato. This rare gem features a striking design by the renowned Italian coachbuilder Zagato, combining luxurious comfort with exceptional performance. With its powerful V12 engine, this Aston Martin delivers an exhilarating driving experience. Perfect for special occasions or simply enjoying a luxurious ride, the DB7 Zagato is a testament to the craftsmanship and prestige of the Aston Martin brand."
    ]
  },
  {
    brand: 'BMW',
    model: '327/328 Cabriolet',
    year: 1939,
    price: 2600,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/481/10773481_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/481/10773481_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/481/10773481_Vue%2003.jpg"
    ],
    descriptions: [
      "Step back in time with the 1939 BMW 327/328 Cabriolet, a classic convertible that exudes vintage charm and sophisticated style. This pre-war masterpiece features elegant lines and a powerful engine, making it a joy to drive and a delight to behold. Perfect for leisurely drives or making a grand entrance at events, the BMW 327/328 Cabriolet is a symbol of a bygone era of automotive excellence, where craftsmanship and design were paramount."
    ]
  },
  {
    brand: 'BMW',
    model: '850 CSI',
    year: 1993,
    price: 800,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/228/10771228_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/228/10771228_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/228/10771228_Vue%2003.jpg"
    ],
    descriptions: [
      "Drive the 1993 BMW 850 CSI, a sleek and stylish sports car that combines cutting-edge technology with unmatched performance. This model is renowned for its powerful V12 engine and dynamic handling, offering a thrilling ride for enthusiasts. The 850 CSI's design reflects BMW's commitment to luxury and innovation, making it a standout choice for those who seek both performance and sophistication in a classic sports car."
    ]
  },
  {
    brand: 'Alpine',
    model: 'A110 1600S modifiée groupe 4',
    year: 1970,
    price: 1200,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/487/10771487_View.jpg",
      "https://www.artcurial.com/item-images/FR/487/10771487_View%2002.jpg",
      "https://www.artcurial.com/item-images/FR/487/10771487_View%2003.jpg"
    ],
    descriptions: [
      "Experience the thrill of the 1970 Alpine A110 1600S, a modified Group 4 rally legend known for its agility and speed. This iconic French sports car boasts a lightweight design and a powerful engine, making it a formidable competitor on the rally circuit. Perfect for enthusiasts who appreciate the heritage and performance of classic rally cars, the A110 1600S offers an exhilarating driving experience that is sure to impress."
    ]
  },
  {
    brand: 'Ford',
    model: 'Mustang Cabriolet 302ci',
    year: 1969,
    price: 350,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/114/10772114_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/114/10772114_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/114/10772114_Vue%2003.jpg"
    ],
    descriptions: [
      "Relive the golden era of American muscle cars with the 1969 Ford Mustang Cabriolet 302ci, a convertible that offers pure driving pleasure. Featuring the iconic Mustang design and a robust V8 engine, this classic car delivers both style and performance. Ideal for cruising on sunny days or making a statement at car shows, the Mustang Cabriolet 302ci is a timeless symbol of American automotive history and a joy for any car enthusiast to drive."
    ]
  },
  {
    brand: 'Jaguar',
    model: 'Type E V12 Coupé',
    year: 1970,
    price: 350,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/113/10772113_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/113/10772113_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/113/10772113_Vue%2003.jpg"
    ],
    descriptions: [
      "Enjoy the luxurious ride of the 1970 Jaguar Type E V12 Coupé, a classic that combines elegance, power, and a rich motoring heritage. Known for its stunning design and powerful V12 engine, the Type E is a beloved icon in the automotive world. Perfect for special occasions or simply indulging in a refined driving experience, the Jaguar Type E V12 Coupé offers unparalleled style and performance, making it a must-drive for any classic car enthusiast."
    ]
  },
  {
    brand: 'Maserati',
    model: 'Ghibli 4,9L SS',
    year: 1971,
    price: 1600,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/459/10773459_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/459/10773459_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/459/10773459_Vue%2003.jpg"
    ],
    descriptions: [
      "Feel the power and elegance of the 1971 Maserati Ghibli 4.9L SS, a sports car that delivers an exhilarating driving experience. With its striking design and formidable performance, the Ghibli SS stands out as one of Maserati's finest creations. This classic Italian sports car is perfect for those who appreciate a blend of luxury and speed, offering a ride that is as thrilling as it is stylish. Experience the heritage and craftsmanship of Maserati with this exceptional vehicle."
    ]
  },
  {
    brand: 'Porsche',
    model: '993 Cup 3.8 RSR',
    year: 1997,
    price: 5750,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/509/10772509_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/509/10772509_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/509/10772509_Vue%2003.jpg"
    ],
    descriptions: [
      "Race with the 1997 Porsche 993 Cup 3.8 RSR, a high-performance machine built for those who crave speed and precision. This track-focused Porsche is equipped with a powerful 3.8L engine and advanced racing technology, making it a formidable contender on the circuit. Perfect for track days or simply enjoying an adrenaline-fueled drive, the 993 Cup RSR is a testament to Porsche's engineering excellence and racing heritage."
    ]
  },
  {
    brand: 'Porsche',
    model: '356 B 1600 Super Cabriolet',
    year: 1963,
    price: 130,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/235/10773235_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/235/10773235_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/235/10773235_Vue%2003.jpg"
    ],
    descriptions: [
      "Cruise in style with the 1963 Porsche 356 B 1600 Super Cabriolet, a classic convertible that epitomizes elegance and charm. This beautiful vintage car offers a perfect blend of performance and aesthetic appeal, featuring a sleek design and a reliable engine. Ideal for leisurely drives or special occasions, the Porsche 356 B 1600 Super Cabriolet is a timeless classic that delivers a truly enjoyable driving experience."
    ]
  },
  {
    brand: 'Porsche',
    model: '911 SC 3.0L Targa',
    year: 1983,
    price: 500,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/989/10771989_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/989/10771989_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/989/10771989_Vue%2003.jpg"
    ],
    descriptions: [
      "Enjoy the open road in the 1983 Porsche 911 SC 3.0L Targa, a timeless sports car that offers an unforgettable driving experience. With its distinctive Targa design and powerful 3.0L engine, this Porsche delivers both style and performance. Whether you're cruising through scenic routes or participating in a classic car rally, the 911 SC Targa is a perfect choice for those who appreciate Porsche's legacy of engineering excellence and driving pleasure."
    ]
  },
  {
    brand: 'Ferrari',
    model: '612 Scaglietti F1',
    year: 2005,
    price: 800,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/185/10773185_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/185/10773185_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/185/10773185_Vue%2003.jpg"
    ],
    descriptions: [
      "Indulge in luxury with the 2005 Ferrari 612 Scaglietti F1, a grand tourer that combines performance, comfort, and elegance. This magnificent vehicle features a powerful V12 engine and an advanced F1 transmission, offering a driving experience that is both thrilling and refined. The 612 Scaglietti's spacious interior and sophisticated design make it perfect for long-distance journeys or simply enjoying a luxurious ride. Experience the pinnacle of Ferrari's craftsmanship with this stunning grand tourer."
    ]
  },
  {
    brand: 'Ferrari',
    model: '250 GTE Série 3',
    year: 1963,
    price: 3400,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/228/10773228_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/228/10773228_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/228/10773228_Vue%2003.jpg"
    ],
    descriptions: [
      "Experience the iconic 1963 Ferrari 250 GTE Série 3, a classic that embodies the heritage and passion of Ferrari. This elegant grand tourer features a powerful V12 engine and a beautifully crafted design, making it a joy to drive and a sight to behold. Perfect for special events or leisurely drives, the 250 GTE Série 3 offers a unique opportunity to experience the timeless allure of Ferrari's golden era. Relish in the luxury and performance of this automotive masterpiece."
    ]
  },
  {
    brand: 'Ferrari',
    model: '348 Spider No reserve',
    year: 1995,
    price: 1100,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/428/10772428_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/428/10772428_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/428/10772428_Vue%2003.jpg"
    ],
    descriptions: [
      "Drive the 1995 Ferrari 348 Spider, a convertible that offers an exhilarating blend of performance and Italian design. With its powerful V8 engine and sleek lines, this Ferrari delivers a thrilling driving experience. Perfect for sunny days and scenic drives, the 348 Spider combines the best of Ferrari's engineering and design, providing a ride that is both stylish and exciting. Enjoy the open-top freedom and dynamic performance of this iconic Ferrari."
    ]
  },
  {
    brand: 'Mercedes-Benz',
    model: "300 SL 'Papillon'",
    year: 1955,
    price: 15000,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/560/10770560_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/560/10770560_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/560/10770560_Vue%2003.jpg"
    ],
    descriptions: [
      "Rent the prestigious 1955 Mercedes-Benz 300 SL 'Papillon', an iconic classic known for its distinctive gullwing doors and unmatched elegance. This legendary sports car features a powerful engine and a sleek design, making it a standout in the world of classic cars. Perfect for special occasions or simply indulging in a luxurious drive, the 300 SL offers a unique blend of style, performance, and historical significance. Experience the timeless allure of one of Mercedes-Benz's most celebrated models."
    ]
  },
  {
    brand: 'Lamborghini',
    model: '400 GT 2+2 par Touring',
    year: 1966,
    price: 4500,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/160/10773160_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/160/10773160_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/160/10773160_Vue%2003.jpg"
    ],
    descriptions: [
      "Feel the power of the 1966 Lamborghini 400 GT 2+2, a classic that offers a perfect blend of performance and luxury. This elegant grand tourer features a powerful V12 engine and a beautifully crafted design by Touring, providing an exhilarating and refined driving experience. Ideal for long-distance journeys or making a grand entrance, the 400 GT 2+2 is a testament to Lamborghini's commitment to excellence and innovation in automotive design."
    ]
  },
  {
    brand: 'Lamborghini',
    model: 'Jalpa P350 GT Bertone',
    year: 1984,
    price: 1200,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/163/10773163_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/163/10773163_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/163/10773163_Vue%2003.jpg"
    ],
    descriptions: [
      "Drive the 1984 Lamborghini Jalpa P350 GT Bertone, a unique sports car that combines Italian design with thrilling performance. This rare model features a mid-engine V8 and distinctive styling by Bertone, offering a dynamic and engaging driving experience. Perfect for those who appreciate the bold and innovative spirit of Lamborghini, the Jalpa P350 GT Bertone provides a ride that is as exciting as it is stylish, making it a standout choice for any car enthusiast."
    ]
  },
  {
    brand: 'Volvo',
    model: 'P1800',
    year: 1964,
    price: 500,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/611/10770611_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/611/10770611_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/611/10770611_Vue%2003.jpg"
    ],
    descriptions: [
      "Enjoy the classic 1964 Volvo P1800, a stylish and reliable car that offers a comfortable and memorable driving experience. Known for its distinctive design and solid performance, the P1800 is a beloved classic that has stood the test of time. Perfect for leisurely drives or classic car events, this Volvo combines Scandinavian craftsmanship with timeless appeal, making it a delightful choice for anyone who appreciates vintage automobiles."
    ]
  },
  {
    brand: 'AC',
    model: 'Aceca moteur Ford V8 260',
    year: 1955,
    price: 1200,
    image_urls: [
      "https://www.artcurial.com/item-images/FR/221/10772221_Vue.jpg",
      "https://www.artcurial.com/item-images/FR/221/10772221_Vue%2002.jpg",
      "https://www.artcurial.com/item-images/FR/221/10772221_Vue%2003.jpg"
    ],
    descriptions: [
      "Experience the 1955 AC Aceca with a Ford V8 260 engine, a rare classic that combines British craftsmanship with American power. This unique coupe features elegant lines and a powerful V8 engine, offering a thrilling and refined driving experience. Perfect for collectors and enthusiasts, the AC Aceca stands out as a testament to the collaboration between British design and American muscle, providing a ride that is both stylish and exhilarating."
    ]
  },
]

offers.each_with_index do |offer, index|
  new_offer = Offer.create!(
    brand: offer[:brand],
    model: offer[:model],
    year: offer[:year],
    price: offer[:price],
    km: 30_000,
    user: index < 11 ? User.second : User.first,
    address: addresses[index],
    availability_start: start_date = Date.today + rand(1..15),
    availability_end: start_date + 45
  )

  offer[:image_urls].each do |image_url|
    image_file = URI.open(image_url)

    # Determine the file extension from the URL or default to .jpg
    extension = File.extname(URI.parse(image_url).path).downcase
    extension = '.jpg' if extension.empty? || extension == '.jpeg'

    # Construct a filename for the attachment
    filename = "#{offer[:brand]}-#{offer[:model]}-#{SecureRandom.hex(8)}#{extension}"

    # Attach the image to the offer with the correct content type for JPEG
    new_offer.photos.attach(io: image_file, filename: filename, content_type: "image/jpeg")  end
end
