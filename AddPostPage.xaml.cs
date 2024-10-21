namespace ProjektWedkarski;

public partial class AddPostPage : ContentPage
{
    public AddPostPage()
    {
        InitializeComponent();
    }

    async void OnSubmitClicked(object sender, EventArgs e)
    {
        //var post = new Post
        //{
        //    Title = PostTitle.Text,
        //    Content = PostContent.Text
        //};

        //await App.Database.SavePostAsync(post);
        await Navigation.PopAsync();
    }
}