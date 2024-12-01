<div>

  <div class="flex items-center justify-center  gap-2 px-6 py-5.5 lg:py-6.5">
    <a href="index.html">
      <img src="{{ asset('/nerp.png') }}" class="w-16 h-16" alt="Logo NERP" />
    </a>
    <hr>
  </div>


  <form class="mx-auto">
    <label for="product" class="block text-sm font-medium text-gray-900 dark:text-white">Select Workspace</label>
    <select id="product"
      class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option selected>Select Product</option>
      <option value="">aa</option>

    </select>
  </form>


  <br>
  <form class=" mx-auto">
    <label for="warehouse" class="block text-sm font-medium text-gray-900 dark:text-white">Select Warehouse</label>
    <select id="warehouse"
      class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option selected>Select Warehouse</option>
      <option value="g-1">Gudang 1</option>
      <option value="g-2">Gudang 2</option>
      <option value="g-3">Gudang 3</option>
      <option value="g-4">Gudang 4</option>
    </select>
  </form>
  <br>
  <form class=" mx-auto">
    <label for="menu-favorites" class="block text-sm font-medium text-gray-900 dark:text-white">Menu Favorites</label>
    <select id="menu-favorites"
      class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option selected>Menu Favorite</option>
      <option value="umeda">Umeda - Sales Product</option>
    </select>
  </form>


</div>
