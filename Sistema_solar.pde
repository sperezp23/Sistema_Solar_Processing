//Declaración de las variables para la imagenes.
PShape sol, mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno, pluton;
PImage campo_de_estrellas;

//Declaración de las variables numericas
float
diametro_planetas = 120,

//Radio orbitas
radio_giro_mercurio = 300,
radio_giro_venus = 500,
radio_giro_tierra = 700,
radio_giro_marte = 900,
radio_giro_jupiter = 1100,
radio_giro_saturno = 1300,
radio_giro_urano = 1500,
radio_giro_neptuno = 1700,
radio_giro_pluton = 1900,

//Angulo de la giagonal y desfases
angulo_diagonal = 0.535,
desfase_mercurio = random(-0.3, 0.86),
desfase_venus = random(-0.4, 0.94),
desfase_tierra = random(-0.45, 0.98),
desfase_marte = random(-0.48, 0.98),
desfase_jupiter = random(-0.49, 0.76),
desfase_saturno = random(-0.48, 0.42),
desfase_urano = random(-0.49, 0.25),
desfase_neptuno = random(-0.5, 0.14),
desfase_pluton = random(-0.134, 0.059);

// Tamaño de la ventana
size(1800, 1112);
surface.setResizable(true);

//Importar images svg
sol = loadShape("/Planetas/Sol_1.svg");
mercurio = loadShape("/Planetas/Mercurio_1.svg");
venus = loadShape("/Planetas/Venus_1.svg");
tierra = loadShape("/Planetas/Tierra_1.svg");
marte = loadShape("/Planetas/Marte_1.svg");
jupiter = loadShape("/Planetas/Jupiter_1.svg");
saturno = loadShape("/Planetas/Saturno_1.svg");
urano = loadShape("/Planetas/Urano_1.svg");
neptuno = loadShape("/Planetas/Neptuno_1.svg");
pluton = loadShape("/Planetas/Pluton_1.svg");

//Importar images jpg
campo_de_estrellas = loadImage("estrellas.jpg");

//Campo de estrellas
image(campo_de_estrellas, 0, 0, width, height);

//Orbitas
noFill();
stroke(255);
ellipse(0, 0, 2 * radio_giro_mercurio, 2 * radio_giro_mercurio);
ellipse(0, 0, 2 * radio_giro_venus, 2 * radio_giro_venus);
ellipse(0, 0, 2 * radio_giro_tierra, 2 * radio_giro_tierra);
ellipse(0, 0, 2 * radio_giro_marte, 2 * radio_giro_marte);
ellipse(0, 0, 2 * radio_giro_jupiter, 2 * radio_giro_jupiter);
ellipse(0, 0, 2 * radio_giro_saturno, 2 * radio_giro_saturno);
ellipse(0, 0, 2 * radio_giro_urano, 2 * radio_giro_urano);
ellipse(0, 0, 2 * radio_giro_neptuno, 2 * radio_giro_neptuno);
ellipse(0, 0, 2 * radio_giro_pluton, 2 * radio_giro_pluton);

//Planetas
shape(sol, 73, 73, diametro_planetas, diametro_planetas);
shape(mercurio, radio_giro_mercurio * cos(angulo_diagonal + desfase_mercurio), radio_giro_mercurio * sin(angulo_diagonal + desfase_mercurio), diametro_planetas, diametro_planetas);
shape(venus, radio_giro_venus * cos(angulo_diagonal + desfase_venus), radio_giro_venus * sin(angulo_diagonal + desfase_venus), diametro_planetas, diametro_planetas);
shape(tierra, radio_giro_tierra * cos(angulo_diagonal + desfase_tierra), radio_giro_tierra * sin(angulo_diagonal + desfase_tierra),  diametro_planetas, diametro_planetas);
shape(marte, radio_giro_marte * cos(angulo_diagonal + desfase_marte), radio_giro_marte * sin(angulo_diagonal + desfase_marte),  diametro_planetas, diametro_planetas);
shape(jupiter, radio_giro_jupiter * cos(angulo_diagonal + desfase_jupiter), radio_giro_jupiter * sin(angulo_diagonal + desfase_jupiter), diametro_planetas, diametro_planetas);
shape(saturno, radio_giro_saturno * cos(angulo_diagonal + desfase_saturno), radio_giro_saturno * sin(angulo_diagonal + desfase_saturno), diametro_planetas * 1.618, diametro_planetas);
shape(urano, radio_giro_urano * cos(angulo_diagonal + desfase_urano), radio_giro_urano * sin(angulo_diagonal + desfase_urano), diametro_planetas  * 1.618, diametro_planetas);
shape(neptuno, radio_giro_neptuno * cos(angulo_diagonal + desfase_neptuno), radio_giro_neptuno * sin(angulo_diagonal + desfase_neptuno), diametro_planetas, diametro_planetas);
shape(pluton, radio_giro_pluton * cos(angulo_diagonal + desfase_pluton), radio_giro_pluton * sin(angulo_diagonal + desfase_pluton), diametro_planetas, diametro_planetas);

//Guardar imagen generada.
save("img_###.jpg");//Guardar imagen.
