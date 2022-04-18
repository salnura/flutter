<?php

 namespace App\Controllers;

 use App\Models\MRegistrasi;
 //use CodeIgniter\API\ResponseTrait;
 use CodeIgniter\RESTful\ResourceController;

 class RegistrasiController extends ResourceController
 {
     
    protected function responseHasil($code, $status, $data)
    {
        return $this->respond([
            'code' => $code,
            'status' => $status,
            'data' => $data,
        ]);
    }
    public function index()
    {
        $model = new MRegistrasi();
        $member =$model->findAll();
        return $this->responseHasil (200,true,$member);
    }
    public function registrasi()
    {
        $data = [
            'nama' => $this->request->getVar('nama'),
            'email' => $this->request->getVar('email'),
            'password' => password_hash($this->request->getVar('password'),PASSWORD_DEFAULT)
    ];

        $model = new MRegistrasi();
        $model->save($data);
        return $this->responseHasil(200, true, "Registrasi Berhasil");
    }
}