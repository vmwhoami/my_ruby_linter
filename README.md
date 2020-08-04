# my_ruby_linter



<h1 align="center">MY RUBY LINTERS</h1>


<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/vmwhoami/my_ruby_linter/issues)
[![GitHub2 Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/vmwhoami/my_ruby_linter/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

[![Made By](https://img.shields.io/badge/made-VITALIE--MELNIC-red)](https://github.com/vmwhoami)
[![Twitter Follow](https://img.shields.io/twitter/follow/vmwhoami?label=follow%20vmwhoami%20on%20twitter&style=social)](https://twitter.com/vmwhoami)

</div>
<p align="center">
  <img src="https://raw.githubusercontent.com/vmwhoami/my_ruby_linter/working-branch/img/linterator.jpg" alt="RuboCop Logo"/>
</p>


---

## 📝 Content
<p align="center">
<a href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#builtwith">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#installing">Installing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#styleguide">Style Guide</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>
</p>


## 🧐 About <a name = "about"></a>
<h3 align="center">
This is a code linter like Rubocop that trawls through your code files and finds problems, such as unclosed braces,unclosed end.</h3>

---

## 🔧 Built with<a name = "builtwith"></a>

- [Ruby](https://rubyonrails.org/)
- RSpec for Ruby Testing


## 🛠 Installing <a name = "installing"></a>

### Pre-requisites

- Ruby installed on local machine. Please go to [this](https://www.ruby-lang.org/en/documentation/installation/) link if you need to install it.

### Usage

Clone this repository on the command promp or console using

```
git clone https://github.com/vmwhoami/my_ruby_linter
```
```
cd Ruby-Linters
```

Type in the following command to run the linter on a test file
```
ruby bin/main.rb
```
### Testing
Test class methods using RSpec by running the command in the root directory 
```
rspec
```
But before testing using RSpec you can install the gem file by running the command
```
$ bundle install 
```
Also make sure you have bundler installed on your system, else run
```
$ gem install bundler 
```
or you simply install the the following directly using
```
$ gem install rspec 
```

# Testing for <a name = "styleguide"></a>

#### - Linterator/incorect_end_handler
This method  makes sure that all methods use closing end tags 


```
# bad
def MyMethodName
  code


# good
def my_method_name
  # code
end
```

#### - Linterator/incorect_braces?
This cop checks for class and module names with an underscore in them.
```
# bad
def my_func(name)
  puts "Hello #{name"
end


# good
def my_func(name)
  puts "Hello #{name}"
end
```


## ✒️  Author <a name = "author"></a>

👤 **Vitalie Melnic**

- Github: [@vmwhoami](https://github.com/vmwhoami)
- Twitter: [@vmwhoami](https://twitter.com/vmwhoami)
- Linkedin: [@vmwhoami](https://www.linkedin.com/in/vitalie-melnic-5802198a/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/vmwhoami/my_ruby_linter/issues).

## 👍 Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is free to use as learning purposes. For any external content (e.g. logo, images, ...), please contact the proper author and check their license of use.

