<form class="form-inline" action="{{route('carts.store')}}" method="post">
    @csrf
    <input type="hidden" name="product_id" value="{{ $product->id }}">
    <button type="button" class="btn btn-warning" onclick="addToCart({{ $product->id }})"><i class="fa fa-plus">Add to cart</i></button>
</form>
