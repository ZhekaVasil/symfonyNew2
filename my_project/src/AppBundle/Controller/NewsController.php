<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class NewsController extends Controller
{
    /**
     * @Route("/news", name="newspage")
     */
    public function indexAction(Request $request)
    {
        $conn = $this->get('database_connection');
        $news = $conn->fetchAll('SELECT * FROM news');
        // replace this example code with whatever you need
        return $this->render('default/news.html.twig', [
            'news' => $news,
        ]);
    }
}
