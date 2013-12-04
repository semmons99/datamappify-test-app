# Steps to reproduce error

1. clone repo
2. bundle install
3. bundle exec ruby good.rb # Works :smile:
4. bundle exec ruby bad.rb # Fails :frowning:

# Error

```shell
/home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:85:in `attributes_from_same_source': undefined method `source_class_name' for nil:NilClass (NoMethodError)
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:70:in `override_attribute_getter'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:49:in `override_attribute'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:22:in `block in update'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:22:in `each'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/attributes_handler.rb:22:in `update'
	from /opt/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0/observer.rb:195:in `block in notify_observers'
	from /opt/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0/observer.rb:194:in `each'
	from /opt/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0/observer.rb:194:in `notify_observers'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/lazy/source_attributes_walker.rb:28:in `walk_performed'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method/source_attributes_walker.rb:53:in `perform_walk'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method/source_attributes_walker.rb:37:in `execute'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:143:in `block in attributes_walker'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:135:in `each'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:135:in `attributes_walker'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:98:in `walk_attributes'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:85:in `block in dispatch_criteria_to_providers'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/database/transactions.rb:118:in `_transaction'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/database/transactions.rb:93:in `block in transaction'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/database/connecting.rb:229:in `block in synchronize'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/connection_pool/threaded.rb:104:in `hold'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/database/connecting.rb:229:in `synchronize'
	from /home/vagrant/.gem/ruby/2.0.0/gems/sequel-4.5.0/lib/sequel/database/transactions.rb:86:in `transaction'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/data/criteria/sequel/transaction.rb:7:in `perform'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/data/criteria/common.rb:44:in `perform_with_callbacks'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/data/provider/common_provider.rb:117:in `build_criteria'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/unit_of_work/transaction.rb:12:in `initialize'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:84:in `new'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/method.rb:84:in `dispatch_criteria_to_providers'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/find.rb:11:in `perform'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_methods.rb:47:in `block in find'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/callbacks.rb:58:in `call'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/callbacks.rb:58:in `_run_callbacks'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_method/callbacks.rb:41:in `run_callbacks_and_return_entity'
	from /home/vagrant/.gem/ruby/2.0.0/bundler/gems/datamappify-a7ba0a2add43/lib/datamappify/repository/query_methods.rb:46:in `find'
	from bad.rb:67:in `<main>'
```
