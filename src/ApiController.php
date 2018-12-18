<?php
namespace App\Controllers;

class ApiController {

    public function __construct($container)
    {
        // make the container available in the class
        $this->container = $container;
    }


    public function users()
    {
        echo 123;die;
    }

}