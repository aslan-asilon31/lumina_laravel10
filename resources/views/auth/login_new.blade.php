@extends('../layouts/auth_layout')

@section('content')
@include('sweetalert::alert')

    <img class="wave" src="{{ asset('auth-page/img/wave-purple.svg') }}">
    <div class="container">
        <div class="img">
            <img src="{{ asset('auth-page/img/auth-3d-purple/1.png') }}">
        </div>
        <div class="login-container">
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <h2>{{ __('Login') }}</h2>
                <p>Welcome to {{ env('APP_NAME')}}!</p>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div>
                        <input id="email" type="email" placeholder="email" class="form-control @error('email') is-invalid @enderror input" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                    </div>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="input-div two">
                    <div class="i">
                        <i class="fas fa-key"></i>
                    </div>
                    <div>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror input" name="password" required autocomplete="current-password" type="password" placeholder="password">
                    </div>
                </div>
                <input type="submit" class="btn" value="Login">
                <a class="forgot" href="{{ route('registernew')}}">Don't have an acount ? , Click here to Register</a>
                <div class="others">
                    <hr>
                    <p>OR</p>
                    <hr>
                </div>
                <div class="social">
                    <div class="social-icons google">
                        <a href="#"><img src="{{ asset('auth-page/img/3d-icon/3d-icon-gmail.png') }}">Login with Google</a>
                    </div>
                    <div class="social-icons facebook">
                        <a href="#"><img src="{{ asset('auth-page/img/3d-icon/3d-icon-facebook.png') }}">Login with Facebook</a>
                    </div>
                    <div class="social-icons github">
                        <a href="#"><img src="{{ asset('auth-page/img/3d-icon/3d-icon-github.png') }}">Login with Github</a>
                    </div>
                    <div class="social-icons twitter">
                        <a href="#"><img src="{{ asset('auth-page/img/3d-icon/3d-icon-twitter.png') }}">Login with Twitter</a>
                    </div>
                    <div class="social-icons discord">
                        <a href="#"><img src="{{ asset('auth-page/img/3d-icon/3d-icon-discord.png') }}">Login with Discord</a>
                    </div>
                </div>
                <div class="account">
                    <p>Forgot Password ?</p>
                    <a href="{{ route('forgotpasswordnew') }}">Click Here</a>
                </div>
            </form>
        </div>
    </div>
@endsection


@push('js')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Check if it's the first page load using a flag in localStorage
        if (!localStorage.getItem('pageLoaded')) {
            // Show SweetAlert
            Swal.fire({
                title: 'Hello!',
                text: 'Created successfully!',
                icon: 'info',
                confirmButtonText: 'OK'
            });

            // Set a flag in localStorage to indicate that the page has been loaded
            localStorage.setItem('pageLoaded', 'true');
        }
    });
</script>
@endpush