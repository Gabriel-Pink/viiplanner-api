using Microsoft.AspNetCore.Mvc;

namespace Viiplanner.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserController : ControllerBase
{
    [HttpGet]
    public IActionResult GetUsers()
    {
        var users = new[]
        {
            new { Id = 1, Name = "Alice" },
            new { Id = 2, Name = "Bob" }
        };
        return Ok(users);
    }

    [HttpGet("{id}")]
    public IActionResult GetUser(int id)
    {
        var user = new { Id = id, Name = id == 1 ? "Alice" : "Bob" };
        return Ok(user);
    }

    [HttpPost]
    public IActionResult CreateUser([FromBody] dynamic user)
    {
        // Simulate creating a user
        return CreatedAtAction(nameof(GetUser), new { id = 3 }, user);
    }
}
