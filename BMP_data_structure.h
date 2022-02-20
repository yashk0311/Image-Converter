/* Ayushmaan Singh's (IMT2020126) contribution */
struct bmp
{
    char name[2];              //SHOULD BE EQUAL TO BM
    unsigned int size;         //USING INT COZ SIZEOF(INT)=4
    int garbage;               //THIS IS NOT REQUIRED
    unsigned int image_offset; //OFFSET FROM WHERE IMAGE STARTS IN FILE
};

struct DIB_header
{
    unsigned int header_size;
    unsigned int width;
    unsigned int height;
    unsigned short int colorplanes;
    unsigned short int bitsperpixel;
    unsigned int compression;
    unsigned int image_size;
    unsigned int temp[4];
};

struct RGB
{
    unsigned char blue;
    unsigned char green;
    unsigned char red;
};

struct Image
{
    int height;
    int width;
    struct RGB **rgb;
};;