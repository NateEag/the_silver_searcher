Setup:

  $ . $TESTDIR/setup.sh
  $ mkdir -p basedir/subdir
  $ cd basedir/subdir
  $ printf "test\n" > a.txt
  $ cd ..
  $ git init --quiet
  $ if [ ! -d .git/info ] ; then mkdir .git/info ; fi
  $ printf "a.txt\n" > .git/info/exclude

  $ ag test
  [1]

  $ cd subdir
  $ ag test
  [1]
