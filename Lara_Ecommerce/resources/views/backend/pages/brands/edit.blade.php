@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Edit Brand
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.brand.update', $brand->id) }}" method="post" enctype="multipart/form-data">
                        @include('backend.partials.messages')
                        @csrf
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ $brand->name }}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Description(optional)</label>
                            <textarea name="description" cols="30" rows="10" class="form-control">{{ $brand->description }}</textarea>
                        </div>



                        <div class="mb-3">
                            <label for="oldimage" class="form-label">Brand Old Image(optional)</label><br>
                            <img src="{{asset('images/brands/' .$brand->image)}}" width="100"><br>

                            <label for="image" class="form-label">Brand New Image(optional)</label>

                            <input type="file" class="form-control" name="image" id="image">
                        </div>


                        <button type="submit" class="btn btn-success">Update Brand</button>
                    </form>

                </div>
            </div>

        </div>

@endsection
