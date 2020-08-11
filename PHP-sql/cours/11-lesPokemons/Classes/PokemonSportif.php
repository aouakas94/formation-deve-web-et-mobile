<?php


// namespace Dawm\Concret;
//
//
//use Dawm\Abstraits\PokemonsTerrestres;

class PokemonSportif extends PokemonsTerrestres
{
private $FreqCardiaque;

public function __construct(string $nom,float $poids,int $nbPattes,float $Taille,float $FreqCardiaque)
{
    PokemonsTerrestres::__construct( $nom, $poids, $nbPattes, $Taille);
}

    /**
     * @return mixed
     */
    public function getFreqCardiaque()
    {
        return $this->FreqCardiaque;
    }
public function __toString()
{
    return parent::__toString()."<H2> ma frequence cardiaque est de ".$this->getFreqCardiaque()."pulsation a la minute</H2>";
}
}