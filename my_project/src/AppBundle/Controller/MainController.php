<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class MainController extends Controller
{
    /**
     * @Route("/home", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $conn = $this->get('database_connection');
        $news = $conn->fetchAll('SELECT * FROM news ORDER BY id DESC');
        // replace this example code with whatever you need
        return $this->render('default/home.html.twig', [
            'news' => $news,
        ]);
    }
}
