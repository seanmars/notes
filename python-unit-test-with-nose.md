# Unit Test

單元測試採用 [nose](http://nose.readthedocs.io) 套件來管理、執行。



## API of unitest and nose

所有 nose 可用的 assert 名稱都跟 unitest.TestCase 底下的的方法名稱相同，但所有方法名稱都依照  [**PEP 8#function-names**](https://www.python.org/dev/peps/pep-0008#function-names) 重新命名。以下是可是用的方法列表(正確方法名稱請參考 [unitest](https://docs.python.org/3/library/unittest.html))：



The following table lists the most commonly used methods:

| Method In unitest                        | Checks that            | Method In nose               |
| ---------------------------------------- | ---------------------- | ---------------------------- |
| [`assertEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertEqual) | `a == b`               | assert_equal(a, b)           |
| [`assertNotEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotEqual) | `a != b`               | assert_not_equal(a, b)       |
| [`assertTrue(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertTrue) | `bool(x) is True`      | assert_true(x)               |
| [`assertFalse(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertFalse) | `bool(x) is False`     | assert_false(x)              |
| [`assertIs(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIs) | `a is b`               | assert_is(a, b)              |
| [`assertIsNot(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNot) | `a is not b`           | assert_is_not(a, b)          |
| [`assertIsNone(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNone) | `x is None`            | assert_is_none(x)            |
| [`assertIsNotNone(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNotNone) | `x is not None`        | assert_is_not_none(x)        |
| [`assertIn(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIn) | `a in b`               | assert_in(a, b)              |
| [`assertNotIn(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotIn) | `a not in b`           | assert_not_in(a, b)          |
| [`assertIsInstance(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsInstance) | `isinstance(a, b)`     | assert_is_instance(a, b)     |
| [`assertNotIsInstance(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotIsInstance) | `not isinstance(a, b)` | assert_is_not_instance(a, b) |

It is also possible to check the production of exceptions, warnings, and log messages using the following methods:

| Method In unitest                        | Checks that                              | Method In nose                           |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| [`assertRaises(exc, fun, *args, **kwds)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertRaises) | `fun(*args, **kwds)` raises *exc*        | assert_raises(exc, fun, *args, **kwds)   |
| [`assertRaisesRegex(exc, r, fun, *args, **kwds)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertRaisesRegex) | `fun(*args, **kwds)` raises *exc* and the message matches regex *r* | assert_raises_regex(exc, r, fun, *args, **kwds) |
| [`assertWarns(warn, fun, *args, **kwds)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertWarns) | `fun(*args, **kwds)` raises *warn*       | assert_warns(warn, fun, *args, **kwds)   |
| [`assertWarnsRegex(warn, r, fun, *args, **kwds)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertWarnsRegex) | `fun(*args, **kwds)` raises *warn* and the message matches regex *r* | assert_warns_regex(warn, r, fun, *args, **kwds) |
| [`assertLogs(logger, level)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertLogs) | The `with` block logs on *logger* with minimum *level* | assert_logs(logger, level)               |

There are also other methods used to perform more specific checks, such as:

| Method In unitest                        | Checks that                              | Method In nose                |
| ---------------------------------------- | ---------------------------------------- | ----------------------------- |
| [`assertAlmostEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertAlmostEqual) | `round(a-b, 7) == 0`                     | assert_almost_equal(a, b)     |
| [`assertNotAlmostEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotAlmostEqual) | `round(a-b, 7) != 0`                     | assert_not_almost_equal(a, b) |
| [`assertGreater(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertGreater) | `a > b`                                  | assert_greater(a, b)          |
| [`assertGreaterEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertGreaterEqual) | `a >= b`                                 | assert_greater_equal(a, b)    |
| [`assertLess(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertLess) | `a < b`                                  | assert_less(a, b)             |
| [`assertLessEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertLessEqual) | `a <= b`                                 | assert_less_equal(a, b)       |
| [`assertRegex(s, r)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertRegex) | `r.search(s)`                            | assert_regex(a, b)            |
| [`assertNotRegex(s, r)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotRegex) | `not r.search(s)`                        | assert_not_regex(s, r)        |
| [`assertCountEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertCountEqual) | *a* and *b* have the same elements in the same number, regardless of their order | assert_count_equal(a, b)      |

The list of type-specific methods automatically used by assertEqual() are summarized in the following table. Note that it’s usually not necessary to invoke these methods directly:

| Method In unitest                        | Used to compare    | Method In nose                |
| ---------------------------------------- | ------------------ | ----------------------------- |
| [`assertMultiLineEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertMultiLineEqual) | strings            | assert_multi_line_equal(a, b) |
| [`assertSequenceEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertSequenceEqual) | sequences          | assert_sequence_equal(a, b)   |
| [`assertListEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertListEqual) | lists              | assert_list_equal(a, b)       |
| [`assertTupleEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertTupleEqual) | tuples             | assert_tuple_equal(a, b)      |
| [`assertSetEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertSetEqual) | sets or frozensets | assert_set_equal(a, b)        |
| [`assertDictEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertDictEqual) | dicts              | assert_dict_equal(a, b)       |