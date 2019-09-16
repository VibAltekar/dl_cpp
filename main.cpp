#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

using namespace cv;
using namespace std;

int main() {

  Mat image;

  image = imread("lena.jpg", 1);

  if ( !image.data ) {
    cout << "No image data" << endl;
    return -1;
  }

  namedWindow("Display Image", WINDOW_AUTOSIZE);
  imshow("Display Image", image);

  waitKey(0);

  return 0;
}
