<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class SearchController extends Controller
{

    public function index(Request $requet)
    {
        $requet->validate([
            's' => 'required',
        ]);

        $s = $requet->s;
        $posts = Post::where('title', 'LIKE', "%{$s}%")->with('category')->paginate(2);
        return view('posts.search', compact('posts', 's'));
    }

}
