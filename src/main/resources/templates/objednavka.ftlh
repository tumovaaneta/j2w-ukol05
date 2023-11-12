[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="container">
    <div class="tabor">
        <h1>Registrace na letní dětský tábor - rekapitulace</h1>

           <section>
            <label for="jmeno" class="radek">Jméno a příjmení:</label>
            <span id="jmeno">${jmeno}</span>
           </section>

           <section>
            <label for="narozeni" class="radek">Narození:</label>
            <span id="narozeni">${narozeni}</span>
           </section>

           <section>
            <label for="pohlavi" class="radek">Pohlaví:</label>
            <span id="pohlavi">${pohlavi}</span>
           </section>

           <section>
            <label for="turnus" class="radek">Turnus:</label>
            <span id="turnus">${turnus}</span>
           </section>

           <section>
            <label for="email" class="radek">Email:</label>
            <span id="email">${email}</span>
           </section>

           <section>
            <label for="telefon" class="radek">Telefon:</label>
            <span id="telefon">${telefon}</span>
           </section>

    </div>
</div>
</body>
</html>