@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- ============================================================== -->
            <!-- pageheader  -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="page-header">
                        <h2 class="pageheader-title">E-commerce Dashboard Template </h2>
                    </div>
                </div>
            </div>
            <!-- end pageheader  -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="card card-body">
                        <h3>Welcome to Your Admin Panel</h3>

                        <br>
                        <br>
                        <p><a href="{{ route('index') }}" class="btn btn-primary btn-lg" target="_blank">Visit Main Site</a></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>






    <!-- ============================================================== -->
    <!-- footer -->
    <div class="footer">
        <div class="container-fluid">
                <p class="text-center">&copy; 2021 All Rights Reserved | Ecommerce Site</p>

        </div>
    </div>

    <!-- ============================================================== -->
    <!-- end footer -->
    <!-- ============================================================== -->


@endsection
