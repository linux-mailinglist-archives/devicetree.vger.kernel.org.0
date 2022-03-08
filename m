Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14A454D0D2D
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 02:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238707AbiCHBEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 20:04:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243354AbiCHBEB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 20:04:01 -0500
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35F072A24F
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 17:03:05 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 403395C0278;
        Mon,  7 Mar 2022 20:03:04 -0500 (EST)
Received: from imap49 ([10.202.2.99])
  by compute3.internal (MEProxy); Mon, 07 Mar 2022 20:03:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=+exSsSKAiC7Evi9rH2ZTNIwfg5fo7D3S8bypoA
        Qltjg=; b=cYCI3SQv3HxNbowwApY+kJr9n1SzprCyTNRe9pxZgaxs0JbD7uKlL2
        fCqfTc5xxWLM0U0W59WgyiSfkETEIAM+mOSvxTAvxvKr0BWT3ilKHLCXktkymq97
        Lzh7ED3Tv2NXTYIURUdSVoVo0YLlnPs4BeAHHzhcuBcMqh1F6Nv5vylmUI2HI1Me
        DT2ltn7USpGmk3VEy5WlervZTy7faiVGQxlJJqnOq3utkQl4vaYYm2jFMWbjgZlr
        lLlS97hkyBxAqkAJzJKksJ+YVI9HWoHblpSJsaC5SAs0Y6Nbm95NmzEpYi1rr+Q9
        rmDZBmFsEi0Ck1udsnvQkBEJchf0ZqLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+exSsSKAiC7Evi9rH
        2ZTNIwfg5fo7D3S8bypoAQltjg=; b=gIthevPKFrRttwUEPPBiS4d5xYyXinU6u
        Wa4YB1uQ+gZp0QdRdYQPGNDVNagSz8YzhEJUn9+k+OHb9Yd004g4SotPYHrY4HRS
        koR/VZ0aXrEtXlaxt+8wq3hqBR9K8QXlKXsrVG20InYw9vYzsPfKzZkKtqE6P1m5
        TsmZLKz5PPnjMnllGkbC84/x7/rFGFSwZQYc9UUZUBwmMrMB2CrtJcRiLA8/d6Kg
        J/MLE9mKXZN/gpIkLQWFJEYaRNaeQTVH1rliPv2LuTSK4nW9P+9yeCE5mQauSXa9
        0LFMxmWfORThbyoNg23N9/nlUFRSIc334pD7P+zTvjzqjb2+AphuQ==
X-ME-Sender: <xms:R6smYgdZY38lRUGGqmQqNPD67CiJ9HlWDy0sDp1niD9NUXsuwAgFmQ>
    <xme:R6smYiNOs-un3uct8Rr6U1xmfLE8iiR626BmLIIqs2_h4hqVLLNS8mAG4t-0rn3Pw
    mTugOS9pplvEdCz9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudduhedgvdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhepudfftddvveekfffgteffffeuveegjeelgefhffejtdehtdfhlefgkeef
    hfefkeeinecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:R6smYhgPMM3PmTtbakJG57DCwp-n0xcy5dDaWsyuKpr7V1ZdLScW8g>
    <xmx:R6smYl9pCYpQTEXDts7n5AG26vELVJk02x1BYXJPhyxt14Yc3ClCHg>
    <xmx:R6smYsv7hPwb9cuAN-Mo2izvmlw1PNaJD3SYfQd3YtXlPT9NOZsQcQ>
    <xmx:SKsmYh-naLmtWNWI1vapLKJ6uFkafPC8qTraY3Lyaa8Ggga8fvT2UQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 5EC0DF6007E; Mon,  7 Mar 2022 20:03:03 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4778-g14fba9972e-fm-20220217.001-g14fba997
Mime-Version: 1.0
Message-Id: <e541828f-f0bc-419a-a5fc-d8aefe97832d@www.fastmail.com>
In-Reply-To: <73a487ed-312b-72b3-4e64-dc580ba80704@quicinc.com>
References: <20220308003136.3930466-1-quic_jaehyoo@quicinc.com>
 <d2f125d8-07d1-4bff-8718-7dfba4d8fdb3@www.fastmail.com>
 <73a487ed-312b-72b3-4e64-dc580ba80704@quicinc.com>
Date:   Tue, 08 Mar 2022 11:32:43 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>,
        "Joel Stanley" <joel@jms.id.au>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Linus Walleij" <linus.walleij@linaro.org>
Cc:     "Jamie Iles" <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        "Johnny Huang" <johnny_huang@aspeedtech.com>
Subject: Re: [PATCH] pinctrl: aspeed: Add FWQSPI pinmux
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 8 Mar 2022, at 11:16, Jae Hyun Yoo wrote:
> Hi Andrew,
>
> On 3/7/2022 4:41 PM, Andrew Jeffery wrote:
>> 
>> 
>> On Tue, 8 Mar 2022, at 11:01, Jae Hyun Yoo wrote:
>>> From: Johnny Huang <johnny_huang@aspeedtech.com>
>>>
>>> AST2600 FW SPI quad mode only need to set AE12 and AF12, no need
>>> to set Y1~Y4. FW SPI cs, clk, mosi and miso pins are dedicated.
>> 
>> They're not dedicated according to the datasheet?
>> 
>> Can you please look at this patch?
>> 
>> https://lore.kernel.org/all/20220304011010.974863-1-joel@jms.id.au/
>
> Sorry. Please ignore this patch.
> I mistakenly sent this patch while making a patch series.
>
> Please check this patch series instead.
> https://lore.kernel.org/linux-arm-kernel/20220308003745.3930607-1-quic_jaehyoo@quicinc.com/T/#t

No worries, I'll take a look though it might be a couple of days due to chasing some other issues.

Andrew
