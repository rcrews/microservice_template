# Microservice Template

This proof of concept verifies that I can create a microservice using
the latest versions of JRuby and Sinatra -- 9.4.0.0 and 3.0.5,
respectively -- for Apache Tomcat 9. (Tomcat 9 rather than 10 because
the
[Servlet 5.0 namespace change](https://jakarta.ee/specifications/servlet/5.0/jakarta-servlet-spec-5.0.html#change-log)
-- “javax” → “jakarta” -- affects
[JRuby Rack](https://github.com/jruby/jruby-rack)
as it does most other Java-based web frameworks. I created this repo while
following jruby/warbler#508.

To get this going:

Install JRuby:

1. Install [RVM](https://rvm.io/).
2. Add JRuby 9.4.0.0 to RVM

       rvm install jruby-9.4.0.0

Clone the repo, and `cd` into it.
You should see RVM create a gemset container for the project.

Set up Bundler and use Bundler to install the gems:

    bundle config set --local development true
    bundle install

Build the war file:

    bundle exec warble

Add the gemspec file to the war:

    mkdir WEB-INF
    cp microservice_template.gemspec WEB-INF
    zip microservice_template.war WEB-INF/microservice_template.gemspec
    rm -r WEB-INF

Deploy with Tomcat:

1. Download [Tomcat 9](https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.zip) and unzip.
2. Copy the war to Tomcat’s `webapps` directory:

       cp microservice_template.war apache-tomcat-9.0.71/webapps

3. Start Tomcat:

       apache-tomcat-9.0.71/bin/startup.sh

Verify:

    open http://127.0.0.1:8080/microservice_template/frank-says
    curl -Iv http://127.0.0.1:8080/microservice_template/frank-says
