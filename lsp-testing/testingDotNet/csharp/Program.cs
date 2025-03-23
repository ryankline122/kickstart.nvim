
Console.WriteLine("Hello world!!");
foo foo = new foo(1);
Console.WriteLine(foo.getCount());

class foo
{
    private int _count = 0;

    public foo(int count)
    {
        _count = count;
    }

    public int getCount()
    {
        return _count;
    }
}

