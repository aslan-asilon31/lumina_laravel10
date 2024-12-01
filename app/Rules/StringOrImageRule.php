<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

class StringOrImageRule implements ValidationRule
{
  /**
   * Run the validation rule.
   *
   * @param  \Closure(string, ?string=): \Illuminate\Translation\PotentiallyTranslatedString  $fail
   */
  public function validate(string $attribute, mixed $value, Closure $fail): void
  {
    if (!is_string($value) && !($value instanceof TemporaryUploadedFile)) {
      $fail("The Image URL must be string or image.");
    }
  }
}
