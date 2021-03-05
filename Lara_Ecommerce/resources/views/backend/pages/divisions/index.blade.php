@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="card">
                <div class="card-header mt-4">
                    Manage Division
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <table class="table table-hover table-striped">
                      <tr>
                          <th>#</th>
                          <th>Division Name</th>
                          <th>Division Priority</th>
                          <th>Action</th>
                      </tr>

                    @foreach ($divisions as $division)
                        <tr>
                            <td>#</td>
                            <td>{{ $division->name }}</td>
                            <td>{{ $division->priority }}</td>


                            <td>
                                <a href="{{ route('admin.division.edit', $division->id) }}" class="btn btn-success">Edit</a>
                                <a href="#deleteModal{{ $division->id }}" data-toggle="modal" class="btn btn-danger">Delete</a>

                                <!-- Delete Modal -->
                                <div class="modal fade" id="deleteModal{{ $division->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Are you sure to delete? </h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{route('admin.division.delete', $division->id)}}" method="post">
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
