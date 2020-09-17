describe("Function addThis to add a value", function() {
    beforeEach(function(){
        globalInteger = 5;
    });

    it("returns 10", function() {
        addThis(5);
        expect(globalInteger).toEqual(10);
    });

    it("returns 20", function() {
        addThis(15);
        expect(globalInteger).toEqual(20);
    });
});
