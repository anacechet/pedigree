<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Canil";
   $procurar = isset($_POST["procurar"]) ? $_POST["procurar"] : ""; 
   $consulta = isset($_POST["consulta"]) ? $_POST["consulta"] : 1;
   $tipo = isset($_POST["tipo"]) ? $_POST["tipo"] : 2;
?>
<html>
<head>
    <meta charset="UTF-8">
    <title> <?php echo $title; ?> </title>
    <link rel="icon" href="img/icon.png">
    <link rel="stylesheet" href= "css/css1.css">
</head>
<body>

<center>
<ul class="menu">
        <li class="menu1"><a href="cachorro.php" class="menu1">DADOS CACHORRO</a></li>
        <li class="menu2"><a href="cachorrocanil.php" class="menu2">TRANSFERÊNCIA</a></li>
        <li class="menu3"><a href="canil.php" class="menu3">CANIL</a></li>
        <li class="menu4"><a href="ninhada.php" class="menu4">NINHADA</a></li>
        <li class="menu5"><a href="raca.php" class="menu5">RAÇA</a></li>
        <li class="menu6"><a href="registro.php" class="menu6">REGISTROS </a></li>
</ul>
</center>

    <form method="post">
    <div class="procurar">

        <p class="procurar">Procurar por:</p>

        <input type="text" name="procurar" id="procurar" size="37" value="<?php echo $procurar;?>" class="procurar"><br><br>

        <div class="input">
        <input type="radio" name="tipo" value="1" <?php if($tipo==1) echo "checked";?>><a>Código Canil</a><br>
        <input type="radio" name="tipo" value="2" <?php if($tipo==2) echo "checked";?>><a>Nome do Canil</a><br>
        <input type="radio" name="tipo" value="3" <?php if($tipo==3) echo "checked";?>><a>Proprietário</a><br><br>
        </div>

        <input type="submit" name="acao" id="acao" class="button">
        </div>  

        <table> 
        <tr>
            <th class='IdCanil'>Código<br></th>
            <th class='NomeCanil'>Nome<br>Canil</th>
            <th class='Proprietario'>Nome<br>Proprietário</th>
            <th class='SobrenomeProprietario'>Sobrenome<br>Proprietário</th>
            <th class='Gmail'>Gmail</th>
            <th class='Rua'>Nome<br>Rua</th>
            <th class='Bairro'>Nome<br>Bairro</th>
            <th class='Cidade'>Nome<br>Cidade</th>
            <th class='Estado'>Nome<br>Estado</th>
        </tr>

    <?php
    $sql = "";
    if
    ($tipo == 1) 
    $sql = "SELECT * FROM canil 
                     WHERE id_canil  =  '$procurar%' 
                     ORDER BY id_canil";   
    elseif
    ($tipo == 2) 
    $sql = "SELECT * FROM canil 
                     WHERE nomecanil LIKE '$procurar%' 
                     ORDER BY nomecanil";
    else 
    $sql = "SELECT * FROM canil 
                     WHERE nomeproprietario LIKE '$procurar%' 
                     ORDER BY nomeproprietario";       
    
    $pdo = Conexao::getInstance(); 
    $consulta = $pdo->query($sql);
    while 
    ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){ 


        echo "<tr>
              <td class='IdCanil'>{$linha['id_canil']} </td>
              <td class='NomeCanil'>{$linha['nomecanil']} </td> 
              <td class='Proprietario'>{$linha['nomeproprietario']} </td> 
              <td class='SobrenomeProprietario'>{$linha['sobrenomeproprietario']} </td> 
              <td class='Gmail'>{$linha['email']} </td> 
              <td class='Rua'>{$linha['rua']} </td> 
              <td class='Bairro'>{$linha['bairro']} </td> 
              <td class='Cidade'>{$linha['cidade']} </td> 
              <td class='Estado'>{$linha['estado']} </td> 
              </tr>";}

    ?>
    </table>
    </form>

</body>
</html>