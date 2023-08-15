<?php

namespace App\Http\Controllers\Authentication;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('authentication.loginForm');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials, true)) {
            return redirect('/stores');
        }

        return back()->withInput()->withErrors(['email' => 'These credentials do not match our records.']);
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }
}
