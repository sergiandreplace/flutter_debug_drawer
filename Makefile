 # Copyright (C) 2019, David PHAM-VAN <dev.nfet.net@gmail.com>
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 #     http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.

DART_SRC=$(shell find . -name '*.dart')

all: format

format: format-dart

format-dart: $(DART_SRC)
	dartfmt -w --fix $^

clean:
	git clean -fdx -e .vscode

test:
	pub run test

publish: format analyze clean
	pub publish -f

.dartfix:
	pub global activate dartfix
	touch $@

.pana:
	pub global activate pana
	touch $@

fix: .dartfix $(DART_SRC)
	pub global run dartfix --overwrite .

analyze: $(DART_SRC)
	dartanalyzer --fatal-infos --fatal-warnings --fatal-hints --fatal-lints -v .

pana: .pana
	pub global run pana --no-warning --source path .

.PHONY: format format-dart clean publish test fix analyze

lib/src/pubspec.dart: pubspec.yaml
	flutter pub run pubspec_extract -s $^ -d $@
