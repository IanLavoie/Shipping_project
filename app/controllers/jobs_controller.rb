class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    puts "\n******* index all jobs *******"
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    puts "\n******* show jobs *******"
  end

  # GET /jobs/new
  def new
    puts "\n******* new job*******"
    @job = Job.new
    @users = User.all
    @ports = Port.all
  end

  # GET /jobs/1/edit
  def edit
    puts "\n******* edit jobs *******"
    @users = User.all
    @ports = Port.all
  end

  # POST /jobs
  # POST /jobs.json
  def create
      puts "\n******* create *******"
      @job = Job.new(job_params)

      respond_to do |format|
          if @job.save(job_params)
              puts "******* JOB SAVED *******"
              format.html { redirect_to @job, notice: 'Job was successfully created.' }
          else
              puts "******* save FAILED *******"
              format.html { render :edit }
          end
      end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
      puts "\n******* update *******"
      respond_to do |format|
          if @job.update(job_params)
              puts "******* JOB UPDATED *******"
              format.html { redirect_to @job, notice: 'Job was successfully updated.' }
          else
              puts "******* update FAILED *******"
              format.html { render :edit }
          end
      end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to @job, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
        puts "\n******* job_params *******"
        params.require(:job).permit({boat_ids: []}, :origin_id, :destination_id, :client_id, :manager_id, :name)
    end
end
