describe("movie", function() {
    describe("isAllowedToWatchMovie", function() {
        describe("when ageRange returns 'underage'", function() {
            beforeEach(function(){
                spyOn(movie, 'ageRange').and.returnValue('underage');
            });

            it("returns false", function() {
                expect(movie.isAllowedToWatchMovie()).toEqual(false);
            });
        });

        describe("when ageRange returns 'adult'", function() {
            beforeEach(function(){
                spyOn(movie, 'ageRange').and.returnValue('adult');
            });

            it("returns true", function() {
                expect(movie.isAllowedToWatchMovie()).toEqual(true);
            });
        });
    });

    describe("ageRange", function() {
        describe("when age less than 18", function() {
            beforeEach(function(){
                movie.age = 17;
            });

            it("returns 'underage'", function() {
                expect(movie.ageRange()).toEqual('underage');
            });
        });

        describe("when age greater than 18", function() {
            beforeEach(function(){
                movie.age = 25;
            });

            it("returns 'adult'", function() {
                expect(movie.ageRange()).toEqual('adult');
            });
        });
    });
});
