@extends('backend.layouts.master')
@section('content')

    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            {{--            <div class="container-fluid dashboard-content ">--}}
            <div class="card">
                <div class="card-header mt-4">
                    Manage Orders
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <table class="table table-hover table-striped" id="dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Order ID</th>
                                <th>Orderer Name</th>
                                <th>Orderer Phone No</th>
                                <th>Order Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                         @foreach ($orders as $order)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>#LE{{ $order->id }}</td>
                                <td>{{ $order->name }}</td>
                                <td>{{ $order->phone_no }}</td>
                                <td>
                                    <p>
                                        @if ($order->is_seen_by_admin)
                                            <button type="button" class="btn btn-success btn-sm">Seen</button>
                                        @else
                                            <button type="button" class="btn btn-warning btn-sm">Unseen</button>

                                        @endif
                                    </p>
                                    <p>
                                        @if ($order->is_completed)
                                            <button type="button" class="btn btn-success btn-sm">Completed</button>
                                        @else
                                            <button type="button" class="btn btn-warning btn-sm">Not Completed</button>

                                        @endif
                                    </p>
                                    <p>
                                        @if ($order->is_paid)
                                            <button type="button" class="btn btn-success btn-sm">Paid</button>
                                        @else
                                            <button type="button" class="btn btn-danger btn-sm">Unpaid</button>

                                        @endif
                                    </p>
                                </td>


                                <td>
                                    <a href="{{ route('admin.order.show', $order->id) }}"  class="btn btn-info">View Order</a>
                                    <a href="#deleteModal{{ $order->id }}" data-toggle="modal" class="btn btn-danger">Delete</a>

                                    <!-- Delete Modal -->
                                    <div class="modal fade" id="deleteModal{{ $order->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Are you sure to delete? </h5>
                                                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="{{route('admin.order.delete', $order->id)}}" method="post">
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

                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Order ID</th>
                                <th>Orderer Name</th>
                                <th>Orderer Phone No</th>
                                <th>Order Status</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>


                        </tbody>



                    </table>

                </div>
            </div>

{{--                        </div>--}}
        </div>

@endsection
