<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Application
{

	function __construct()
	{
		parent::__construct();
        $this->load->model('supplies');
        $this->data['pagetitle'] = 'Lebron James Bakery';
	}

	/**
	 * Homepage for our app
	 */
	public function index()
	{
        $this->load->helper('formfields');
        $this->data['title'] = 'Lebron James Bakery';
        $this->data['pagebody'] = 'welcome_message';
        $this->render();

	}

}