<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Dados Cães";
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
        <input type="radio" name="tipo" value="1" <?php if($tipo==1) echo "checked";?>placeholder="Digite aqui"><a>Código</a><br>
        <input type="radio" name="tipo" value="2" <?php if($tipo==2) echo "checked";?>><a>Nome</a><br>
        <input type="radio" name="tipo" value="3" <?php if($tipo==3) echo "checked";?>><a>Sobrenome</a><br>
        <input type="radio" name="tipo" value="4" <?php if($tipo==4) echo "checked";?>><a>Sexo</a><br><br>
        </div>

        <input type="submit" name="acao" id="acao" class="button">
        </div>

    <table> 
        <tr>
            <th class='IdCachorro'>Id</th>
            <th class='Nome'>Nome</th>
            <th class='Sobrenome'>Sobrenome</th>
            <th class='Pai'>Pai</th>
            <th class='Mae'>Mãe</th>
            <th class='Avopaterno'>Avô<br>Paterno</th>
            <th class='Avopaterna'>Avó<br>Paterna</th>
            <th class='Avomaterno'>Avô<br>Materno</th>
            <th class='Avomaterna'>Avó<br>Materna</th>
            <th class='Sexo'>Sexo</th>
            <th class='Cor'>Cor</th>
            <th class='Datanascimento'>Data de <br>Nascimento</th>
            <th class='IdRaca'>Código<br>Raça</th>
            <th class='IdRegistro'>Código<br>Registro</th>
            <th class='IdCanil'>Código<br>Canil</th>
            <th class='IdNinhada'>Código<br>Ninhada</th>
        </tr>

    <?php
    $sql = "";
    if
    ($tipo == 1) 
    $sql = "SELECT * FROM cachorro 
                            WHERE id_cachorro  =  '$procurar%' 
                            ORDER BY id_cachorro";   
    elseif
    ($tipo == 2) 
    $sql = "SELECT * FROM cachorro 
                            WHERE nomecachorro LIKE '$procurar%' 
                            ORDER BY nomecachorro";

    elseif
    ($tipo == 3) 
    $sql = "SELECT * FROM cachorro 
                            WHERE sobrenomecachorro LIKE '$procurar%' 
                            ORDER BY sobrenomecachorro";
    else 
    $sql = "SELECT * FROM cachorro 
                            WHERE sexo LIKE '$procurar%' 
                            ORDER BY sexo";       
    
    $pdo = Conexao::getInstance(); 
    $consulta = $pdo->query($sql);
    while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){ 


        echo "<tr>
                 <td class='Id'> {$linha['id_cachorro']}</td>
                 <td class='Nome'> {$linha['nomecachorro']}</td> 
                 <td class='Sobrenome'> {$linha['sobrenomecachorro']}</td> 
                 <td class='Pai'> {$linha['nomepai']}</td> 
                 <td class='Mae'> {$linha['nomemae']}</td> 
                 <td class='Avopaterno'> {$linha['nomeavopaterno']}</td> 
                 <td class='Avopaterna'> {$linha['nomeavopaterna']}</td> 
                 <td class='Avomaterno'> {$linha['nomeavomaterno']}</td> 
                 <td class='Avomaterna'> {$linha['nomeavomaterna']}</td> 
                 <td class='Sexo'> {$linha['sexo']}</td> 
                 <td class='Cor'> {$linha['cor']}</td> 
                 <td class='Datanascimento'> {$linha['datanascimento']}</td> 
                 <td class='IdRaca'> {$linha['id_raca']}</td> 
                 <td class='IdRegistro'> {$linha['id_registro']}</td> 
                 <td class='IdCanil'> {$linha['id_canil']}</td> 
                 <td class='IdNinhada'> {$linha['id_ninhada']}</td>
              </tr>";}

    ?>
    </table>
    
    </form>

</body>
</html>