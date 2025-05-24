<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class StatusController extends Controller
{
    public function getStatus(): JsonResponse
    {
        return response()->json(['status' => 100]);
    }
}
