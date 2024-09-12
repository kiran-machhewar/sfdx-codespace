try{
    FormulaEval.FormulaInstance currentMonth = Formula.builder()
   .withType(Student__c.SObjectType)
   .withReturnType(FormulaEval.FormulaReturnType.STRING)
   .withFormula('TEXT(MONTH(TODAY()))')
   .build();

    System.debug(currentMonth.evaluate(new Student__c()));
}catch(Exception exp){
    System.debug('EXP:'+exp.getMessage());
}
