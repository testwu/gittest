@isTest
private class TestAddingnoaccs1   {
  public static testmethod void Addingnoaccs1 () {
      
      ApexPages.StandardController controller;
      
      Addingnoaccs1 addRows = new Addingnoaccs1 (controller);
      
      addRows .addrow();
      addrows .removerow();
      addRows .save();
      
  }
}