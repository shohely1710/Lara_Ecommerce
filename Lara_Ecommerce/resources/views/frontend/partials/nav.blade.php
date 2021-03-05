

<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-light">
    <div class="container">
        <a class="navbar-brand" href="{{ route('index') }}">
            <img src="{{ asset('images/logo.png') }}" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
{{--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--}}
                <li class="nav-item">
                    <a class="nav-link {{ Route::is('index') ? 'active' : '' }}" aria-current="page" href="{{ route('index') }}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  {{ Route::is('products') ? 'active' : '' }}" href="{{ route('products') }}">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Route::is('contact') ? 'active' : '' }}" href="{{ route('contact') }}">Contact</a>
                </li>
                <li class="nav-item">
                    <form class="form-inline my-2 my-lg-0" action="{{ route('search') }}" method="get">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="search" placeholder="Search Products" aria-label="Search Products" aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary search-icon-button" type="button" id="button-addon2"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </li>

            </ul>

            <ul class="navbar-nav ml-auto">
                <li>
                    <a class="nav-link  btn-cart-nav" href="{{ route('carts') }}">
                        <button class="btn btn-danger">
                            <span class="mt-1">Cart</span>
                            <span class="badge badge-warning" id="totalItems">
                                {{ App\Models\Cart::totalItems() }}
                            </span>
                        </button>

                    </a>
                </li>

                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">

                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="{{ route('logout') }}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            <img src="{{ App\Helpers\ImageHelper::getUserImage(Auth::user()->id) }}" class="img rounded-circle" style="width: 40px">
                            {{ Auth::user()->first_name }}   {{ Auth::user()->last_name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" data-toggle="dropdown">

                            <a class="dropdown-item" href="{{ route('user.dashboard') }}"
                            {{ __('My Dashboard') }}
                            </a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>


                            <form action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest

            </ul>

        </div>
    </div>
</nav>
