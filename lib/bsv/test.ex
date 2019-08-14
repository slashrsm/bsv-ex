defmodule BSV.Test do
  @moduledoc """
  A variety of helper functions to make the tests consistent
  in their usage of keys, etc.

  Please don't use these keys for anything other than testing.
  """

  @doc """
  Returns a generic symetric key.
  """
  def symetric_key do
    <<225, 142, 18, 176, 144, 89, 142, 193, 18, 237, 201, 84, 109, 62, 36, 67, 233,
      244, 170, 233, 98, 100, 18, 201, 118, 69, 91, 182, 242, 255, 173, 106>>
  end

  @doc """
  Returns an initialization vector of 12 bytes (96 bit).
  """
  def iv12 do
    <<50, 75, 191, 85, 4, 124, 185, 253, 212, 34, 64, 169>>
  end

  @doc """
  Returns an initialization vector of 16 bytes (128 bit).
  """
  def iv16 do
    <<245, 64, 39, 93, 45, 251, 164, 144, 160, 20, 159, 238, 26, 236, 140, 161>>
  end

  @doc """
  Returns a generic RSA public key (raw erlang style).
  """
  def rsa_public_key do
    {
      :RSAPublicKey,
      29138129824629141460536522208779093018443507347272252883667980702345928615469923560274244336299630638468087171076287647631842366984928457828496097709250194900338908568102611035004670384559737647606671886852284811699008953697117776500629571966012887440389640281156621305252806564698277754111822382977381947207719722989813408460077853219011599284567665895501622098817918871397691099839401379541459713372229092843886251241893179514117246564314563851231895307369928093552532875297188517164872705922818720366051831467478878936722823134210149821041856250874882117572090651219378752890768650591839013979311197332322784869359,
      65537,
    }
  end

  @doc """
  Returns a generic RSA private key (raw erlang style).
  """
  def rsa_private_key do
    {
      :RSAPrivateKey,
      :"two-prime",
      29138129824629141460536522208779093018443507347272252883667980702345928615469923560274244336299630638468087171076287647631842366984928457828496097709250194900338908568102611035004670384559737647606671886852284811699008953697117776500629571966012887440389640281156621305252806564698277754111822382977381947207719722989813408460077853219011599284567665895501622098817918871397691099839401379541459713372229092843886251241893179514117246564314563851231895307369928093552532875297188517164872705922818720366051831467478878936722823134210149821041856250874882117572090651219378752890768650591839013979311197332322784869359,
      65537,
      19656911299060127901082452963891256245043629504518071387044398779500407341610941307152370273227020916245038222799713588920747283658660862985999808839607696674150233083799268185599378779043214075651710903177033066738431479330103165153208639940207238346499027665448472483449609897286117095149181244124632049833416101124593839103743113016185986517261039420402367697842212005712466528790639695501124162677208339999360918927741566530930970293485729789354421830143580944599244293933294687482538472375122262288394688882204191234873214693554680360134522148315711339516295733784733781212460387660990914258099902330029990951777,
      179596775055365463620523845564192753603760746227886331695064930317452485069791913187130880037380678565612890702654350076122098200736556794234183771013047319197416554273260612825746643039326081599565182694060246100765207816852976701523625432633565935177515978219294149749667089301280947694226960596613300085613,
      162241943462773989354904743442407924663879353224926126901080480970360778495472270026246542341991204051680658472664165416063930591837885071904959715988658021116161437926435505588942314940662915985465144989988431059067045531518643155659183997600612887861880528762092704576887854013385317987493236577309604276043,
      106483236771996518301153471582279289970266129303705985789327219697960712457953589128467043130025802630941606940095519796571041850954733774105584307952057306285823505033738004982987279072571120934957418007279841657955562203632392628455735133372636396893247148414897123408499230800614519806438759905131498259405,
      134297621052413539657204745823079901507404840519081090960170819722616260625308988459249716580110179419253613096167940394831197196646374220146972849423512046439883452798742691040092339338328311172246191472937156057239851580623996712564735533909633467409542041973461817455659996526727499206608794895745437270107,
      164668798832932318753909061192015985565795384467503225893512793371809391754802450287175245180323241456918082979958834446549330126128708509874399989146272029116759011496469397600508106420358076182081722946081707775246180158034344181029933308111422051057528138601123824065800626860491221889514073445523433296655,
      :asn1_NOVALUE
    }
  end

  def bsv_key_pair do
    {
      <<4, 150, 32, 125, 135, 82, 208, 27, 28, 248, 222, 119, 210, 88, 192, 45, 215, 40, 14, 220, 43, 206, 155, 89, 2, 51, 17, 187, 211, 149, 203, 233, 58, 171, 2, 127, 239, 78, 122, 42, 133, 219, 235, 47, 41, 189, 56, 196, 83, 141, 132, 25, 223, 255, 77, 187, 252, 113, 240, 87, 219, 34, 158, 156, 92>>,
      <<189, 138, 106, 93, 22, 48, 176, 218, 61, 84, 36, 235, 171, 24, 246, 159, 24, 34, 109, 50, 221, 28, 136, 78, 120, 184, 60, 221, 223, 131, 158, 44>>
    }
  end

  def ecdsa_key do
    {
      :ECPrivateKey,
      1,
      <<60, 255, 4, 99, 48, 136, 98, 46, 69, 153, 220, 46, 191, 132, 63, 130, 206, 243, 70, 59, 145, 13, 52, 167, 82, 161, 54, 34, 171, 174, 55, 155>>,
      {:namedCurve, {1, 3, 132, 0, 10}},
      <<4, 248, 31, 140, 139, 144, 245, 236, 6, 238, 66, 69, 234, 177, 102, 232, 175, 144, 63, 199, 58, 109, 215, 54, 54, 104, 126, 240, 39, 135, 10, 190, 57, 1, 135, 135, 125, 5, 134, 136, 158, 82, 54, 184, 224, 42, 2, 75, 140, 90, 22, 8, 122, 233, 116, 221, 100, 93, 180, 96, 132, 105, 242, 152, 151>>
    }
  end
  
end