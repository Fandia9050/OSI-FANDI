<?php namespace App\Models;

use CodeIgniter\Model;

class PemilikSertifikatModel extends Model
{
	protected $table = 'pemilik_sertifikat';
	protected $useTimestamps = true;
	protected $allowedFields = ['nim', 'nama', 'email', 'no_hp', 'hash_value', 'event_id','qr_code'];
}