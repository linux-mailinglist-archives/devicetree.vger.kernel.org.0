Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 376974DA8F9
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 04:34:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353467AbiCPDfJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 23:35:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236095AbiCPDfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 23:35:08 -0400
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01BE6BCA2
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 20:33:54 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id B31845C0222;
        Tue, 15 Mar 2022 23:33:51 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute3.internal (MEProxy); Tue, 15 Mar 2022 23:33:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=wX0N7PGjtWJbvi/zYtG/aI4ifQcXEvByFsuvP+
        KfLfc=; b=X9BHhzGWvxXkgWkxJRsYQG1iqA7AhjDIxM/N/DPUwCrXCZmlN+X1O6
        3EKIuiuw/SIbhIr/PMg0mzds98DxpTruLW90QaS0CsVR6Qs/YMcoZHn7HstGGrWV
        NeZ2A06xH1jOGaptDHW3XurPoVGZdouZvpETBTLbdveOVB764jJgCEMXmpKFA4XG
        Yh6WoRkufbnunW0oZMcah2cXhYXIjI7gnpD4ppE9kItQ+IIF63PksvkmoqbSqmYO
        Vj8p3NSPACYyjYjTIxvtpOXZOt2+aMvnRqv24z/UwiqTcVuGhE6/PxaDWVxPQhgx
        rGlcaf79TmOCezgpnZfVskROs8RZQWDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=wX0N7PGjtWJbvi/zY
        tG/aI4ifQcXEvByFsuvP+KfLfc=; b=KhaAa1BRYT7ftf3hqH19eEh0589MEb1Q7
        b4OT+KWm6d3b79tYVAA7btKuJU0qbmWQqf+2pHr9/0p2RvvCINWntx/5IrplKlzl
        7RdJhGC4qVpOzNweWWt//xo4tLNyYzOHpqH60OqOoSvtkyofMu9R3PvF6tf6ig2v
        7dC9u5Ppg/tmXUD27oQO0Car8N2IYKXZdjG+s2RqN2QV9GXTmDZxxPaND8RCQPPx
        EYFLVhHMnBNU7+KaKXEy0MBIK24HBjvU4LVcVmZsJPmYnOyzhWvqGzTAy+xSiMGw
        WXWWOT2YV/nLg/3sYnn44EW4Nd5+VDSrscM0b3VyQ7GPR9NFIyeGg==
X-ME-Sender: <xms:nloxYpSkEzp3MkI6LMdOY7NUTDTcfC7Q6s6HyCIlp1ylzYiU-nXgaw>
    <xme:nloxYiwnoLjptu_nQqaAtt1hRKtVFYoL2toYDlJNGQyP8FWEJRJ8wG5FHnY6d1jav
    izsmE94hKmiloJKgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudefuddgiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:nloxYu2NUru6wLySgDQQrpEVlCJ27_vlryI3zM84cGYUCzV4v6mgBQ>
    <xmx:nloxYhDICI8BqcTvcLkmSFc5uCMXv70EKvSjfH670smH5dRMDpe14g>
    <xmx:nloxYihTf1VkBbAu_cAT0UF2yskb7SwEeM4nfYpczzxS_QXpB4ojKg>
    <xmx:n1oxYmjUUVPwhBI0nh4L-pJQ15bCp0hzO1Qb8c6NySEgcFVt14K9_A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 84860F6007E; Tue, 15 Mar 2022 23:33:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <700af02b-a220-495f-861a-af10f30b482a@www.fastmail.com>
In-Reply-To: <20220308003745.3930607-4-quic_jaehyoo@quicinc.com>
References: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
 <20220308003745.3930607-4-quic_jaehyoo@quicinc.com>
Date:   Wed, 16 Mar 2022 14:03:30 +1030
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
Subject: Re: [PATCH 3/5] pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 8 Mar 2022, at 11:07, Jae Hyun Yoo wrote:
> From: Johnny Huang <johnny_huang@aspeedtech.com>
>
> Add FWSPIDQ2 (AE12) and FWSPIDQ3 (AF12) function-group to support
> AST2600 FW SPI quad mode. These pins can be used with dedicated FW
> SPI pins - FWSPICS0# (AB14), FWSPICK (AF13), FWSPIMOSI (AC14)
> and FWSPIMISO (AB13).
>
> Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c 
> b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
> index 54064714d73f..80838dc54b3a 100644
> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
> @@ -1236,12 +1236,17 @@ FUNC_GROUP_DECL(SALT8, AA12);
>  FUNC_GROUP_DECL(WDTRST4, AA12);
> 
>  #define AE12 196
> +SIG_EXPR_LIST_DECL_SESG(AE12, FWSPIQ2, FWQSPI, SIG_DESC_SET(SCU438, 4));
>  SIG_EXPR_LIST_DECL_SESG(AE12, GPIOY4, GPIOY4);
> -PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, GPIOY4));
> +PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, FWSPIQ2),
> +	  SIG_EXPR_LIST_PTR(AE12, GPIOY4));
> 
>  #define AF12 197
> +SIG_EXPR_LIST_DECL_SESG(AF12, FWSPIQ3, FWQSPI, SIG_DESC_SET(SCU438, 5));
>  SIG_EXPR_LIST_DECL_SESG(AF12, GPIOY5, GPIOY5);
> -PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, GPIOY5));
> +PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, FWSPIQ3),
> +	  SIG_EXPR_LIST_PTR(AF12, GPIOY5));
> +FUNC_GROUP_DECL(FWQSPI, AE12, AF12);

The idea behind the quad group was not to define a function for it 
specifically, but to re-use the FWSPID function and select the specific 
group associated with the specific style of SPI bus you desire. This 
way you'd have a pinctrl node like:

pinctrl_fwqspi_default = {
    function = "FWSPID";
    group = "FWQSPI";
};

(note the lack of 'Q' in the function name)

Maybe that's an abuse of groups, but I don't see a need for the 
function name to match the group name here, we're still doing SPI.

This can be seen in the DTS fix that Joel sent (disregarding the mixed 
voltage pins problem).

Thoughts?

Andrew

> 
>  #define AC12 198
>  SSSF_PIN_DECL(AC12, GPIOY6, FWSPIABR, SIG_DESC_SET(SCU438, 6));
> @@ -1911,6 +1916,7 @@ static const struct aspeed_pin_group 
> aspeed_g6_groups[] = {
>  	ASPEED_PINCTRL_GROUP(FSI2),
>  	ASPEED_PINCTRL_GROUP(FWSPIABR),
>  	ASPEED_PINCTRL_GROUP(FWSPID),
> +	ASPEED_PINCTRL_GROUP(FWQSPI),
>  	ASPEED_PINCTRL_GROUP(FWSPIWP),
>  	ASPEED_PINCTRL_GROUP(GPIT0),
>  	ASPEED_PINCTRL_GROUP(GPIT1),
> @@ -2152,6 +2158,7 @@ static const struct aspeed_pin_function 
> aspeed_g6_functions[] = {
>  	ASPEED_PINCTRL_FUNC(FSI2),
>  	ASPEED_PINCTRL_FUNC(FWSPIABR),
>  	ASPEED_PINCTRL_FUNC(FWSPID),
> +	ASPEED_PINCTRL_FUNC(FWQSPI),
>  	ASPEED_PINCTRL_FUNC(FWSPIWP),
>  	ASPEED_PINCTRL_FUNC(GPIT0),
>  	ASPEED_PINCTRL_FUNC(GPIT1),
> -- 
> 2.25.1
