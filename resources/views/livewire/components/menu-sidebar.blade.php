<div>





  <form class="mx-auto">
    <label for="product" class="block text-sm font-medium text-gray-900 dark:text-white">Select Workspace</label>
    <select id="product"
      class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option selected>Select Product</option>
      <option value=""></option>
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

  <br>
  <form class=" mx-auto">
    <div class="min-h-screen flex items-center justify-center">
      <div class="relative group">
        <button id="dropdown-button"
          class="inline-flex justify-center w-full px-4 py-2 text-sm font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-100 focus:ring-blue-500">
          <span class="mr-2">Open Dropdown</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 ml-2 -mr-1" viewBox="0 0 20 20" fill="currentColor"
            aria-hidden="true">
            <path fill-rule="evenodd"
              d="M6.293 9.293a1 1 0 011.414 0L10 11.586l2.293-2.293a1 1 0 111.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </button>
        <div id="dropdown-menu"
          class="hidden absolute right-0 mt-2 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 p-1 space-y-1">
          <!-- Search input -->
          <input id="search-input"
            class="block w-full px-4 py-2 text-gray-800 border rounded-md  border-gray-300 focus:outline-none"
            type="text" placeholder="Search items" autocomplete="off">
          <!-- Dropdown content goes here -->
          <a href="#"
            class="block px-4 py-2 text-gray-700 hover:bg-gray-100 active:bg-blue-100 cursor-pointer rounded-md">Uppercase</a>
          <a href="#"
            class="block px-4 py-2 text-gray-700 hover:bg-gray-100 active:bg-blue-100 cursor-pointer rounded-md">Lowercase</a>
          <a href="#"
            class="block px-4 py-2 text-gray-700 hover:bg-gray-100 active:bg-blue-100 cursor-pointer rounded-md">Camel
            Case</a>
          <a href="#"
            class="block px-4 py-2 text-gray-700 hover:bg-gray-100 active:bg-blue-100 cursor-pointer rounded-md">Kebab
            Case</a>
        </div>
      </div>
    </div>

  </form>


  @script
    <script>
      // JavaScript to toggle the dropdown
      const dropdownButton = document.getElementById('dropdown-button');
      const dropdownMenu = document.getElementById('dropdown-menu');
      const searchInput = document.getElementById('search-input');
      let isOpen = false; // Set to true to open the dropdown by default

      // Function to toggle the dropdown state
      function toggleDropdown() {
        isOpen = !isOpen;
        dropdownMenu.classList.toggle('hidden', !isOpen);
      }

      // Set initial state
      toggleDropdown();

      dropdownButton.addEventListener('click', () => {
        toggleDropdown();
      });

      // Add event listener to filter items based on input
      searchInput.addEventListener('input', () => {
        const searchTerm = searchInput.value.toLowerCase();
        const items = dropdownMenu.querySelectorAll('a');

        items.forEach((item) => {
          const text = item.textContent.toLowerCase();
          if (text.includes(searchTerm)) {
            item.style.display = 'block';
          } else {
            item.style.display = 'none';
          }
        });
      });
    </script>
  @endscript

</div>
