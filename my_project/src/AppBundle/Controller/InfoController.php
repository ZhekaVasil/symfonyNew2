<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class InfoController extends Controller
{
    /**
     * @Route("/create", name="createpage")
     */
    public function indexAction(Request $request)
    {
       /* // replace this example code with whatever you need
        return $this->render('default/info.html.twig', [
            
        ]);*/



        if ($request->get('submit')) {
            $name = $request->get('name');
            $text = $request->get('text');
            $conn = $this->get('database_connection');
            $conn->insert('news', array('cat_id' => '1', 'name' => $name, 'text' =>$text ));
        } else {
            $name = 'Not submitted yet';
            $text = 'Not submitted yet';
        }

        return $this->render('default/info.html.twig', array('name' => $name, 'text' => $text));
        
    }

}
