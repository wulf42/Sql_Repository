INSERT INTO users (firstname, lastname, email, hashedpassword, address)
VALUES
    ('Jan', 'Kowalski', 'jankowalski@gmail.com', '9d673467e549237ff8af8bf897adb0b155d7ca5be13c5f36a1b8b38ca8b5a07a', 'Stalowa 4/5, Warszawa, 03-425, Polska'),
    ('Anna', 'Nowak', 'annanowak@gmail.com', '8a7a67458b3d1f9aadb7cd6f0f27a21d6c4eafcb1226c2b496f32f68a1c47f2c', 'Kwiatowa 12, Kraków, 30-001, Polska'),
    ('Piotr', 'Wiśniewski', 'piotr.w@gmail.com', '7a2b99f345c2137f698de4d10233afccaa5c3f6b781ac3ad2e248ec1bb21f700', 'Grunwaldzka 15, Gdańsk, 80-241, Polska'),
    ('Maria', 'Lewandowska', 'maria.lewa@gmail.com', 'bc7f8c4652aa3448dc3e5b9f9e47a875d53edacb1c1f4a3d3a9a5d88b123fefe', 'Rynkowa 7, Wrocław, 50-101, Polska')
ON CONFLICT (email) DO NOTHING;	--if email already in db, skip