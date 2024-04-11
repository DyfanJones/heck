use extendr_api::prelude::*;

use heck::{
  ToKebabCase, ToLowerCamelCase, ToPascalCase,
  ToSnakeCase, ToSnekCase, ToTitleCase, ToTrainCase, ToUpperCamelCase,
  ToShoutyKebabCase, ToShoutySnakeCase
};

macro_rules! make_heckin_fn {
  ($fn_name:ident) => {
    /// @rdname caseconverter
    /// @export
    #[extendr]
    fn $fn_name(x: Strings) -> Strings {
      x.into_iter()
      .map(|xi| match xi.is_na() {
        true => Rstr::na(),
        false => Rstr::from(xi.as_str().$fn_name()),
      })
      .collect::<Strings>()
    }
  };
}

make_heckin_fn!(to_kebab_case);
make_heckin_fn!(to_lower_camel_case);
make_heckin_fn!(to_upper_camel_case);
make_heckin_fn!(to_pascal_case);
make_heckin_fn!(to_snake_case);
make_heckin_fn!(to_snek_case);
make_heckin_fn!(to_title_case);
make_heckin_fn!(to_train_case);
make_heckin_fn!(to_shouty_kebab_case);
make_heckin_fn!(to_shouty_snake_case);

extendr_module! {
  mod heck;
  fn to_kebab_case;
  fn to_lower_camel_case;
  fn to_upper_camel_case;
  fn to_pascal_case;
  fn to_snake_case;
  fn to_snek_case;
  fn to_title_case;
  fn to_train_case;
  fn to_shouty_kebab_case;
  fn to_shouty_snake_case;
}
