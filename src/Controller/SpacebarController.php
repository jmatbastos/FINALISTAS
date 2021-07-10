<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PropertyAccess\PropertyAccess;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Component\Validator\Context\ExecutionContextInterface;
use App\Controller\Bakery_modelController;

class SpacebarController extends AbstractController
{
    
	private $session;
	private $spacebar_model;
	private $validator;
	
	public function __construct(SessionInterface $session, Spacebar_modelController $spacebar_model, ValidatorInterface $validator)
    {
		$this->session = $session;
		$this->spacebar_model = $spacebar_model;
        $this->validator = $validator;
    }
	
		
	/**
     * @Route("/spacebar", name="spacebar")
     */
    public function index(): Response
    {
        return $this->render('spacebar/home.html.twig', [
            'controller_name' => 'SpacebarController',
        ]);
    }
}
