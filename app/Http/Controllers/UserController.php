<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('password');
        $user = User::where('email', $request->email)->first();
         if (!$user || !Hash::check($password, $password ? $user->password : '')) {
              return response([
                'message' => ['These credentials do not match our records.']
              ], 404);
         }

         $user->tokens()->delete();
         $user->token = $user->createToken('my-app-token')->plainTextToken;

         return response([
            'user' => $user
         ]);
    }

    public function index(Request $request)
    {
        $users = User::all();
        return response()->json([
            'users' => $users,
        ]);
    }
}
