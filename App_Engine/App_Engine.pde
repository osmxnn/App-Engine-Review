import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "C:\Users\hadio\OneDrive\Documents\GitHub\App-Engine-Review\App_Engine"; //Not Exported
//
void setup()
{
  File dir = new File(Path);//NULL if unexported
  File[] FileList;
  if ( dir == null) {
  dir = new File(directory);
  FileList = dir.listFiles();
  for (File file : FileList) {
    if (file.isFile() ) {
    if (file.toString().endsWith(".mp3") ) {
    songs = minim.loadFile(file.getName() );
    }
    }
   }
  } else {
    FileList = dir.listFiles();
     for (File file : FileList) {
    if (file.isFile() ) {
    if (file.toString().endsWith(".mp3") ) {
    songs = minim.loadFile(file.getName() );
    }
    }
   }
  }//Catch when NULL, unexported
  File[] FileList = dir.listFiles(); //Exported Folder
}
//End setup
//
void draw() {}//End Setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
