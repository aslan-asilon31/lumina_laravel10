<?php

namespace App\Helpers\ImageUpload\Traits;

use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

trait WithImageUpload
{
  protected function saveImage($folderName = 'files/images', $newImageUrl, $newImageName, $oldImageUrl)
  {
    if ($newImageUrl instanceof TemporaryUploadedFile) {
      $extension = $newImageUrl->extension();
      $newFullImageName  = $newImageName . '_' . str(now())->slug()->toString() . ".$extension";
      $newImageUrl = '/' . $newImageUrl->storeAs($folderName, $newFullImageName, 'public');
      if ($oldImageUrl && \Illuminate\Support\Facades\Storage::disk('public')->exists($oldImageUrl)) {
        \Illuminate\Support\Facades\Storage::disk('public')->delete($oldImageUrl);
      }
    }

    return $newImageUrl;
  }

  public function removeImageUrl($key = 'image_url')
  {
    $this->masterForm->$key = null;
  }

  public function deleteImage(string|null $imageUrl = null)
  {
    if ($imageUrl && \Illuminate\Support\Facades\Storage::disk('public')->exists($imageUrl)) {
      \Illuminate\Support\Facades\Storage::disk('public')->delete($imageUrl);
    }
  }
}
