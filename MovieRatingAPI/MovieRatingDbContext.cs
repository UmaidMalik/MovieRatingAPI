using Microsoft.EntityFrameworkCore;
using MovieRatingAPI.Models;

namespace MovieRatingAPI;

public class MovieRatingDbContext : DbContext
{
    public MovieRatingDbContext(DbContextOptions<MovieRatingDbContext> options) : base(options)
    {
        
    }
    
    public DbSet<User> Users { get; set; }
    public DbSet<Movie> Movies { get; set; }
    public DbSet<Rating> Ratings { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        //base.OnModelCreating(modelBuilder);
        modelBuilder.Entity<User>().ToTable("users");
        modelBuilder.Entity<Movie>().ToTable("movies");
        modelBuilder.Entity<Rating>().ToTable("ratings");
    }
}