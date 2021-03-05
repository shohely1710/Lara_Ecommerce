@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Edit Product
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.category.update', $category->id) }}" method="post" enctype="multipart/form-data">
                        @include('backend.partials.messages')
                        @csrf
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ $category->name }}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Description(optional)</label>
                            <textarea name="description" cols="30" rows="10" class="form-control">{{ $category->description }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Parent Category (optional)</label>
                            <select class="form-control" name="parent_id">
                                <option value="">Please select a Primary Category</option>
                                @foreach ($main_categories as $cat)
                                    <option value="{{ $cat->id }}" {{ $cat->id == $category->parent_id ? 'selected' : '' }}>{{ $cat->name }}</option>
                                @endforeach
                            </select>

                        </div>


                        <div class="mb-3">
                            <label for="oldimage" class="form-label">Category Old Image(optional)</label><br>
                            <img src="{{asset('images/categories/' .$category->image)}}" width="100"><br>

                            <label for="image" class="form-label">Category New Image(optional)</label>

                            <input type="file" class="form-control" name="image" id="image">
                        </div>


                        <button type="submit" class="btn btn-success">Update Category</button>
                    </form>

                </div>
            </div>

        </div>

@endsection
