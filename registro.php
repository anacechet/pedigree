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
        <input type="radio" name="tipo" value="1" <?php if($tipo==1) echo "checked";?>><a>Código</a><br>
        <input type="radio" name="tipo" value="2" <?php if($tipo==2) echo "checked";?>><a>Nome</a><br>
        <input type="radio" name="tipo" value="3" <?php if($tipo==3) echo "checked";?>><a>Sobrenome</a><br>
        <input type="radio" name="tipo" value="4" <?php if($tipo==4) echo "checked";?>><a>Ano Nascimento</a><br>
        <input type="radio" name="tipo" value="5" <?php if($tipo==5) echo "checked";?>><a>Sexo</a><br>
        <input type="radio" name="tipo" value="6" <?php if($tipo==6) echo "checked";?>><a>Cor</a><br><br>
        </div>

        <input type="submit" name="acao" id="acao" class="button">
        </div>

        <table> 
        <tr>
            <th class='IdRegistro'>Código<br>Registro</th>
            <th class='Nome'>Nome<br>Cachorro</th>
            <th class='Sobrenome'>Sobrenome<br>Cachorro9-*+</th>
            <th class='Datanascimento'>Data de <br>Nascimento</th>
            <th class='Sexo'>Sexo</th>
            <th class='Cor'>Cor</th>
        </tr>

    <?php
    $sql = "";
    if
    ($tipo == 1) 
    $sql = "SELECT * FROM registro 
            WHERE id_registro  =  '$procurar%' 
            ORDER BY id_registro";   
    elseif
    ($tipo == 2) 
    $sql = "SELECT * FROM registro 
            WHERE nomecachorro LIKE '$procurar%' 
            ORDER BY nomecachorro";
    elseif
    ($tipo == 3) 
    $sql = "SELECT * FROM registro 
            WHERE sobrenomecachorro LIKE '$procurar%' 
            ORDER BY sobrenomecachorro";
    elseif
    ($tipo == 4) 
    $sql = "SELECT * FROM registro 
            WHERE datanascimento LIKE '$procurar%' 
            ORDER BY datanascimento";
    elseif
    ($tipo == 5) 
    $sql = "SELECT * FROM registro 
            WHERE sexo LIKE '$procurar%' 
            ORDER BY sexo";
    else 
    $sql = "SELECT * FROM registro 
            WHERE cor LIKE '$procurar%' 
            ORDER BY cor";       
    
    $pdo = Conexao::getInstance(); 
    $consulta = $pdo->query($sql);
    while 
    ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){ 


        echo "
                    <tr>
                        <td class='IdRegistro'> {$linha['id_registro']}</td>
                        <td class='Nome'> {$linha['nomecachorro']}</td> 
                        <td class='Sobrenome'> {$linha['sobrenomecachorro']}</td>  
                        <td class='Datanascimento'> {$linha['datanascimento']}</td>
                        <td class='Sexo'> {$linha['sexo']}</td> 
                        <td class='Cor'> {$linha['cor']}</td>
                    </tr>
             ";}

    ?>
       
    </table>
    </form>
</div>
</body>
</html>