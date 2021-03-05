@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Manage Brand
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <table class="table table-hover table-striped">
                      <tr>
                          <th>#</th>
                          <th>Brand Title</th>
                          <th>Brand Image</th>
                          <th>Action</th>
                      </tr>

                    @foreach ($brands as $brand)
                        <tr>
                            <td>#</td>
                            <td>{{ $brand->name }}</td>
                            <td>
                                <img src="{{asset('images/brands/' .$brand->image)}}" width="100">
                            </td>

                            <td>
                                <a href="{{ route('admin.brand.edit', $brand->id) }}" class="btn btn-success">Edit</a>
                                <a href="#deleteModal{{ $brand->id }}" data-toggle="modal" class="btn btn-danger">Delete</a>

                                <!-- Delete Modal -->
                                <div class="modal fade" id="deleteModal{{ $brand->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Are you sure to delete? </h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{route('admin.brand.delete', $brand->id)}}" method="post">
                                                    @csrf
                                                    <button type="submit" class="btn btn-danger">Permanent Delete</button>
                                                </form>


                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </table>

                </div>
            </div>
        </div>

@endsection
