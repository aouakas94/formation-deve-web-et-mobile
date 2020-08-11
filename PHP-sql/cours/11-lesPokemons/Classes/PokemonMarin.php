<?php


namespace Dawm\Abstraits;


abstract class PokemonMarin extends Pokemons
{


    /**
     * PokemonMarin constructor.
     */
    public function __construct(string $nom,float $poids,int $nbnageoires)
    {
        parent::__construct($nom,$poids);
        $this->nbnageoires=$nbnageoires;

    }
    public function getnbnageoires(): int
    {
        return $this->nbnageoires;
    }
    public function __toString()
    {
        $affichage="<br> j'ai $this->nbnageoires nageoires ";
        return parent::__toString().$affichage;
    }

    protected function getVitesse(): float
    {
        // TODO: Implement getVitesse() method.
    }
}