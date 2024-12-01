@props(['fieldId' => null, 'isCancelShowed' => false])

<form wire:submit="{{ $fieldId ? 'update' : 'store' }}"
  wire:confirm="{{ $fieldId ? 'Do you want to update this data?' : 'Do you want to store this data?' }}">
  {{ $slot }}

  <div class="mt-4 text-center">
    @if ($fieldId)
      <x-button type="submit" label="Update" cyan />
    @else
      <x-button type="submit" label="Store" green />
    @endif

    @if ($isCancelShowed)
      <x-button label="Cancel" x-on:click="close" secondary />
    @endif
  </div>

  <div wire:loading wire:target="store, update" class="fixed left-0 top-0 w-full h-full bg-black opacity-25  z-[9999]">
    <div class="w-full h-full flex justify-center items-center">
      <x-form-loading />
    </div>
  </div>

  <x-errors class="mt-4" />
</form>
