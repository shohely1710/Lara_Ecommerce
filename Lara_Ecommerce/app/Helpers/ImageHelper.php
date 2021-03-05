<?php
namespace App\Helpers;

/**
 *ImageHelper class
 */
use App\Models\User;
use App\Helpers\GravatarHelper;

class ImageHelper
{
        public static function getUserImage($id)
        {
            $user = User::find($id);
            $avatar_url = "";
            if(!is_null($user)){
               if($user->avatar == NULL){
                   //Return him gravatar image
                   if(GravatarHelper::validate_gravatar($user->email)){
                       $avatar_url = GravatarHelper::gravatar_image($user->email, 100);
                   }else{
                       //WHen there is no gravatar image
                       $avatar_url = url('images/defaults/user.png.png');
                   }

               }else{
                   // Return that image
                   $avatar_url =url('images/users' .$user->avatar);
               }
            }else{
//                return redirect('/');
            }

            return $avatar_url;
        }
}
