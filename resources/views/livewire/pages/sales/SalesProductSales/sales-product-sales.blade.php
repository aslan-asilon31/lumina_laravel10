<div>
  @section('title', 'Product Sales')
  <div class="mx-auto max-w-screen-2xl p-4 md:p-6 2xl:p-10">

    {{-- <x-menu-sidebar :companies="$companies" /> --}}

    <div class="flex">
      <h1>Product Sales </h1>

      <x-star-on />


    </div>

    <br>

    <div class="bg-white">

      <!-- Flash message -->
      @if (session()->has('message'))
        <div class="mt-4 p-2 bg-green-500 text-white rounded">
          {{ session('message') }}
        </div>
      @endif


      <br>
      <a href="/sales/product-sales/create" class="bg-purple-500 text-white p-3 px-6">Create</a>

      <livewire:pages.sales.sales-product-sales.components.product-table />

    </div>

  </div>

  @script
    <script></script>
  @endscript


</div>
