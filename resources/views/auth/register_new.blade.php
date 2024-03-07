@extends('../layouts/auth_layout')

@section('content')
<img class="wave" src="{{ asset('auth-page/img/wave-purple.svg') }}">
<div class="container">
    <div class="img">
        <img src="{{ asset('auth-page/img/auth-3d-purple/2.png') }}">
    </div>
    <div class="login-container">
        <form method="POST" action="{{ route('register') }}">
            @csrf
            <h2>{{ __('Register') }}</h2>
            <p>Register with other social medias:</p>
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
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div>
                    <input id="name" type="text" placeholder="name" class=" input form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                </div>

                @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

            </div>
            <div class="input-div two">
                <div class="i">
                    <i class="fas fa-envelope"></i>
                </div>
                <div>
                    <input id="email" type="email" class="input form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email"  placeholder="email">
                </div>
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-key"></i>
                </div>
                <div>
                    <input id="password" type="password" class="input form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="password">
                </div>
                @error('password')
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
                    <input id="password-confirm" type="password" class="input form-control" name="password_confirmation" required autocomplete="new-password" placeholder="password confirm">
                </div>
            </div>
            <div class="terms">
                <input type="checkbox">
                <label>I have read and accept the terms of </label><a id="action-modal">service and privacy policy.</a>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn-action">Register</button>
            </div>
            <div class="account">
                <p>Have An Account ?</p>
                <a href="{{ route('loginnew')}}">Login</a>
            </div>
            <!-- The Modal -->
            <div id="modal-terms" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h2>Termos e serviços</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Iaculis at erat pellentesque adipiscing commodo. Adipiscing
                        at in tellus integer feugiat scelerisque. Duis at consectetur lorem donec massa. Lacus vel
                        facilisis volutpat est velit. Faucibus turpis in eu mi bibendum. Natoque penatibus et magnis
                        dis parturient. Potenti nullam ac tortor vitae purus. Odio euismod lacinia at quis risus sed
                        vulputate odio. Pulvinar mattis nunc sed blandit libero volutpat sed. Dolor sit amet
                        consectetur adipiscing elit ut aliquam purus. Nulla facilisi etiam dignissim diam quis.
                        Massa ultricies mi quis hendrerit dolor magna eget. Tincidunt praesent semper feugiat nibh
                        sed pulvinar proin gravida. At auctor urna nunc id cursus metus aliquam eleifend. Amet nisl
                        purus in mollis nunc. Ultricies mi quis hendrerit dolor magna eget est lorem. Mi proin sed
                        libero enim. Viverra accumsan in nisl nisi. Cras ornare arcu dui vivamus arcu felis bibendum
                        ut tristique.</p>
                    <p>Mus mauris vitae ultricies leo integer. Gravida dictum fusce ut placerat orci nulla
                        pellentesque dignissim enim. Tempus egestas sed sed risus pretium quam vulputate. Nec
                        tincidunt praesent semper feugiat nibh sed. Dui accumsan sit amet nulla facilisi. Enim
                        praesent elementum facilisis leo vel fringilla est ullamcorper eget. Dolor sit amet
                        consectetur adipiscing elit pellentesque. Elit duis tristique sollicitudin nibh sit.
                        Scelerisque purus semper eget duis at tellus at urna. Consequat interdum varius sit amet
                        mattis. Nibh cras pulvinar mattis nunc sed blandit libero volutpat. Ac orci phasellus
                        egestas tellus. Fames ac turpis egestas sed tempus urna et. Non enim praesent elementum
                        facilisis leo vel fringilla est. Habitant morbi tristique senectus et. Hendrerit dolor magna
                        eget est lorem ipsum dolor sit. Nulla porttitor massa id neque aliquam vestibulum morbi
                        blandit cursus.</p>
                    <p>Sed odio morbi quis commodo. Purus semper eget duis at tellus at. Et netus et malesuada fames
                        ac. Dictum sit amet justo donec enim diam vulputate ut pharetra. Pellentesque pulvinar
                        pellentesque habitant morbi tristique. Platea dictumst quisque sagittis purus sit amet
                        volutpat. Nulla facilisi morbi tempus iaculis urna. Nunc sed blandit libero volutpat sed
                        cras. Magna sit amet purus gravida quis. Vel fringilla est ullamcorper eget nulla.</p>
                    <p>Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Praesent tristique
                        magna sit amet purus gravida. In cursus turpis massa tincidunt dui ut ornare lectus.
                        Tristique risus nec feugiat in fermentum posuere urna nec. Non blandit massa enim nec dui
                        nunc mattis. Volutpat blandit aliquam etiam erat velit. In ante metus dictum at. Pretium
                        vulputate sapien nec sagittis aliquam malesuada bibendum. Scelerisque mauris pellentesque
                        pulvinar pellentesque habitant morbi tristique senectus et. Ipsum suspendisse ultrices
                        gravida dictum fusce ut placerat orci nulla.</p>
                    <p>Non consectetur a erat nam. Tempor id eu nisl nunc mi ipsum faucibus vitae aliquet. Nec dui
                        nunc mattis enim ut tellus elementum sagittis. Pellentesque nec nam aliquam sem et tortor
                        consequat id porta. Mauris commodo quis imperdiet massa tincidunt. Nullam vehicula ipsum a
                        arcu cursus vitae congue mauris. In fermentum et sollicitudin ac. Fermentum dui faucibus in
                        ornare quam viverra orci sagittis eu. Ac turpis egestas sed tempus urna et pharetra pharetra
                        massa. Sit amet justo donec enim. Aliquam purus sit amet luctus venenatis lectus magna
                        fringilla. Non quam lacus suspendisse faucibus interdum.</p>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection()