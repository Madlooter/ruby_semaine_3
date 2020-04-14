require_relative '../lib/caesar_cipher'

describe "the cipher_a_string method" do
	it "should cipher a string with an encryption key from 1 to 26" do
		expect(cipher_a_string("b",2)).to eq("d")
		expect(cipher_a_string("a",1)).to eq("b")
		expect(cipher_a_string("a",5)).to eq("f")
	end
	it "should cipher a string whatever the 'CASSE'" do
		expect(cipher_a_string("A",3)).to eq("D")
		expect(cipher_a_string("E",15)).to eq("T")
	end
	it "should cipher a long string of multiple words" do
		expect(cipher_a_string("une phrase test",6)).to eq("atk vnxgyk zkyz")
		expect(cipher_a_string("PLUSIEURS mots",1)).to eq("QMVTJFVST nput")
	end
end