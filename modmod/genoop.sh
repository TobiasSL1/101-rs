cargo run -- generate -o target/course -c ../content/full.track.toml --theme @mandel/slidev-theme-sandbee
cp ../oop/layouts target/course/slides -r
cp ../oop/.npmrc target/course/slides

pushd target/course/slides
npm add @mandel/slidev-theme-sandbee@1.5.3
npm install
sed -i 's/slidev export/slidev export --with-clicks/g' package.json
npm run export-1_1
npm run export-2_1
npm run export-2_2
npm run export-2_3
npm run export-2_4
npm run export-2_5
npm run export-2_6
npm run export-3_1
npm run export-4_1
npm run export-4_2
npm run export-4_3
npm run export-5_1
npm run export-6_1
popd