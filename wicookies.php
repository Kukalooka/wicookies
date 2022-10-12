<?php

if (!defined('_PS_VERSION_'))
    exit();

class Wicookies extends Module
{
    public function __construct()
    {
        $this->name = 'wicookies';
        $this->version = '1.0.0';
        $this->author = 'WEBimpuls.pl';
        $this->need_instance = 1;
        $this->ps_versions_compliancy = array('min' => '1.7.1.0', 'max' => _PS_VERSION_);
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Wi Cookies', 'wicookies');
        $this->description = $this->l('Wi Cookies', 'wicookies');

        $this->confirmUninstall = $this->l('Wi Cookies', 'wicookies');
    }

    public function install()
    {
        if(Shop::isFeatureActive()){
            Shop::setContext(Shop::CONTEXT_ALL);
        }

        if(!parent::install() ||
            !$this->registerHook('footer') || 
            !$this->registerHook('actionAdminControllerSetMedia') || 
            !Configuration::updateValue('MYMODULE_NAME', 'wicookies')
        ) {
            return false;
        }
    }

    public function uninstall()
    {
        if(!parent::uninstall() || 
            !Configuration::deleteByName('MYMODULE_NAME')
        ){
            return false;
        }

        return true;
    }
    
    public function hookFooter()
    {
        return $this->display(__FILE__,'template.tpl');
    }

    public function getContent()
    {
        $output = 'Created by WEBimpuls';

        return $output;
    }

    public function isUsingNewTranslationSystem()
    {
        return true;
    }
}

?>