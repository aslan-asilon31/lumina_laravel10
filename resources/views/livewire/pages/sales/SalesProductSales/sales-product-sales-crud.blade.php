<div>
  @section('title', 'Product Sales Crud')



  <!-- Filepond stylesheet -->
  <link href="https://unpkg.com/filepond/dist/filepond.css" rel="stylesheet" />
  <div class="w-full ">
    {{-- <form wire:submit.prevent="{{ $id ? 'update' : 'store' }}" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4"> --}}
    <form wire:submit="store" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">

      <!-- Hidden input for the ID -->
      <input wire:model="productForm.id" id="productForm.id" type="hidden" value="{{ $id ? $id : null }}">

      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
          Name
        </label>
        <input
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
          wire:model.blur="productForm.name" id="productForm.name" type="text" placeholder="Name">

        @error('productForm.name')
          <span class="error">{{ $message }}</span>
        @enderror
      </div>

      <div class='mb-4'>
        <div class="mb-3">
          <x-label for="productForm.image">Image {{ $title }}</x-label>
          <x-image-upload wire:model="productForm.image" accept="image/png, image/jpeg" id="image"
            placeholder="Image Url" />
          @error('productForm.image')
            <span class="error">{{ $message }}</span>
          @enderror
          {{-- <x-image-preview /> --}}
        </div>

      </div>


      <div class='mb-4'>
        <select
          class="block w-full mt-1 px-4 py-2 bg-white border border-gray-300 rounded-md text-sm text-gray-700 focus:ring-indigo-500 focus:border-indigo-500">
          @foreach (\App\Models\StatusMaster::all() as $state)
            <option value="{{ $state->id }}">{{ $state->name }}</option>
          @endforeach
        </select>
      </div>



      <div wire:loading.delay wire:target="productForm.name">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 150">
          <path fill="none" stroke="#FF156D" stroke-width="15" stroke-linecap="round" stroke-dasharray="300 385"
            stroke-dashoffset="0"
            d="M275 75c0 31-27 50-50 50-58 0-92-100-150-100-28 0-50 22-50 50s23 50 50 50c58 0 92-100 150-100 24 0 50 19 50 50Z">
            <animate attributeName="stroke-dashoffset" calcMode="spline" dur="2" values="685;-685"
              keySplines="0 0 1 1" repeatCount="indefinite"></animate>
          </path>
        </svg>
      </div>

      <!-- Submit button that changes based on the operation -->
      <button type="submit" class="mt-4 bg-blue-500 text-white py-2 px-4 rounded">
        @if ($id)
          Update
        @else
          Save
        @endif
      </button>
    </form>




  </div>


  <script src="https://unpkg.com/filepond/dist/filepond.js"></script>

  <!-- Load FilePond library -->
  <script src="https://unpkg.com/filepond/dist/filepond.js"></script>
  <!-- add in <head> -->
  <link href="https://unpkg.com/filepond/dist/filepond.min.css" rel="stylesheet">
  <link href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css"
    rel="stylesheet">


  <!-- add before </body> -->
  <script src="https://unpkg.com/filepond-plugin-file-encode/dist/filepond-plugin-file-encode.min.js"></script>

  <script src="https://unpkg.com/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.min.js">
  </script>

  <script
    src="https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.min.js">
  </script>

  <script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>

  <script src="https://unpkg.com/filepond/dist/filepond.min.js"></script>

  <script>
    FilePond.registerPlugin(

      // encodes the file as base64 data
      FilePondPluginFileEncode,

      // validates the size of the file
      FilePondPluginFileValidateSize,

      // corrects mobile image orientation
      FilePondPluginImageExifOrientation,

      // previews dropped images
      FilePondPluginImagePreview
    );

    // Select the file input and use create() to turn it into a pond
    FilePond.create(
      document.querySelector("input[name='filepond']")
    );

    FilePond.parse(document.body);

    FilePond.create(
      document.querySelector('input'), {
        labelIdle: `Drag & Drop your picture or <span class="filepond--label-action">Browse</span>`,
        imagePreviewHeight: 170,
        imageCropAspectRatio: '1:1',
        imageResizeTargetWidth: 200,
        imageResizeTargetHeight: 200,
        stylePanelLayout: 'compact circle',
        styleLoadIndicatorPosition: 'center bottom',
        styleProgressIndicatorPosition: 'right bottom',
        styleButtonRemoveItemPosition: 'left bottom',
        styleButtonProcessItemPosition: 'right bottom',
      }
    );



    FilePond.registerPlugin(
      FilePondPluginFileValidateType,
      FilePondPluginImageExifOrientation,
      FilePondPluginImagePreview,
      FilePondPluginImageCrop,
      FilePondPluginImageResize,
      FilePondPluginImageTransform,
      FilePondPluginImageEdit
    );

    // Select the file input and use 
    // create() to turn it into a pond
    FilePond.create(
      document.querySelector('input'), {
        labelIdle: `Drag & Drop your picture or <span class="filepond--label-action">Browse</span>`,
        imagePreviewHeight: 170,
        imageCropAspectRatio: '1:1',
        imageResizeTargetWidth: 200,
        imageResizeTargetHeight: 200,
        stylePanelLayout: 'compact circle',
        styleLoadIndicatorPosition: 'center bottom',
        styleProgressIndicatorPosition: 'right bottom',
        styleButtonRemoveItemPosition: 'left bottom',
        styleButtonProcessItemPosition: 'right bottom',
      }
    );
  </script>

</div>
