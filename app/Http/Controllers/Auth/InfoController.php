<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function index(){
        $register_success = 'Register Success !';
        $forgot_password_success = 'Send Email Success ! Please check your email';
        return view('auth.success_new', compact('info_success','forgot_password_success'));
    }

    public function error_info(){
        $register_error = 'Register Error !';
        $forgot_password_error = 'Send Email Failed! ';
        return view('auth.success_new', compact('info_error','forgot_password_error'));
    }
}
