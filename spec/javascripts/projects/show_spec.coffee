describe "Projects.Show", ->
  beforeEach ->
    $(document.body).append $('<div>').addClass('project-page')
    @view = new Neighborly.Projects.Show()

  describe "#initialize", ->
    it 'should initialize Rewards.Index view', ->
      spyOn(Neighborly.Rewards, 'Index')
      spyOn(Neighborly, 'Tabs')
      @view.initialize()
      expect(Neighborly.Rewards.Index).toHaveBeenCalled()
      expect(Neighborly.Tabs).toHaveBeenCalled()
