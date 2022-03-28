Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3A304EA361
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 01:03:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbiC1XET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 19:04:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230221AbiC1XER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 19:04:17 -0400
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F2E965EB
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 16:02:35 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 9F6E23200A3E;
        Mon, 28 Mar 2022 19:02:34 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Mon, 28 Mar 2022 19:02:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=7Z809kOqQ0V9ZOMvNmiE5h/Jj5R3NMwEJGmgHm
        y8fXY=; b=DjGiEPLzgb2RmfAEuj8RVpjH2wqVR3VjZIvDEFyWYwQo/mkb/NceyP
        YRnVdJYNmI7PYZUDgoMC6Au3jab43fbZLnxaguK+rPowtTE3897BH78r5mKSSZnC
        iu3+tnO8ZD2o1ldjZ3G9uiU/0oXpkBr1AOxeBzAgrsvqILZR/4bz7wJwso3pGTcg
        CKHBBGsJlPpGOkelNDfT9kzJpClPVuSrdJ5L+AZZg9jU2CTuduzpyLHUkcHfPDnJ
        WtbI+bZ6mkHez1jvDA9y9mI4poBNLBJqvbfgB7hBQCrJfqv/ceAzJ0rUL/FOLrJM
        LuurvtKlC0P82Vgop3Oiud7xgbsF4zWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7Z809kOqQ0V9ZOMvN
        miE5h/Jj5R3NMwEJGmgHmy8fXY=; b=QhGB0DRvmlVppp1e+tNlooSnH2RVN/YzY
        rMUyaqxTQWNdSBbnyBSrMXVPONDmJSHGM3nE2Gp7bbxzlIA3gZcfl9HXAcjjmHdG
        tJaGutfn0rcdpkPndnvBQ0ewvOhRw9kEDIwIOZO85i3vq1LsDtpHOknzk8Y/R8jt
        Thpr4UJ9nzsXV5q17Bz/ovuH6pfQ15j6RIN+/0z9MqQwq+G4p4K+b2wjMcMwdv5b
        OxY/2uK+PFvjzCsKZVBzYXh29ieoKDkRrIWhRx0LM6edfneg+fPYPS4FxhD2Kq5y
        Nmk0KNINmXxG00in3ippaKjqQD/zXel00WMfCAfQVmdWWSWDk1+JQ==
X-ME-Sender: <xms:ij5CYoMdipS5IwdogZLMsKjOgKeKPQLp6ng5MAuXmaArfU2A0BnClQ>
    <xme:ij5CYu9eDGy7fPPITWZxfvz1cKiSxPaOIHfbZ-E8dGtFM-d6tW1QAnSt16-uyBO_N
    rmHxhynqdQttHJ2bw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudehkedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:ij5CYvR9Q9zZFJ1_Hul9B-LbnlKJM1kZsuYTxFRUBWy8hqXrqU-K3w>
    <xmx:ij5CYgtFuWWjwPtFzxduMijiO_btUPqIth2kkFPB0_dhFmwiqwO2pw>
    <xmx:ij5CYgcMUjCMr7r5Dn7pX0O4Y6Iw58wXDP50sSt81EoUMhuq0-yzwg>
    <xmx:ij5CYoTpFfbkKJwipgy02ZPaE1OJIE4UlocQzs_xsfFOXXJJVIo3Gg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id F169DF60440; Mon, 28 Mar 2022 19:02:33 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <1898df07-f66c-4452-91a2-eaa8a5b48095@www.fastmail.com>
In-Reply-To: <0645f716-d664-4e48-577e-57251c1c3f58@quicinc.com>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-3-quic_jaehyoo@quicinc.com>
 <c846fd5f-56e0-4289-af2c-42603c1abda2@www.fastmail.com>
 <0645f716-d664-4e48-577e-57251c1c3f58@quicinc.com>
Date:   Tue, 29 Mar 2022 09:31:46 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, "Andrew Lunn" <andrew@lunn.ch>
Cc:     "Jamie Iles" <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v2 2/5] pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
Content-Type: text/plain
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 29 Mar 2022, at 01:11, Jae Hyun Yoo wrote:
> On 3/27/2022 8:18 PM, Andrew Jeffery wrote:
>> 
>> 
>> On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
>>> FWSPIDQ2 and FWSPIDQ3 are not part of FWSPI18 interface so remove
>>> FWQSPID group in pinctrl. These pins must be used with the FWSPI
>>> pins that are dedicated for boot SPI interface which provides
>>> same 3.3v logic level.
>>>
>>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>>> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
>>> ---
>>> Changes in v2:
>>>   * None.
>>>
>>>   drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 14 +++-----------
>>>   1 file changed, 3 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>> b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>> index a3fa03bcd9a3..54064714d73f 100644
>>> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>> @@ -1236,18 +1236,12 @@ FUNC_GROUP_DECL(SALT8, AA12);
>>>   FUNC_GROUP_DECL(WDTRST4, AA12);
>>>
>>>   #define AE12 196
>>> -SIG_EXPR_LIST_DECL_SEMG(AE12, FWSPIDQ2, FWQSPID, FWSPID,
>>> -			SIG_DESC_SET(SCU438, 4));
>>>   SIG_EXPR_LIST_DECL_SESG(AE12, GPIOY4, GPIOY4);
>>> -PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, FWSPIDQ2),
>>> -	  SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>>> +PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>>>
>>>   #define AF12 197
>>> -SIG_EXPR_LIST_DECL_SEMG(AF12, FWSPIDQ3, FWQSPID, FWSPID,
>>> -			SIG_DESC_SET(SCU438, 5));
>>>   SIG_EXPR_LIST_DECL_SESG(AF12, GPIOY5, GPIOY5);
>>> -PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, FWSPIDQ3),
>>> -	  SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>>> +PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>>>
>>>   #define AC12 198
>>>   SSSF_PIN_DECL(AC12, GPIOY6, FWSPIABR, SIG_DESC_SET(SCU438, 6));
>>> @@ -1520,9 +1514,8 @@ SIG_EXPR_LIST_DECL_SEMG(Y4, EMMCDAT7, EMMCG8,
>>> EMMC, SIG_DESC_SET(SCU404, 3));
>>>   PIN_DECL_3(Y4, GPIO18E3, FWSPIDMISO, VBMISO, EMMCDAT7);
>>>
>>>   GROUP_DECL(FWSPID, Y1, Y2, Y3, Y4);
>>> -GROUP_DECL(FWQSPID, Y1, Y2, Y3, Y4, AE12, AF12);
>>>   GROUP_DECL(EMMCG8, AB4, AA4, AC4, AA5, Y5, AB5, AB6, AC5, Y1, Y2, Y3,
>>> Y4);
>>> -FUNC_DECL_2(FWSPID, FWSPID, FWQSPID);
>>> +FUNC_DECL_1(FWSPID, FWSPID);
>> 
>> Really this is the FWSPI18 group now? The FWSPID name never made sense.
>> I'm not sure what I was thinking.
>
> Yes, it's now the FWSPI18 which is described as 'debug SPI' in the
> datasheet. Corresponding SCU500[3] bit is also described as that 'the
> bit is for verification and testing only'. Probably, you was thinking
> 'D' as in 'Debug' for the FWSPID naming.

I suspect it was also to do with some lack of detail in the early data sheets :)

>
>> Actually, I think it's worth squashing this with 3/5 so it's a proper
>> fix rather than separate remove/add?
>
> Two reasons I separated them.
> 1. Author is different.
> 2. 2/5 is a bug fix and 3/5 introduces a new pinmux.

Okay, I'm not terribly fussed.

>
>>>   FUNC_GROUP_DECL(VB, Y1, Y2, Y3, Y4);
>>>   FUNC_DECL_3(EMMC, EMMCG1, EMMCG4, EMMCG8);
>>>   /*
>>> @@ -1918,7 +1911,6 @@ static const struct aspeed_pin_group
>>> aspeed_g6_groups[] = {
>>>   	ASPEED_PINCTRL_GROUP(FSI2),
>>>   	ASPEED_PINCTRL_GROUP(FWSPIABR),
>>>   	ASPEED_PINCTRL_GROUP(FWSPID),
>>> -	ASPEED_PINCTRL_GROUP(FWQSPID),
>> 
>> We should also remove the function (not just the group).
>
> Still worth to keep FWSPID to support SCU500[3] - Boot from debug SPI.
> FWSPID would work on single and dual data mode only.

I guess, yeah, though the only use case I see for it is a temporary 
devicetree change to account for someone setting the strap pin into the 
debug state. I don't see a reason to support it beyond that, but that said
we still need to support it for that use case.

Andrew
