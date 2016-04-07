# You might want to know

### Service Container

The Laravel service container is a powerful tool for managing class dependencies and performing dependency injection. Dependency injection is a fancy phrase that essentially means this: class dependencies are "injected" into the class via the constructor or, in some cases, "setter" methods.

### Contracts

Laravel's Contracts are a set of interfaces that define the core services provided by the framework. For example, a `Illuminate\Contracts\Queue\Queue` contract defines the methods needed for queueing jobs, while the `Illuminate\Contracts\Mail\Mailer` contract defines the methods needed for sending e-mail.

Each contract has a corresponding implementation provided by the framework. For example, Laravel provides a queue implementation with a variety of drivers, and a mailer implementation that is powered by SwiftMailer.

All of the Laravel contracts live in their own GitHub repository. This provides a quick reference point for all available contracts, as well as a single, decoupled package that may be utilized by package developers.

| Contract                                      | References Facade |
|-----------------------------------------------|-------------------|
| Illuminate\Contracts\Auth\Factory             | Auth              |
| Illuminate\Contracts\Auth\PasswordBroker      | Password          |
| Illuminate\Contracts\Bus\Dispatcher           | Bus               |
| Illuminate\Contracts\Broadcasting\Broadcaster |                   |
| Illuminate\Contracts\Cache\Repository         | Cache             |
| Illuminate\Contracts\Cache\Factory            | Cache::driver()   |
| Illuminate\Contracts\Config\Repository        | Config            |
| Illuminate\Contracts\Container\Container      | App               |
| Illuminate\Contracts\Cookie\Factory           | Cookie            |
| Illuminate\Contracts\Cookie\QueueingFactory   | Cookie::queue()   |
| Illuminate\Contracts\Encryption\Encrypter     | Crypt             |
| Illuminate\Contracts\Events\Dispatcher        | Event             |
| Illuminate\Contracts\Filesystem\Cloud         |                   |
| Illuminate\Contracts\Filesystem\Factory       | File              |
| Illuminate\Contracts\Filesystem\Filesystem    | File              |
| Illuminate\Contracts\Foundation\Application   | App               |
| Illuminate\Contracts\Hashing\Hasher           | Hash              |
| Illuminate\Contracts\Logging\Log              | Log               |
| Illuminate\Contracts\Mail\MailQueue           | Mail::queue()     |
| Illuminate\Contracts\Mail\Mailer              | Mail              |
| Illuminate\Contracts\Queue\Factory            | Queue::driver()   |
| Illuminate\Contracts\Queue\Queue              | Queue             |
| Illuminate\Contracts\Redis\Database           | Redis             |
| Illuminate\Contracts\Routing\Registrar        | Route             |
| Illuminate\Contracts\Routing\ResponseFactory  | Response          |
| Illuminate\Contracts\Routing\UrlGenerator     | URL               |
| Illuminate\Contracts\Support\Arrayable        |                   |
| Illuminate\Contracts\Support\Jsonable         |                   |
| Illuminate\Contracts\Support\Renderable       |                   |
| Illuminate\Contracts\Validation\Factory       | Validator::make() |
| Illuminate\Contracts\Validation\Validator     |                   |
| Illuminate\Contracts\View\Factory             | View::make()      |
| Illuminate\Contracts\View\View                |                   |

###
