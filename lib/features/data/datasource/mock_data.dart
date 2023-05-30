import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/domain/entity/user_entity.dart';

PostEntity postEntityRohtolos = PostEntity(
  isLiked: true,
  userEntity: UserEntity(name: 'Rohtolos'),
  caption:
      "Rohtolos's caption sadcafgvwetfgq32erfqefqaedfmaokfna[oefna[fnma[fnao[fna[odfn[oafno[anfo[adsnfonsijfgnuvweisjuprgnvbqawengoiaengfoajkdnfons",
  isSaved: true,
  postId: '123',
  commentUserName: 'Saliallah',
  comment: 'Böyle fotonun amk',
  mediaList: [
    // MediaEntity(
    //   mediaUrl:
    //       'https://static.videezy.com/system/resources/previews/000/007/536/original/rockybeach.mp4',
    //   mediaType: MediaType.video,
    // ),

    // MediaEntity(
    //   mediaUrl:
    //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    //   mediaType: MediaType.video,
    // ),
    MediaEntity(
      mediaUrl:
          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),

    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl: 'https://picsum.photos/200/300',
      mediaType: MediaType.image,
    ),
    // MediaEntity(
    //   mediaUrl:
    //       'https://static.videezy.com/system/resources/previews/000/005/529/original/Reaviling_Sjusj%C3%B8en_Ski_Senter.mp4',
    //   mediaType: MediaType.video,
    // ),
  ],
);
