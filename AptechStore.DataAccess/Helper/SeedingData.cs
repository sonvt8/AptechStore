using AptechStore.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace AptechStore.DataAccess.Helper
{
    public static class SeedingData
    {
        public static void Seed(this ModelBuilder builder)
        {
            builder.Entity<Category>().HasData(
                new Category
                {
                    Id = 1,
                    Name = "Film"
                },
                new Category
                {
                    Id = 2,
                    Name = "Fiction"
                },
                new Category
                {
                    Id = 3,
                    Name = "Nature"
                },
                new Category
                {
                    Id = 4,
                    Name = "Memoir"
                }
            );

            builder.Entity<Product>().HasData(
                new Product
                {
                    Id = 1,
                    Title = "Girls Against God",
                    Description = "Welcome to 1990s Norway. White picket fences run in neat rows and Christian conservatism runs deep. But as the Artist considers her work, things start stirring themselves up. In a corner of Oslo a coven of witches begin cooking up some curses. A time-travelling Edvard Munch arrives in town to join a death metal band, closely pursued by the teenaged subject of his painting Puberty, who has murder on her mind. Meanwhile, out deep in the forest, a group of school girls get very lost and things get very strange. And awful things happen in aspic.",
                    Price = 22,
                    Author = "JENNY HVAL",
                    ImageUrl = "\\images\\products\\59594d61-7535-4f36-bcca-2998757c9868.jpg",
                    Quantity = 32,
                    CategoryId = 1
                },
                new Product
                {
                    Id = 2,
                    Title = "Promised Land",
                    Description = "A riveting, deeply personal account of history in the making&mdash;from the president who inspired us to believe in the power of democracy. In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency & mdash; a time of dramatic transformation and turmoil.",
                    Price = 55,
                    Author = "BARACK OBAMA",
                    ImageUrl = "\\images\\products\\98c7dcef-5876-43d1-9871-b60f56fc4265.jpg",
                    Quantity = 60,
                    CategoryId = 2
                },
                new Product
                {
                    Id = 3,
                    Title = "Field Notes",
                    Description = "When Julia Zarankin saw her first red-winged blackbird at the age of thirty-five, she didn&rsquo;t expect that it would change her life. Recently divorced and auditioning hobbies during a stressful career transition, she stumbled on birdwatching, initially out of curiosity for the strange breed of humans who wear multi-pocketed vests, carry spotting scopes and discuss the finer points of optics with disturbing fervour. What she never could have predicted was that she would become one of them. Not only would she come to identify proudly as a birder, but birding would ultimately lead her to find love, uncover a new language and lay down her roots.",
                    Price = 35,
                    Author = "JULIA ZARANKIN",
                    ImageUrl = "\\images\\products\\1827a268-16ce-4fb2-804a-04432f579137.jpg",
                    Quantity = 60,
                    CategoryId = 1
                }
            );
        }
    }
}
