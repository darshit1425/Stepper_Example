
import 'package:flutter/foundation.dart';

class Homeprovider extends ChangeNotifier
{
  int i = 0;

  void continu_step()
  {
    if(i<2)
    {
      i++;
    }
    notifyListeners();
  }

  void back_step()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }
}