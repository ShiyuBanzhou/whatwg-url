[Exposed=(Window,Worker),
 LegacyWindowAlias=webkitURL]
interface URL {
  constructor(USVString url, optional USVString base);

  [WebIDL2JSCallWithGlobal] static URL? parse(USVString url, optional USVString base);
  static boolean canParse(USVString url, optional USVString base);

  stringifier attribute USVString href;
  readonly attribute USVString origin;
           attribute USVString protocol;
           attribute USVString username;
           attribute USVString password;
           attribute USVString host;
           attribute USVString hostname;
           attribute USVString port;
           attribute USVString pathname;
           attribute USVString search;
  [SameObject] readonly attribute URLSearchParams searchParams;
           attribute USVString hash;

  USVString toJSON();
};
