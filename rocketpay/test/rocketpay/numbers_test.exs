defmodule Rocketpay.NumbersText do
  use ExUnit.Case, async: true

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns teh sum of the numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 34}}

      assert response == expected_response
    end
    test "when there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
