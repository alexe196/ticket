<?php

namespace App\Controller;

use Smarty\Smarty;

class GeneralController
{
    public Smarty $smarty;
    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->setTemplateDir('template');
        $this->smarty->setCompileDir(__DIR__ . '/templates_c');
        $this->smarty->setCacheDir(__DIR__ . '/cache');
        $this->smarty->setConfigDir(__DIR__ . '/configs');
        $this->smarty->registerPlugin('modifier', 'transliterate', 'transliterate');
        $this->smarty->caching = Smarty::CACHING_OFF;
    }

}