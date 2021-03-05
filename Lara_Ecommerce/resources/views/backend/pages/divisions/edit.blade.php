@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Edit Division
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.division.update', $division->id) }}" method="post" enctype="multipart/form-data">
                        @include('backend.partials.messages')
                        @csrf
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ $division->name }}">
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Priority</label>
                            <input type="text" class="form-control" name="priority " value="{{ $division->priority }}">
                        </div>




                        <button type="submit" class="btn btn-success">Update Division</button>
                    </form>

                </div>
            </div>

        </div>

@endsection
