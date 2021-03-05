<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>
            @yield('title', 'Laravel Ecommerce Project')
        </title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @include('frontend.partials.styles')
     </head>
    <body>
        <div class="wrapper">
            <!--Navigation Bar-->
            @include('frontend.partials.nav')
            @include('frontend.partials.messages')
            <!--Navigation Bar end-->


            <!--Sidebar+content-->

            @yield('content')

            <!--Sidebar+content end-->
            @include('frontend.partials.footer')

        </div>

    @include('frontend.partials.scripts')

    @yield('scripts')
   </body>
</html>
