using MovieRatingAPI.Models;

namespace MovieRatingAPI.Services;

public interface IRatingService
{
    Task<IEnumerable<Rating>> GetAllRatings();
}