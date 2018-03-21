//-----------------------------------------------------------------------------
// Cookie Plugin JS
// (c)2018 C. Byerley (develephant)
//-----------------------------------------------------------------------------

window.cookie_js = 
{
  set: function(cookie_name, cookie_value, days) {
    if  (days != undefined) {
      var d = new Date();
      d.setTime(d.getTime() + (days*24*60*60*1000));
      var expires = "expires="+d.toUTCString();
      document.cookie = cookie_name + "=" + cookie_value + ";" + expires + ";path=/";
    } else {
      document.cookie = cookie_name + "=" + cookie_value + ";path=/";      
    }

    return 'set';
  },

  get: function(cookie_name) {
    var name = cookie_name + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var cookie_arr = decodedCookie.split(';');
    for(var i=0; i<cookie_arr.length; i++) {
      var val = cookie_arr[i];
      while (val.charAt(0) == ' ') {
        val = val.substring(1);
      }
      if (val.indexOf(name) == 0) {
        return val.substring(name.length, val.length);
      }
    }

    return "";
  },

  delete: function(cookie_name) {
    document.cookie = cookie_name + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    
    return 'deleted';
  }
};
