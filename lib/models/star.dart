class Star {
  String _starName;
  String _starFeature;
  String _starDetail;
  String _starImage;

  Star(this._starName, this._starFeature, this._starDetail, this._starImage);

  String get starName => this._starName;

  set starName(String value) => this._starName = value;

  get starFeature => this._starFeature;

  set starFeature(value) => this._starFeature = value;

  get starDetail => this._starDetail;

  set starDetail(value) => this._starDetail = value;

  get starImage => this._starImage;

  set starImage(value) => this._starImage = value;
}
