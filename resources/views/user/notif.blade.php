@if (session('message'))
<div class="alert alert-success text-center">
  <font color="black" size="3px">{{session('message')}}</font>
</div>
@endif

@if (count($errors)>0)
<div class="alert alert-danger">
  <ul>

    @foreach ($errors->all() as $errors)
    <li><font color="black">{{$errors}}</font></li>
    @endforeach
  </ul>
</div>
@endif
