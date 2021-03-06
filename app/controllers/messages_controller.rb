class MessagesController < ApplicationController
  before_filter :authenticate_user!, :admin_only, except: [:new, :create]

  # GET /messages
  # GET /messages.xml
  def index
    @messages = Message.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.xml
  def show
    @message = Message.find(params[:id])
    @message.read = true
    @message.save

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.xml
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @message }
    end
  end

  # POST /messages
  # POST /messages.xml
  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to(root_path, :notice => 'Message was successfully sent.') }
        format.xml { render :xml => @message, :status => :created, :location => @message }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.xml
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_path, :notice => "Message has been deleted." }
      format.xml { head :ok }
    end
  end
end
