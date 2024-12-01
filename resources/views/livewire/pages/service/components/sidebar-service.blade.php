<div>
  <aside :class="sidebarToggle ? 'translate-x-0' : '-translate-x-full'"
    class="absolute left-0 top-0 z-9999 flex h-screen w-72.5 flex-col overflow-y-hidden bg-black duration-300 ease-linear dark:bg-boxdark lg:static lg:translate-x-0"
    @click.outside="sidebarToggle = false">
    <!-- SIDEBAR HEADER -->
    <livewire:components.menu-sidebar />

    <!-- SIDEBAR HEADER -->

    <div class="no-scrollbar flex flex-col overflow-y-auto duration-300 ease-linear ">
      <!-- Sidebar Menu -->
      <nav class="mt-5 px-4 py-4 lg:mt-9 lg:px-6 bg-red" x-data="{ selected: $persist('Dashboard') }">
        <!-- Menu Group -->
        <div>
          <h3 class="mb-4 ml-4 text-sm font-medium text-bodydark2">MENU</h3>

          <ul class="mb-6 flex flex-col gap-1.5">

            <!-- Menu Item Calendar -->
            <li>
              <a class=" text-purple-300 hover:bg-purple-700 group relative flex items-center gap-2.5 rounded-sm px-4 py-2 font-medium text-bodydark1 duration-300 ease-in-out hover:bg-graydark dark:hover:bg-meta-4"
                href="calendar.html" @click="selected = (selected === 'Calendar' ? '':'Calendar')"
                :class="{ 'bg-graydark dark:bg-meta-4': (selected === 'Calendar') && (page === 'calendar') }">
                <svg class="fill-current" width="18" height="18" viewBox="0 0 18 18" fill="none"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M15.7499 2.9812H14.2874V2.36245C14.2874 2.02495 14.0062 1.71558 13.6405 1.71558C13.2749 1.71558 12.9937 1.99683 12.9937 2.36245V2.9812H4.97803V2.36245C4.97803 2.02495 4.69678 1.71558 4.33115 1.71558C3.96553 1.71558 3.68428 1.99683 3.68428 2.36245V2.9812H2.2499C1.29365 2.9812 0.478027 3.7687 0.478027 4.75308V14.5406C0.478027 15.4968 1.26553 16.3125 2.2499 16.3125H15.7499C16.7062 16.3125 17.5218 15.525 17.5218 14.5406V4.72495C17.5218 3.7687 16.7062 2.9812 15.7499 2.9812ZM1.77178 8.21245H4.1624V10.9968H1.77178V8.21245ZM5.42803 8.21245H8.38115V10.9968H5.42803V8.21245ZM8.38115 12.2625V15.0187H5.42803V12.2625H8.38115ZM9.64678 12.2625H12.5999V15.0187H9.64678V12.2625ZM9.64678 10.9968V8.21245H12.5999V10.9968H9.64678ZM13.8374 8.21245H16.228V10.9968H13.8374V8.21245ZM2.2499 4.24683H3.7124V4.83745C3.7124 5.17495 3.99365 5.48433 4.35928 5.48433C4.7249 5.48433 5.00615 5.20308 5.00615 4.83745V4.24683H13.0499V4.83745C13.0499 5.17495 13.3312 5.48433 13.6968 5.48433C14.0624 5.48433 14.3437 5.20308 14.3437 4.83745V4.24683H15.7499C16.0312 4.24683 16.2562 4.47183 16.2562 4.75308V6.94683H1.77178V4.75308C1.77178 4.47183 1.96865 4.24683 2.2499 4.24683ZM1.77178 14.5125V12.2343H4.1624V14.9906H2.2499C1.96865 15.0187 1.77178 14.7937 1.77178 14.5125ZM15.7499 15.0187H13.8374V12.2625H16.228V14.5406C16.2562 14.7937 16.0312 15.0187 15.7499 15.0187Z"
                    fill="" />
                </svg>

                Dashboard service
              </a>
            </li>
            <!-- Menu Item Calendar -->

          </ul>
        </div>

        <!-- Others Group -->
        <div>
          <h3 class="mb-4 ml-4 text-sm font-medium text-bodydark2">Master Data</h3>
          <ul class="mb-6 flex flex-col gap-1.5">
            <li>
              <a class="text-purple-300 hover:bg-purple-700 group relative flex items-center gap-2.5 rounded-sm py-2 px-4 font-medium text-bodydark1 duration-300 ease-in-out hover:bg-graydark dark:hover:bg-meta-4"
                href="chart.html" @click="selected = (selected === 'Product' ? '':'Product')"
                :class="{ 'bg-graydark dark:bg-meta-4': (selected === 'Product') && (page === 'Product') }">
                <!-- Product Icon -->
                <svg class="fill-current" width="18" height="19" viewBox="0 0 18 19" fill="none"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M4 1H14C14.5304 1 15 1.46957 15 2V16C15 16.5304 14.5304 17 14 17H4C3.46957 17 3 16.5304 3 16V2C3 1.46957 3.46957 1 4 1Z" />
                </svg>
                Master Product
              </a>
            </li>
            <li>
              <a class="text-purple-300 hover:bg-purple-700 group relative flex items-center gap-2.5 rounded-sm py-2 px-4 font-medium text-bodydark1 duration-300 ease-in-out hover:bg-graydark dark:hover:bg-meta-4"
                href="chart.html" @click="selected = (selected === 'Category' ? '':'Category')"
                :class="{ 'bg-graydark dark:bg-meta-4': (selected === 'Category') && (page === 'Category') }">
                <!-- Category Icon -->
                <svg class="fill-current" width="18" height="19" viewBox="0 0 18 19" fill="none"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M4 1H14C14.5304 1 15 1.46957 15 2V16C15 16.5304 14.5304 17 14 17H4C3.46957 17 3 16.5304 3 16V2C3 1.46957 3.46957 1 4 1Z" />
                </svg>
                Master Category
              </a>
            </li>
            <li>
              <a class="text-purple-300 hover:bg-purple-700 group relative flex items-center gap-2.5 rounded-sm py-2 px-4 font-medium text-bodydark1 duration-300 ease-in-out hover:bg-graydark dark:hover:bg-meta-4"
                href="chart.html" @click="selected = (selected === 'Brand' ? '':'Brand')"
                :class="{ 'bg-graydark dark:bg-meta-4': (selected === 'Brand') && (page === 'Brand') }">
                <!-- Brand Icon -->
                <svg class="fill-current" width="18" height="19" viewBox="0 0 18 19" fill="none"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M4 1H14C14.5304 1 15 1.46957 15 2V16C15 16.5304 14.5304 17 14 17H4C3.46957 17 3 16.5304 3 16V2C3 1.46957 3.46957 1 4 1Z" />
                </svg>
                Master Brand
              </a>
            </li>
            <li>
              <a class="text-purple-300 hover:bg-purple-700 group relative flex items-center gap-2.5 rounded-sm py-2 px-4 font-medium text-bodydark1 duration-300 ease-in-out hover:bg-graydark dark:hover:bg-meta-4"
                href="chart.html" @click="selected = (selected === 'Warehouse' ? '':'Warehouse')"
                :class="{ 'bg-graydark dark:bg-meta-4': (selected === 'Warehouse') && (page === 'Warehouse') }">
                <!-- Warehouse Icon -->
                <svg class="fill-current" width="18" height="19" viewBox="0 0 18 19" fill="none"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M4 1H14C14.5304 1 15 1.46957 15 2V16C15 16.5304 14.5304 17 14 17H4C3.46957 17 3 16.5304 3 16V2C3 1.46957 3.46957 1 4 1Z" />
                </svg>
                Master Warehouse
              </a>
            </li>
          </ul>

        </div>
      </nav>
      <!-- Sidebar Menu -->


    </div>
  </aside>
</div>
