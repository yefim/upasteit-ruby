## Usage (paste and get)

### Setup
``` ruby
> require 'upasteit'
> geoffs_pastes = UPaste.new "geoff"
```

### Paste
``` ruby
> geoffs_pastes.paste "how goes it?"
{
  "id": 1,
  "content": "how goes it?",
  "created_at": "2012-12-02T22:22:50-05:00",
  "user_id": 1
}
```

### Paste more
``` ruby
> geoffs_pastes.paste %w(this is an array of strings)
[
  {
    "id": 2,
    "content": "this",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 3,
    "content": "is",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 4,
    "content": "an",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 5,
    "content": "array",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 6,
    "content": "of",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 7,
    "content": "strings",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  }
]
```

### Get Pastes
``` ruby
> geoffs_pastes.get
[
  {
    "id": 2,
    "content": "this",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 3,
    "content": "is",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 4,
    "content": "an",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 5,
    "content": "array",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 6,
    "content": "of",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 7,
    "content": "strings",
    "created_at": "2012-12-02T22:24:29-05:00",
    "user_id": 1
  },
  {
    "id": 1,
    "content": "how goes it?",
    "created_at": "2012-12-02T22:22:50-05:00",
    "user_id": 1
  }
]
```
