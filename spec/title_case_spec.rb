# Include spec-related files
require 'spec_helper'
require 'title_case'

describe TitleCase do
  describe ".format_title" do
    it "returns correctly formatted title" do
      expect(TitleCase.format_title("I'm a little tea pot")).to eq "I'm a Little Tea Pot"
    end

    it "returns correctly formatted title for edge case" do
      expect(TitleCase.format_title("sHoRt AnD sToUt")).to eq "Short and Stout"
    end

    it "returns correctly formatted title when one word given" do
      expect(TitleCase.format_title("hEllO")).to eq "Hello"
    end

    it "returns empty string when empty input provided" do
      expect(TitleCase.format_title("")).to eq ""
    end
  end
end
