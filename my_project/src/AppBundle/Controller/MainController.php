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
        if(isset($_POST['login'])){
            $login = $_POST['login'];
            $pass = $_POST['password'];
            $conn = $this->get('database_connection');
            $news = $conn->fetchAll('SELECT * FROM users WHERE login = ? AND pass = ?', [$login, $pass]);
            if($news){
                echo 'OK';
            } else {
                echo 'NOT OK';
            }
        }
       /* $conn = $this->get('database_connection');
        $news = $conn->fetchAll('SELECT * FROM users ORDER BY id DESC');*/
        return $this->render('default/home.html.twig', [
           /* 'data' => $news,*/
            'current' => 'main'
        ]);
    }
}
