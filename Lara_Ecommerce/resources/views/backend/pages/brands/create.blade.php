@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
{{--            <div class="container-fluid dashboard-content ">--}}
                <div class="card">
                    <div class="card-header mt-4">
                        Add Brand
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.brand.store') }}" method="post" enctype="multipart/form-data">
                            @include('backend.partials.messages')
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Brand Name">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Description</label>
                                <textarea name="description" cols="30" rows="10" class="form-control"></textarea>
                            </div>


                            <div class="mb-3">
                                <label for="image" class="form-label">Brand Image(optional)</label>
                                 <input type="file" class="form-control" name="image" id="image">
                            </div>


                            <button type="submit" class="btn btn-primary">Add Brand</button>
                        </form>
                    </div>
                </div>

{{--            </div>--}}
    </div>

@endsection
