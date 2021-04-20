<?php 
namespace App\Controllers;
use CodeIgniter\API\ResponseTrait;

class Main extends BaseController
{
	use ResponseTrait;

	protected $pemilikModel;

	protected $eventModel;

	public function __construct()
	{
		$this->pemilikModel = new \App\Models\PemilikSertifikatModel();
		$this->eventModel = new \App\Models\EventModel();

	}

	public function index()
	{
		return view('welcome_message');
	}

	public function searchByHash($hash){
		foreach($this->pemilikModel->findAll() as $pemilik){
			if ($pemilik['hash_value'] == $hash)
			{
				$event = $this->eventModel->find($pemilik['event_id']);
				return $this->respond(['status' => true, 'data' => $pemilik, 'event' => $event], 200);
			}
		}
	}

	//--------------------------------------------------------------------

}
