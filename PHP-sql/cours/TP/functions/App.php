<?php
function navbar($titre)
{
    <<<EQT
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <title>$titre</title>
</head>
<body>

<div class="container-sm">
<nav class="navbar navbar-expand-lg navbar navbar-light" style="background-color: #0061EA;">
    <a class="navbar-brand" href="#">BTP-BANQUE</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Acceuil <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Employes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Deconnexion</a>
            </li>
        </ul>
<!--        <span class="navbar-text">-->
<!--      Sarl btp-banque-->
<!--    </span>-->
    </div>
</nav>



</div>
</body>
</html>

EQT;

}