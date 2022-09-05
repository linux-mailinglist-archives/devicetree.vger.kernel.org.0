Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F19E5AD15D
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 13:18:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236300AbiIELNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 07:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236826AbiIELNR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 07:13:17 -0400
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com [66.111.4.224])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4354B5A897
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 04:13:16 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 3CDA35802A4;
        Mon,  5 Sep 2022 07:13:12 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute3.internal (MEProxy); Mon, 05 Sep 2022 07:13:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1662376392; x=1662379992; bh=LKWfpXNbcy
        cGRixTg7QCxPRbVdJ9Nya4Av0pRPrY2RM=; b=VLJxyNyCDPBzfA+OasdcxCZhRT
        04Mu3KEee4bt7vN7o3J2A6brCDYIhU5yI5hPqZBb+ZzfckhI6JjmVkIqPv5LQ/eF
        tffgy8s13vXRiQ56FEnphs5lyABYyGh43Q2es/zswb/oyJoO3HzIIZMOa/QlojjN
        7SXzoMsNy4PmFrh8Hb/ZuVMIFrOEVDTQKs2jsfgu2Codr3ReSRnl+8SM3j4qGE9d
        X/HUz/tFvVr0yOH58UwlQte4qWKrD+gd140f6htAeWmZ/JHnzFq15MqVFB1sPdIK
        xR06eAlZvb8nig4ApsAzbcT01OTGaIiN9uYiJFcqz+w55TeIAwZOAfVjuETQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; t=1662376392; x=1662379992; bh=LKWfpXNbcycGRixTg7QCxPRbVdJ9
        Nya4Av0pRPrY2RM=; b=miRIx+ymRdEfoN/KbhPWMu317M4xlIC9O24jO97PAw8y
        8ELjXJSUMPoWPOV6J/dLJOm4/InRLhuBboKvd48KUrGRm4KR0rBMLfdNWrzGBvJy
        UVJCLSdjWjQz4tgUzEX+FKg5RYP/r/MJfgwGvs+VKjhH+zGTszCEHDWodKcpOmz5
        tNvxzqj5l/8DotYaZQmRn3MLgLxmQgGmfmPIH/lo04V0TSjwLZN4UKCT1XyKPFTd
        gpe6L2rHs3Zhv3lFEYmgjyI27FCetRCU/24FZBiecs4vYYFuQHF6zK2YtnhLWNwd
        jHZPa6reWFFh+hneuQLw93wvf7c18a3GuSJlLwUASw==
X-ME-Sender: <xms:x9kVYwQvQcCxCRgrnTVqi2t_xbyr29ufztU0_r48mMpdsA-qi9dCvA>
    <xme:x9kVY9y4pINGLGkr1NuZJXHWKOBnaxBeMG5wIPjHWPmtF6Xb7aUkBCiPexISCbc8v
    eV3U9dXYxFWHmin8aY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeliedgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
    nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
    htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
    teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:yNkVY921aDUt3n6IkLAWFqSpnQ0JnDdadf7mlWLFTRdfOrnMdoNx-A>
    <xmx:yNkVY0BpmWNxU9JbofeRcZfYRUXSfAuA6cVYiOPa-6o9mGOnSf98TQ>
    <xmx:yNkVY5gUJQAR-HEC4YxeHmoGVyG4Eu7vuu4jmrVovTxtP7PH1MPmEw>
    <xmx:yNkVY8scVSsP9cqInUhzVEkQRBpLibUxxF2jFI1GxA3sMZM2sVa3aA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id E54AFB60083; Mon,  5 Sep 2022 07:13:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-927-gf4c98c8499-fm-20220826.002-gf4c98c84
Mime-Version: 1.0
Message-Id: <4a0efff9-49a2-4b6c-90c3-b9f5e104450a@www.fastmail.com>
In-Reply-To: <20220905104317.2740661-1-saproj@gmail.com>
References: <20220905104317.2740661-1-saproj@gmail.com>
Date:   Mon, 05 Sep 2022 13:12:51 +0200
From:   "Arnd Bergmann" <arnd@arndb.de>
To:     "Sergei Antonov" <saproj@gmail.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        "Jonas Jensen" <jonas.jensen@gmail.com>
Subject: Re: [PATCH] ARM: dts: sync Moxa SDIO 'compatible' name with moxart-mmc.c
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

On Mon, Sep 5, 2022, at 12:43 PM, Sergei Antonov wrote:
> Driver moxart-mmc.c has .compatible = "moxa,moxart-mmc".
>
> But moxart.dtsi and the documentation file moxa,moxart-dma.txt
> contain another name: compatible = "moxa,moxart-sdhci".
>
> Change name in moxart.dtsi and moxa,moxart-dma.txt to that from the driver.
>
> Signed-off-by: Sergei Antonov <saproj@gmail.com>
> Cc: Jonas Jensen <jonas.jensen@gmail.com>

Something is clearly wrong here, as the moxart-mmc device is not
an sdhci at all, but are you sure that this is actually the
correct device?

> diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
> index f5f070a87482..d69d73930ebe 100644
> --- a/arch/arm/boot/dts/moxart.dtsi
> +++ b/arch/arm/boot/dts/moxart.dtsi
> @@ -94,7 +94,7 @@ watchdog: watchdog@98500000 {
>  		};
> 
>  		sdhci: sdhci@98e00000 {
> -			compatible = "moxa,moxart-sdhci";
> +			compatible = "moxa,moxart-mmc";
>  			reg = <0x98e00000 0x5C>;
>  			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk_apb>;

Both the label and the device name still point to "sdhci",
so it would be possible that the SoC actually has both
an SDHCI compatible device and ftsdc010. In this case the
correct fix would be to add a second node for the
moxa,moxart-mmc with the correct reg and interrupts
properties but to leave this one alone.

      Arnd
