<?php
//namespace Dawm\Abstraits;


abstract class Pokemons
{
private $nom;
private $poids;
//private $Vitesse;

    /**
     * Pokemons constructor.
     * @param $nom
     * @param $poids
     */
    public function __construct(string $nom, float $poids)
    {
        $this->nom = $nom;
        $this->poids = $poids;
    }

    /**
     * @return string
     */
    public function getNom(): string
    {
        return $this->nom;
    }

    /**
     * @return float
     */
    public function getPoids(): float
    {
        return $this->poids;
    }

    /**
     * @param float $poids
     */
    public function setPoids($poids) : void
    {
        $this->poids = $poids;
    }

   abstract protected function getVitesse(): float;
    public function __toString()
    {
       $affichage="je suis le $this->nom <br>".
           " mon poids est $this->poids kg<br>".
           " ma vitesse est $this->getVitesse()  km/h";
       return $affichage;
    }

}