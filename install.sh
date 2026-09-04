#!/bin/sh
# Drop the Will Code For Food licence into a repository.
#
#   ./install.sh /path/to/repo [project-name]
#
# Copies both PolyForm texts and writes LICENSE.md with the project name filled
# in. Refuses to overwrite an existing LICENSE.md -- relicensing is a decision,
# not a script's call to make.
set -e

target=${1:?usage: install.sh <repo-path> [project-name]}
name=${2:-$(basename "$(cd "$target" && pwd)")}
here=$(cd "$(dirname "$0")" && pwd)

[ -d "$target" ] || { echo "no such directory: $target" >&2; exit 1; }
[ -e "$target/LICENSE.md" ] && { echo "$target/LICENSE.md already exists; not touching it" >&2; exit 1; }

cp "$here/LICENSE-NONCOMMERCIAL.md" "$here/LICENSE-INTERNAL-USE.md" "$here/LICENSE-DOCS.md" "$target/"
sed "s/{{PROJECT}}/$name/g" "$here/LICENSE.template.md" > "$target/LICENSE.md"

echo "licensed $name:"
echo "  $target/LICENSE.md"
echo "  $target/LICENSE-NONCOMMERCIAL.md"
echo "  $target/LICENSE-INTERNAL-USE.md"
echo "  $target/LICENSE-DOCS.md"
echo
echo "Add to your README:"
echo
echo "  ## License"
echo
echo "  Available under either [PolyForm Noncommercial 1.0.0](LICENSE-NONCOMMERCIAL.md)"
echo "  or [PolyForm Internal Use 1.0.0](LICENSE-INTERNAL-USE.md), at your option --"
echo "  see [LICENSE.md](LICENSE.md). Documentation is CC BY-NC-SA 4.0, see"
echo "  [LICENSE-DOCS.md](LICENSE-DOCS.md)."
echo
echo "  Research is welcome, using it at your job is welcome, selling it or a"
echo "  service built on it is not. The grant on published versions is perpetual"
echo "  and irrevocable."
