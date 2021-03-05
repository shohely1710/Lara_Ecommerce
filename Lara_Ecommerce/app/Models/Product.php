<?php

namespace App\Models;
use App\Models\ProductImage;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;


class Product extends Model
{
    use Sluggable;
    protected $guarded='';
    public function images()
    {
        return $this->hasMany(ProductImage::class);
    }
    public function category()
    {
        return $this->belongsTo(Category:: class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand:: class);
    }

    public function sluggable()
    {
        return [
            'slug' =>[
                'source' => 'title'
            ]
        ];
    }
}
