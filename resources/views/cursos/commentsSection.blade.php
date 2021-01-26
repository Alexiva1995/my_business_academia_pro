@foreach ($all_comments as $comment)
                    <div class="custombox clearfix mt-4 pb-4 border-bottom">
                      <div class="row">
                        <div class="col-lg-12">
    
                          <div class="comments-list">
                            <div class="media">
                              <a class="media-left" href="#">
                                <div class="col-md-2">
                                  <img src="{{ asset('uploads/avatar/'.$comment->user->avatar) }}" alt="" class="circular--square" >
                                </div>
                              </a>
    
                              <div class="media-body">
                                <h4 class="media-heading text-white">{{ $comment->user->display_name }}</h4>
                                <small class="media-heading about-course-text">{{str_replace('-', '/', date('d-m-Y', strtotime($comment->date)))}}</small>
                                <p class="about-course-text">
                                  {{$comment->comment}}
                                </p>
                                @foreach ($comment->responses as $response)
                                  <div class="custombox clearfix mt-4 pb-4 border-bottom">
                                    <div class="row">
                                      <div class="col-lg-12">
                                        <div class="comments-list">
                                          <div class="media">
                                            <a class="media-left" href="#">
                                              <div class="col-md-2">
                                                <img src="{{ asset('uploads/avatar/'.$response->user->avatar) }}" alt="" class="circular--square" >
                                              </div>
                                            </a>
    
                                            <div class="media-body">
                                              <h4 class="media-heading text-white">{{ $response->user->display_name }}</h4>
                                              <small class="media-heading about-course-text">{{str_replace('-', '/', date('d-m-Y', strtotime($response->date)))}}</small>
                                              <p class="about-course-text">
                                                {{$response->comment}}
                                              </p>
                                            </div>
                                          </div>
                                        </div>
                                      </div><!-- end col -->
                                    </div><!-- end row -->
                                  </div>
                                @endforeach
                                <p class="about-course-text float-right mr-4">
                                  <div id="response_div_{{$comment->id}}" style="display: none;">
                                    <form class="form-inline" id="store_response_form_{{$comment->id}}">
                                      @csrf
                                      <input type="hidden" name="response" value="1">
                                      <input type="hidden" name="comment_id" value="{{ $comment->id }}">
                                      <input type="hidden" name="lesson_id" value="{{ $lesson->id }}">
                                      <input type="text" class="form-control" placeholder="Escribe tu respuesta" name="comment" id="response_{{$comment->id}}" required style="height: 80px; width: 580px; background: #363840; border: none; line-height: 1;color:#fff;">
                                      <a class="btn btn-outline-success mt-2 ml-2" onclick="newResponse({{$comment->id}});" id="store_response_submit_{{$comment->id}}"> Responder</a>
                                      <button class="btn btn-success" type="button" disabled id="store_response_loader_{{$comment->id}}" style="display: none;">
                                          <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                                          Espere...
                                      </button>
                                    </form>
                                  </div>
                                  
                                   <a href="javascript:;" onclick="showResponseForm({{$comment->id}});" class="about-course-text"  id="response_link_{{$comment->id}}"> <i class="far fa-comment-alt about-course-text" aria-hidden="true"></i> Responder</a>
                                </p>
    
                              </div>
    
                            </div>
                          </div>
    
                        </div><!-- end col -->
                      </div><!-- end row -->
                    </div>
                  @endforeach