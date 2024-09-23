using MovieRatingAPI.Models;

namespace MovieRatingAPI.Repositories;

public interface IRatingRepository
{
    Task<IEnumerable<Rating>> GetAllRatingsAsync();
}