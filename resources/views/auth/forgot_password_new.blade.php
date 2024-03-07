@extends('../layouts/auth_layout')

@section('content')

<img class="wave" src="{{ asset('auth-page/img/wave-purple.svg') }}">
<div class="container">
    <div class="img">
        <img src="{{ asset('auth-page/img/auth-3d-purple/4.png') }}">
    </div>
    <div class="login-container">
        
        <form method="POST" action="{{ route('password.request') }}">
            @csrf
            <h2>Forgot Password</h2>
            <p>Enter your e-mail address in the field below</p>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-envelope"></i>
                </div>
                <div>
                    <input id="email" type="email" class="input form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>
                </div>
            </div>
            <input type="submit" class="btn" value="Enviar">
            <div class="account">
                <p>Have An Account ?</p>
                <a href="{{ route('loginnew') }}">Login</a>
            </div>
        </form>
    </div>
</div>
@endsection