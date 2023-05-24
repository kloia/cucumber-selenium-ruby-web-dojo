# test-automation-dojo-base

Bu proje web test automation dojo 

# Tool stack

* **Ruby** - Development language
* **RubyMine IDE** - Development IDE
* **Cucumber** - Gherkin Syntax Framework
* **Capybara** - Web-based APP Framework
* **RSpec** - Assertion & Validation Framework
* **Selenium** - Web APP Test Automation Tool


# Kurulumlar

  ### Ruby (stable release) - Development Language
  * Mac için: Terminalde brew install ruby komutu çalıştırılır.

  * Windows için: <a href="https://rubyinstaller.org/downloads/archives/">Download Archives</a> kullanılabilir.  (Ruby+Devkit Installers indirilir)

  * Kurulumun başarılı olduğunu kontrol etmek için ruby -v komutunu terminalde çalıştırın.
   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21] ya da benzeri bir çıktı görürseniz kurulumunuz başarılı bir şekilde gerçekleşmiştir.

  ### Proje reposu
  * Proje repository'i [test-automation-dojo-base](https://github.com/kloia/test-automation-dojo-base) linkinden clone
    alınabilir.

  ### Kütüphane kurulumları
  * Gerekli kütüphanelerin yüklenilebilmesi için proje dizininde aşağıdaki komutlar çalıştırılır.
    ```
    gem install bundler
    bundle install
    ```
# Raporlama
* Raporlama aracı olarak allure report kullanılmaktadır.


* Allure report oluşturmak için allure pc'nizde kurulu olmalıdır.

    * Mac kurulum

      `brew install allure`

    * Windows Kurulum

        * Powershell açılır. Aşağıdaki komut çalıştırılır. Scoop kurulumu yapılır.

          `iwr -useb get.scoop.sh | iex`

        * Scoop başarılı kurulduktan sonra komut satırı açılır. Aşağıdaki komut çalıştırılır. Allure kurulumu yapılır.

          `scoop install allure`


* Allure report generate etmek için proje dizininde oluşan allure-results folder yolu verilerek aşağıdaki komut çalıştırılır.

  `allure serve cucumber/output/allure-results `