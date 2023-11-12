[#ftl]
[#import "/spring.ftl" as spring]
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
    <main>
        <form class="tabor" action="" method="post">
        <h1>Registrace na letní dětský tábor</h1>

        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="narozeni" class="radek">Datum narození:</label>
        [@spring.formInput path="form.narozeni" fieldType="date" /]
         <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="pohlavi" class="radek">Pohlaví:</label>
                [@spring.formSingleSelect path="form.pohlavi" options={
                    "": "",
                    "Dívka": "Dívka",
                    "Chlapec": "Chlapec",
                    "Jiné": "Jiné - upřesněte do emailu"
                } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Turnus:</div>
        <div class="skupina">
            <div>
                <input id="turnus1" type="radio" name="turnus" value="turnus1"/>
                <label for="turnus1">5. až 11. července</label>
            </div>
            <div>
                <input id="turnus2" type="radio" name="turnus" value="turnus2"/>
                <label for="turnus2">12. až 18. července</label>
            </div>
            <div>
                 <input id="turnus3" type="radio" name="turnus" value="turnus3"/>
                 <label for="turnus3">19. až 25. července</label>
            </div>
        </div>
        [@spring.bind "form.turnus"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail na rodiče:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="radek">Telefon na rodiče:</label>
        [@spring.formInput path="form.telefon" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>

        </form>
    </main>
</body>
</html>
