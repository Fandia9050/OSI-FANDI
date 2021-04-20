<?php namespace App\Controllers;
use TCPDF;

class Admin extends BaseController
{
	protected $pemilikModel;
	protected $eventModel;
	protected $userModel;
	protected $uri;
	public function __construct()
	{
		$this->uri = new \CodeIgniter\HTTP\URI();
		$this->pemilikModel = new \App\Models\PemilikSertifikatModel();
		$this->eventModel = new \App\Models\EventModel();
		$this->userModel = new \App\Models\UserModel();
		helper('form');
	}

	public function scanner()
	{
		$pemilik = $this->pemilikModel->findAll();
		$hash = $this->pemilikModel->findColumn('hash_value');
		$data = [
			'pemilik'	=> $pemilik,
			'hash'		=> $hash,
		];
		return view('welcome_message', $data);
	}

	public function index()
	{
		$user = $this->userModel->findAll();
		$data = [
			'title' => 'Home',
			'user'	=> $user,
		];
		return view('admin/main', $data);
	}

	public function profile()
	{
		$data = [
			'title' => 'Admin Profile'
		];
		return view('admin/profile', $data);
	}

	public function list()
	{
		$pemilik = $this->pemilikModel->findAll();
		$data = [
			'title'		=> 'List Certificate Owner',
			'pemilik'	=> $pemilik,
		];


		return view('admin/list', $data);
	}

	public function list_owner($id)
	{
		$pemilik = $this->pemilikModel->where(['event_id' => $id])->findAll();
		$data = [
			'title'		=> 'List Certificate Owner',
			'pemilik'	=> $pemilik,
		];


		return view('admin/list_owner', $data);
	}

	public function create_event()
	{
		$data = [
			'title'		=> 'Create Your Event',
			'validation'=> \Config\Services::validation(),
		];

		return view('admin/event', $data);
	}

	public function add()
	{
		$list_event =  $this->eventModel->findAll();
		$data = [
			'title' => 'Add Owner',
			'listEvent' => $list_event,
		];
		return view('admin/add', $data);
	}

	public function upload_qr($id)
	{
		$pemilik = $this->pemilikModel->where(['id' => $id])->findAll();
		
		$data = [
			'title'	=> "Upload QR Code",
			'pemilik'	=> $pemilik,
			'validation'=> \Config\Services::validation(),
		];
		return view('admin/upload', $data);
	}

	public function save_qr($id)
	{		
		$data = [
			'title' 	=> 'Create QR Code',
			'validation'=> \Config\Services::validation(),
		];
		if(!$this->validate([
			'qrcode'			=> 'uploaded[qrcode]',
		])){
			$validation = \Config\Services::validation();
			$data['validation'] = $validation;
			return view('/admin/upload', $data);
		}
		$qrcode = $this->request->getFile('qrcode');
		$qrcode->move('img/qrcode');
		$namaQr = $qrcode->getName();

		$this->pemilikModel->set([
			'qr_code'	=> $namaQr,
		])->where('id', $id)->update();
		session()->setFlashdata('pesan', 'QR Code Added');
		return redirect()->to('/admin/list');
	}

	public function save_event(){
		if(!$this->validate([
			'event'			=> 'required',
			'organisation'	=> 'required',
			'file'			=> 'uploaded[file]|max_size[file,2048]|is_image[file]',
		])){
			$validation = \Config\Services::validation();
			$data['validation'] = $validation;
			return view('/admin/event', $data);
		}
		
		$file = $this->request->getFile('file');
		$file->move('img');
		$namaFile = $file->getName();

		$this->eventModel->save([
			'nama_event'	=> $this->request->getVar('event'),
			'nama_organisasi' => $this->request->getVar('organisation'),
			'sertifikat' => $namaFile,
		]);

		session()->setFlashdata('pesan', 'Event Added');
		return redirect()->to('/admin/list_event');
	}

	public function list_event()
	{
		$list = $this->eventModel->findAll();
		$data = [
			'title' => 'List Event',
			'event'	=> $list
		];
		return view('admin/list_event', $data);
	}

	public function save()
	{
		d($this->request->getVar('event'));
		$nim = $this->request->getVar('nim');
		$hash_value = md5($nim);
		$this->pemilikModel->save([
			'nim' 			=> $nim,
			'nama'			=> $this->request->getVar('nama'),
			'email'			=> $this->request->getVar('email'),
			'no_hp' 		=> $this->request->getVar('no_hp'),
			'event_id'		=> $this->request->getPost('event'),
			'hash_value' 	=> $hash_value,
		]);

		session()->setFlashdata('pesan', 'Data added...');

		return redirect()->to('/admin/list');
	}

	public function create_qr($id)
	{
		$pemilik = $this->pemilikModel->find(['id' => $id]);
		$data = [
			'title' 	=> 'Create QR Code',
			'pemilik'	=> $pemilik,
			'validation'=> \Config\Services::validation(),
		];
		return view('admin/create', $data);
	}

	public function cetak_sertifikat($id)
	{
		$event_id;
		$pemilik = $this->pemilikModel->find(['id' => $id]);
		$event_id = $pemilik[0]['event_id'];
		$imageQr = $pemilik[0]['qr_code'];
		
		$sertifikat = $this->eventModel->find(['id' => $event_id]);
		$gambar_sertifikat = $sertifikat[0]['sertifikat'];
		$data = [
			'title' 	=> 'Cetak Sertifikat',
			'sertifikat'	=> $gambar_sertifikat,
			'imageQr'	=> $imageQr,
		];
		return view('admin/cetak', $data);

	}

	public function deletePemilik($id)
	{
		if($this->pemilikModel->where(['id' => $id])->delete()){
			session()->setFlashdata('pesan', 'Data telah dihapus');
			return redirect()->to('/admin/list');
		}
	}

	public function editPage($id)
	{
		$dataEvent = $this->eventModel->where(['id'	=> $id])->findAll();
		$validation = \Config\Services::validation();
		$data = [
			'title'	=> "Edit Event",
			'dataEvent'	=> $dataEvent,
			'validation'	=> $validation,
		];
		return view('admin/edit_event', $data);
	}

	public function editEvent($id)
	{
		if(!$this->validate([
			'event'			=> 'required',
			'organisation'	=> 'required',
			'file'			=> 'uploaded[file]|max_size[file,2048]|is_image[file]',
		])){
			$validation = \Config\Services::validation();
			$data['validation'] = $validation;
			return view('/admin/event', $data);
		}
		
		$file = $this->request->getFile('file');
		$file->move('img');
		$namaFile = $file->getName();

		$this->eventModel->set([
			'nama_event'	=> $this->request->getVar('event'),
			'nama_organisasi' => $this->request->getVar('organisation'),
			'sertifikat' => $namaFile,
		])->where(['id'	=> $id])->update();

		session()->setFlashdata('pesan', 'Event telah diubah');
		return redirect()->to('/admin/list_event');
	}

	public function downloadPdf()
	{
		require_once('tcpdf_include.php');

		// create new PDF document
		$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false, true);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Nicola Asuni');
		$pdf->SetTitle('TCPDF Example 065');
		$pdf->SetSubject('TCPDF Tutorial');
		$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

		// set default header data
		$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 065', PDF_HEADER_STRING);

		// set header and footer fonts
		$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

		// set default monospaced font
		$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

		// set margins
		$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

		// set auto page breaks
		$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

		// set image scale factor
		$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

		// set some language-dependent strings (optional)
		if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			require_once(dirname(__FILE__).'/lang/eng.php');
			$pdf->setLanguageArray($l);
		}

		// ---------------------------------------------------------

		// set default font subsetting mode
		$pdf->setFontSubsetting(true);

		// Set font
		$pdf->SetFont('helvetica', '', 14, '', true);

		// Add a page
		// This method has several options, check the source code documentation for more information.
		$pdf->AddPage();

		// Set some content to print
		$html = <<<EOD
		<h1>Example of <a href="http://www.tcpdf.org" style="text-decoration:none;background-color:#CC0000;color:black;">&nbsp;<span style="color:black;">TC</span><span style="color:white;">PDF</span>&nbsp;</a> document in <span style="background-color:#99ccff;color:black;"> PDF/A-1b </span> mode.</h1>
		<i>This document conforms to the standard <b>PDF/A-1b (ISO 19005-1:2005)</b>.</i>
		<p>Please check the source code documentation and other examples for further information (<a href="http://www.tcpdf.org">http://www.tcpdf.org</a>).</p>
		<p style="color:#CC0000;">TO IMPROVE AND EXPAND TCPDF I NEED YOUR SUPPORT, PLEASE <a href="http://sourceforge.net/donate/index.php?group_id=128076">MAKE A DONATION!</a></p>
		EOD;

		// Print text using writeHTMLCell()
		$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

		// ---------------------------------------------------------

		// Close and output PDF document
		// This method has several options, check the source code documentation for more information.
		$pdf->Output('example_065.pdf', 'I');
	}

	public function logout()
	{
		
	}

	

	//--------------------------------------------------------------------

}
