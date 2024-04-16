<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\District;
use Illuminate\Support\Facades\Http;

class ProvinceController extends Controller
{
    public function syncDataFromAPI()
    {
        $url = 'https://dev-online-gateway.ghn.vn/shiip/public-api/master-data/district';


        $response = Http::withHeaders([
            'Content-Type' => 'application/json',
            'token' => 'b814a7ed-2bc6-11ee-8bfa-8a2dda8ec551',
        ])->get($url);

        if ($response->successful()) {
            $data = $response->json();
           
            // Clear existing data before syncing
            District::truncate();
            // Loop through the data and save it to the database
            foreach ($data['data'] as $provinceData) {
          
                District::create([
                    'DistrictID' => $provinceData['DistrictID'],
                    'ProvinceID' => $provinceData['ProvinceID'],
                    'DistrictName' => $provinceData['DistrictName'],
                    // Add other fields if needed
                ]);
            }

            return response()->json(['message' => 'Data synced successfully']);
        }

        return response()->json(['error' => 'Failed to fetch data from API'], 500);
    }
}
