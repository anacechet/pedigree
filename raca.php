<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Raças";
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
        <input type="radio" name="tipo" value="1" <?php if($tipo==1) echo "checked";?>><a>Código da Raça</a><br>
        <input type="radio" name="tipo" value="2" <?php if($tipo==2) echo "checked";?>><a>Nome da Raça</a><br><br>
        </div>

        <input type="submit" name="acao" id="acao" class="button">
        </div>
    
        <table> 
        <tr>
            <th class='IdRaca'>Id<br>Raça</th>
            <th class='NomeRaca'>Nome da<br>Raça</th>
        </tr>

    <?php
    $sql = "";
    if
    ($tipo == 1) 
    $sql = "SELECT * FROM raca 
                     WHERE id_raca  =  '$procurar%' 
                     ORDER BY id_raca";   
    else 
    $sql = "SELECT * FROM raca 
                     WHERE nomeraca LIKE '$procurar%' 
                     ORDER BY nomeraca";       
    
    $pdo = Conexao::getInstance(); 
    $consulta = $pdo->query($sql);
    while 
    ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){ 


        echo "  <tr>
                    <td class='IdRaca'>{$linha['id_raca']}</td>
                    <td class='NomeRaca'>{$linha['nomeraca']}</td>
                </tr>";}

    ?>
       
    </table>
    </form>
</div>
</body>
</html>