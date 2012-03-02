`sleep 3; open 'http://localhost:4000'` &
echo '*** Use CTRL+c to stop the server'
bundle exec jekyll --server --auto

echo '*** Regenerating README.md'
bundle exec ruby addons/convert.rb
echo '*** Done.'
