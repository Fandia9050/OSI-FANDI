<?php namespace App\Models;

use CodeIgniter\Model;

class EventModel extends Model
{
	protected $table = 'event';
	protected $useTimestamps = true;
	protected $allowedFields = ['nama_event', 'nama_organisasi', 'sertifikat'];
}