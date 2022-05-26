<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Dogo;

class DogosController extends Controller
{
    public function store(Request $request) {
        $respuesta = array();
        $respuesta['exito'] = false;

        $nuevaCaptura = new Dogo();
        $idTipoRaza = 
            intval($request->input('raza'));
        $nuevaCaptura->raza = 
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
            $nuevaCaptura->chihuahau =
                $request->input('chihuahua');
        } else {
            $nuevaCaptura->shih_tzu =
                $request->input('shih_tzu');
        }

        $nuevaCaptura->color =
            $request->input('color');
        $nuevaCaptura->tamaño =
            $request->input('tamaño');
        $nuevaCaptura->espacio_libre =
            $request->input('espacio_libre');
        $nuevaCaptura->dogos_en_casa =
            $request->input('dogos_en_casa');
        $nuevaCaptura->cachorro_o_adulto =
            $request->input('cachorro_o_adulto');
                
        return $respuesta;
    }
}
