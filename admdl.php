<?php
class Admdl extends CI_Model
{
function __construct() 
{
parent::__construct();
}

function mdlinsert($arr)
{
    $this->db->insert('tbl_admin', $arr);
}
function displaypro()
{
$this->db->where('admin_id',$this->session->userid);
$query=$this->db->get('tbl_admin');
return($query->result());
}
function deletepro($id)
{
$this->db->where('admin_id', $id);
$this->db->delete('tbl_admin');
}
function updatepro($id)
{
$this->db->where('admin_id', $id);
return $this->db->get('tbl_admin')->row();
}
function proupdateaction($id,$data)
{
$this->db->where('admin_id', $id);
$this->db->update('tbl_admin', $data);
}	

function typeinsert($type)
{
    $this->db->insert('tbl_caretype', $type);
}
function displaytype()
{
    $this->db->select('*');
    $this->db->from('tbl_admin');
    $this->db->join("tbl_caretype","tbl_caretype.created_by=tbl_admin.admin_id");
    $this->db->where('admin_id',$this->session->userid);
    $query=$this->db->get();
    return($query->result());
}
function deletetype($id)
{
$this->db->where('care_id', $id);
$this->db->delete('tbl_caretype');
}
function updatetype($id)
{
$this->db->where('care_id', $id);
return $this->db->get('tbl_caretype')->row();
}
function updateaction($id,$data)
{
$this->db->where('care_id', $id);
$this->db->update('tbl_caretype', $data);
}	

function detailsinsert($dtls)
{
    $this->db->insert('tbl_caredetails', $dtls);
}
function displaydetails()
{

$this->db->select('*');
$this->db->from('tbl_caredetails',);
$this->db->join("tbl_caretype","tbl_caredetails.care_id=tbl_caretype.care_id","left");
$this->db->join("tbl_admin","tbl_admin.admin_id=tbl_caretype.created_by");
$this->db->where('admin_id',$this->session->userid);
return $this->db->get()->result();
// $query=$this->db->get('tbl_caredetails');
// return($query->result());
}
function deletedetails($id)
{
$this->db->where('cd_id', $id);
$this->db->delete('tbl_caredetails');
}
function updatedetails($id)
{
$this->db->where('cd_id', $id);
return $this->db->get('tbl_caredetails')->row();
}
function detupdateaction($id,$data)
{
$this->db->where('cd_id', $id);
$this->db->update('tbl_caredetails', $data);
}
function vacinsert($arr)
{
    $this->db->insert('tbl_vacancies', $arr);
}	
function displayvac()
{
    $this->db->select('*');
    $this->db->from('tbl_caretype');
    $this->db->join("tbl_vacancies","tbl_caretype.care_id=tbl_vacancies.care_id","left");
    $this->db->join("tbl_admin","tbl_admin.admin_id=tbl_vacancies.created_by");
    $this->db->where('admin_id',$this->session->userid);
    return $this->db->get()->result();

//$query=$this->db->get('tbl_vacancies');
//return($query->result());
}
function deletevac($id)
{
$this->db->where('vac_id', $id);
$this->db->delete('tbl_vacancies');
}
function updatevac($id)
{
$this->db->where('vac_id', $id);
return $this->db->get('tbl_vacancies')->row();
}
function vacupdateaction($id,$data)
{
$this->db->where('vac_id', $id);
$this->db->update('tbl_vacancies', $data);
}	
function displaystaff()
{
$query=$this->db->get('tbl_staff');
return($query->result());
}
function updatestaff($id)
{  
$this->db->set('status', '1');
$this->db->where('stf_id', $id);
$this->db->update('tbl_staff');
}
function notapproupdt($id)
{  
$this->db->set('status', '0');
$this->db->where('stf_id', $id);
$this->db->update('tbl_staff');
}


function galinsert($gal)
{
    $this->db->insert('tbl_gallery', $gal);
}
function displaygal()
{
$this->db->select('*');
$this->db->from('tbl_gallery');
//$this->db->join("tbl_caretype","tbl_gallery.care_id=tbl_caretype.care_id","left");
$this->db->join("tbl_admin","tbl_admin.admin_id=tbl_gallery.created_by");
$this->db->where('admin_id',$this->session->userid);
return $this->db->get()->result();
}
function deletegal($id)
{
$this->db->where('gal_id', $id);
$this->db->delete('tbl_gallery');
}
function updategal($id)
{
$this->db->where('gal_id', $id);
return $this->db->get('tbl_gallery')->row();
}
function galupdateaction($id,$data)
{
$this->db->where('gal_id', $id);
$this->db->update('tbl_gallery', $data);
}


function featureinsert($type)
{
    $this->db->insert('tbl_features', $type);
}
function displayfeature()
{
    $this->db->select('*');
    $this->db->from('tbl_admin');
    $this->db->join("tbl_features","tbl_features.created_by=tbl_admin.admin_id");
    $this->db->where('admin_id',$this->session->userid);
    $query=$this->db->get();
    return($query->result());
}
function deletefeature($id)
{
$this->db->where('feature_id', $id);
$this->db->delete('tbl_features');
}
function updatefeature($id)
{
$this->db->where('feature_id', $id);
return $this->db->get('tbl_features')->row();
}
function feaupdateaction($id,$data)
{
$this->db->where('feature_id', $id);
$this->db->update('tbl_features', $data);
}	


function newsinsert($gal)
{
    $this->db->insert('tbl_news', $gal);
}
function displaynews()
{
$this->db->select('*');
$this->db->from('tbl_news');
$this->db->join("tbl_admin","tbl_admin.admin_id=tbl_news.created_by");
$this->db->where('admin_id',$this->session->userid);
return $this->db->get()->result();
}
function deletenews($id)
{
$this->db->where('news_id', $id);
$this->db->delete('tbl_news');
}
}
?>
