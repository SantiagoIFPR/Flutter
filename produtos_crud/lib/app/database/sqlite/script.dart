
final createTable='''
  CREATE TABLE produto(
    id INTEGER NOT NULL PRIMARY KEY 
    ,nome VARCHAR(200) NOT NULL
    ,quantidade CHAR(8) NOT NULL
    ,valorunitario CHAR(10) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL
  )
''';

final insert1='''
  INSERT INTO produto(nome, quantidade, valorunitario, url_avatar)
  VALUES('Arroz','60','22.69', 'https://w7.pngwing.com/pngs/552/81/png-transparent-rice-rice-cooker-tangyuan-cooked-rice-rice-food-recipe-rice-paddy.png')
''';

final insert2='''
  INSERT INTO produto(nome, quantidade, valorunitario, url_avatar)
  VALUES('Feijão','130','7.99','https://tempodecozimento.com.br/wp-content/uploads/2017/10/Fotolia_119399370_XS.jpg')
''';

final insert3='''
  INSERT INTO produto(nome, quantidade, valorunitario, url_avatar)
  VALUES('Açucar','43','3.29','https://img2.gratispng.com/20171216/9b6/sugar-png-5a35f94fd92be6.5468587815134866718895.jpg')
''';