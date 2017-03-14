module router;
import vibe.d;
import database;

@rootPathFromName
interface API
{
    @path("auth")           @method(HTTPMethod.GET)    Json getAuth(); 
}

class MyRouter : API
{
   Database db;
   this(Database db)
   {
    this.db = db;
   }
   
    override:
        Json getAuth() // not implemented
        {
           return Json.emptyObject;
        }


}



