<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Ninhadas";
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
        <input type="radio" name="tipo" value="1" <?php if($tipo==1) echo "checked";?>><a>Código</a><br>
        <input type="radio" name="tipo" value="2" <?php if($tipo==2) echo "checked";?>><a>Nome do Pai</a><br>
        <input type="radio" name="tipo" value="3" <?php if($tipo==3) echo "checked";?>><a>Nome da Mãe</a><br>
        <input type="radio" name="tipo" value="4" <?php if($tipo==4) echo "checked";?>><a>Ano de Nascimento</a><br><br>
        
        </div>
        <input type="submit" name="acao" id="acao" class="button">
        </div>
       
        <table> 
        <tr>
            <th class='IdNinhada'>Id</th>
            <th class='NomeCanil'>Nome</th>
            <th class='Datanascimento'>Sobrenome</th>
            <th class='Pai'>Pai</th>
            <th class='Mae'>Mãe</th>
            <th class='IdRaca'>Avô<br>Paterno</th>
        </tr>

    <?php
    $sql = "";
    if
    ($tipo == 1) 
    $sql = "SELECT * FROM ninhada 
                     WHERE id_ninhada  =  '$procurar%' 
                     ORDER BY id_ninhada";   
    elseif
    ($tipo == 2) 
    $sql = "SELECT * FROM ninhada 
                     WHERE nomepai LIKE '$procurar%' 
                     ORDER BY nomepai";

    elseif
    ($tipo == 3) 
    $sql = "SELECT * FROM ninhada 
                     WHERE nomemae LIKE '$procurar%' 
                     ORDER BY nomemae";
    else 
    $sql = "SELECT * FROM ninhada 
                     WHERE datanascimento LIKE '$procurar%' 
                     ORDER BY datanascimento";       
    
    $pdo = Conexao::getInstance(); 
    $consulta = $pdo->query($sql);
    while 
    ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){ 


        echo "<tr>
                    <td class='IdNinhada'>{$linha['id_ninhada']}</td>
                    <td class='NomeCanil'>{$linha['canil']}</td> 
                    <td class='Datanascimento'>{$linha['datanascimento']}</td>
                    <td class='Pai'>{$linha['nomepai']}</td> 
                    <td class='Mae'>{$linha['nomemae']}</td>  
                    <td class='IdRaca'>{$linha['id_raca']}</td>
             </tr>"

    ;}
    ?>
    </table>
    </form>
</div>
</body>
</html>