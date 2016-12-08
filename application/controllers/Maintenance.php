<?php

/**
 * Created by PhpStorm.
 * User: kwanc
 * Date: 2016-12-07
 * Time: 4:58 PM
 */
require APPPATH . '/third_party/restful/libraries/Rest_controller.php';
class Maintenance extends Rest_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('supplies');
        // $this->load->libraries('curl','format','rest');
    }

    // Handle an incoming GET ... return a menu item or all of them
//http://backend.local/maintenance?id=6
    function index_get()
    {
        $key = $this->get('id');
        if (!$key) {
            $this->response($this->supplies->all(), 200);
        } else {
            $result = $this->supplies->get($key);
            if ($result != null)
                $this->response($result, 200);
            else
                $this->response(array('error' => 'Supplies item not found!'), 404);
        }
    }

    // Handle an incoming GET ... return 1 menu item
    //http://backend.local/maintenance/item/id/6
    function item_get()
    {
        $key = $this->get('id');
        $result = $this->supplies->get($key);
        if ($result != null)
            $this->response($result, 200);
        else
            $this->response(array('error' => 'Supplies item not found!'), 404);
    }

    // Handle an incoming POST - add a new menu item
    function index_post()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $_POST);
        $this->supplies->add($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming POST - add a new menu item
    function item_post()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $_POST);
        $this->supplies->add($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming PUT - update a menu item
    function index_put()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $this->_put_args);
        $this->supplies->update($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming DELETE - delete a menu item
    function item_delete()
    {
        $key = $this->get('id');
        $this->supplies->delete($key);
        $this->response(array('ok'), 200);
    }
}