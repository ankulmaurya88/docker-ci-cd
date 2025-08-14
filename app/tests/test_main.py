from app.main import greet

def test_greet():
    assert "Hello" in greet("Alice")
