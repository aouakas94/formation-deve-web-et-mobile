<?php


//namespace Dawm\Abstraits;


 class PokemonsTerrestres extends Pokemons
{
private $Taille;
private $nbPattes;

    /**
     * PokemonMarin constructor.
     */
    public function __construct(string $nom,float $poids,int $Taille,int $nbPattes)
    {
        parent::__construct($nom,$poids);
        $this->Taille=$Taille;
        $this->nbPattes=$nbPattes;

    }
    public function getTaille(): float
    {
        return $this->Taille;
    }
    public function setTaille(): float
    {
        return $this->Taille;
    }
    public function getnbPattes(): int
    {
        return $this->nbPattes;
    }

    public function __toString()
    {

        $affichage ="<br> j'ai". $this->nbPattes."$this->Taille";
        return parent::__toString().$affichage ;
    }

    protected function getVitesse(): float
    {
        return 3* $this->Taille*$this->nbPattes;
    }
}