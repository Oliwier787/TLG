namespace ProjektWedkarski
{
    public partial class MainPage : ContentPage
    {
        int count = 0;


        public MainPage()
        {
            InitializeComponent();
            //LoadPosts();
        }

        //async void LoadPosts()
        //{
        //    var posts = await App.Database.GetPostsAsync();
        //    PostsListView.ItemsSource = posts;
        //}

        async void OnAddPostClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AddPostPage());
        }



    }

}
