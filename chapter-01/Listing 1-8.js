it("throws an exception if there is any character that does not belong to the latin alphabet", function() {

    expect(function(){

        encrypt("This includes the blank character that does not belong to latin alphabet")

    }).toThrowError(ArgumentError, "non-latin alphabet character encountered");

});
