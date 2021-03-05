@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Edit District
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.district.update', $district->id) }}" method="post" enctype="multipart/form-data">
                        @include('backend.partials.messages')
                        @csrf
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Enter District Name">
                        </div>

                        <div class="form-group">
                            <label for="division_id">Select a division for this district</label>
                            <select name="division_id" class="form-control">
                                <option value="">Please select a division for the district</option>
                                @foreach($divisions as $division)
                                    <option value="{{ $division->id }}" {{ $district->division->id == $division->id ? 'selected' : '' }}> {{ $division->name }}</option>
                                @endforeach
                            </select>
                        </div>



                        <button type="submit" class="btn btn-success">Update District</button>
                    </form>

                </div>
            </div>

        </div>

@endsection
