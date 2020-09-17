function ArgumentError(message) {
    this.name = 'ArgumentError';
    this.message = message || 'Argument Error';
    this.stack = (new Error()).stack;
}
ArgumentError.prototype = Object.create(Error.prototype);
ArgumentError.prototype.constructor = ArgumentError;
