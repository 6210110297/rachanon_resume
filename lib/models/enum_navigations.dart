enum EnumNavigations {
  intro,
  main,
  test,
}

String enumNavigationsToString(EnumNavigations page) {
  if (page == EnumNavigations.test) {
    return '/test';
  } else if (page == EnumNavigations.main) {
    return '/main';
  } else {
    return '/';
  }
}
