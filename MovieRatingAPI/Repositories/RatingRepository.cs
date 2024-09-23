using MovieRatingAPI.Models;

namespace MovieRatingAPI.Repositories;

public class RatingRepository : IRatingRepository
{
    public Task<IEnumerable<Rating>> GetAllRatingsAsync()
    {
        throw new NotImplementedException();
    }
}