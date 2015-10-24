class ChecklistApp < Sinatra::Base

  get "/" do
    redirect('/checklists')
    # redirect('/checklists/index')
  end

  # index
  get '/checklists' do
    @checklists = Checklist.all
    erb(:"checklists/index")
  end

  # new
  get '/checklists/new' do
    @checklist = Checklist.new
    erb(:"checklists/new")
  end

  # create > button
  post '/checklists' do
    @checklist = Checklist.new(params[:checklist])
    if @checklist.save
      redirect("/checklists")
    else
      erb(:"checklists/new")
    end
  end

  # edit
  get '/checklists/:id/edit' do
    @checklist = Checklist.find(params[:id])
    erb(:"checklists/edit")
  end

  # update
  post '/checklists/:id/update' do
    @checklist = Checklist.find(params[:id])
    if @checklist.update_attributes(params[:checklist])
      redirect("/checklists")
    else
      erb(:"checklists/new")
    end
  end

  post '/checklists/:id/delete' do
    @checklist = Checklist.find(params[:id])
    if @checklist.destroy
      redirect('/checklists')
    else
      redirect("/checklists/:id/edit")
    end
  end

end
