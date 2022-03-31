public with sharing class StringArrayTest {

    public static List<String> generateStringArray(Integer i) {
        List<String> testList = new List<String>();
        Integer j;
        for(j = 0; j < i; j++) {
            testList.add('Test '+ j);
        }

        return testList;
    }
}