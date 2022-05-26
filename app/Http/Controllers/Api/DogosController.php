<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

//use App\Models\Dogo;

use App\DogosControllerTabla;

class DogosController extends Controller
{
    public function store(Request $request) {
        $respuesta = array();
        $respuesta['exito'] = false;

        $nuevaCaptura = new Dogo();
        $idTipoRaza = 
            intval($request->input('id_tipo_raza'));
        $nuevaCaptura->id_tipo_raza = 
           $idTipoRaza;
        // 1 - Schnauzer, 2 - Pitbull, 3 - Pomeranian, 4 - Chihuahau - 5 - Shih Tzu
        if ($idTipoRaza == 1) {
            $nuevaCaptura->schnauzer = 
                $request->input('schnauzer');
        } else if ($idTipoRaza == 2) {
            $nuevaCaptura->pitbull =
                $request->input('pitbull');
        } else if ($idTipoRaza == 3) {
            $nuevaCaptura->pomeranian =
                $request->input('pomeranian');
        } else if ($idTipoRaza == 4) {
            $nuevaCaptura->chihuahua =
                $request->input('chihuahua');
        } else {
            $nuevaCaptura->shih_tzu =
                $request->input('shih_tzu');
        }

        $nuevaCaptura->color =
            $request->input('colordogo');
        $nuevaCaptura->tamaño =
            $request->input('tamañodogo');
        $nuevaCaptura->espacio_libre =
            $request->input('dogo_adulto_cachorro');
                
        return $respuesta;
    }
}
