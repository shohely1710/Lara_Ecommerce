@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Manage District
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <table class="table table-hover table-striped">
                      <tr>
                          <th>#</th>
                          <th>District Name</th>
                          <th>Division Name</th>
                          <th>Action</th>
                      </tr>

                    @foreach ($districts as $district)
                        <tr>
                            <td>#</td>
                            <td>{{ $district->name }}</td>
                            <td>{{ $district->division->name }}</td>


                            <td>
                                <a href="{{ route('admin.district.edit', $district->id) }}" class="btn btn-success">Edit</a>
                                <a href="#deleteModal{{ $district->id }}" data-toggle="modal" class="btn btn-danger">Delete</a>

                                <!-- Delete Modal -->
                                <div class="modal fade" id="deleteModal{{ $district->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Are you sure to delete? </h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{route('admin.district.delete', $district->id)}}" method="post">
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
