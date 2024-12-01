 <div>
   <x-label for="productForm.image_url">
     <div class="my-2 flex justify-center border py-4">
       <div class="w-1/3 border">
         <x-button wire:click.debounce.500ms="removeImageUrl" wire:confirm="Do you want to remove this image?" negative
           label="Remove Image" rounded="false" class="w-full" />
         <img src="{{ $image->temporaryUrl() }}" alt="Temporary image" />
       </div>
     </div>
   </x-label>
 </div>
