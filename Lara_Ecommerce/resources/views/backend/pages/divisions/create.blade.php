@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
{{--            <div class="container-fluid dashboard-content ">--}}
                <div class="card">
                    <div class="card-header mt-4">
                        Add Division
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.division.store') }}" method="post" enctype="multipart/form-data">
                            @include('backend.partials.messages')
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Division Name">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Priority</label>
                                <input type="text" class="form-control" name="priority" placeholder="Enter Division Priority">

                            </div>


                            <button type="submit" class="btn btn-primary">Add Division</button>
                        </form>
                    </div>
                </div>

{{--            </div>--}}
    </div>

@endsection
