Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 841AF5AD369
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 15:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235747AbiIENG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 09:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232053AbiIENG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 09:06:26 -0400
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBF5B2CCBA
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 06:06:25 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 3F23C5801E2;
        Mon,  5 Sep 2022 09:06:25 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute3.internal (MEProxy); Mon, 05 Sep 2022 09:06:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1662383185; x=1662386785; bh=Kp/wVnN2IW
        ryY8ZAuk5Pt4ftsmI3JjqARbKxa9RNpTU=; b=i10vyX6ZbUoxOHJXqKMHBo8Shq
        3li3jW90wMUCdI2LF9jYL1zm4GXyDN+zeOc/GgQd3nMNQkUG+bGZvPZD2lTT8wlx
        TLrzIGNCIpiS9DElYiOoh2gk+pYy6lw3gIrqpe/Ml0SVD7jbAYuM0Yis+BPJ1yqD
        UgTRXw31kkg6gAwmTdfs2VZc/CbDNGO9e50ShcHgSjFxm+dk5CZThv5cXwrPXqCg
        /9q5NfJC0/DQjsrO4JR8cBaDzcCLiJ8XrtkRrsCcIkJdgDHy1D9SbhhA0zRgg459
        4VQ7o5Iq15axHmjuURhmFR/unOqxIoqQvrgBt/hhCa7zwo3hQNeA+34xEqJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; t=1662383185; x=1662386785; bh=Kp/wVnN2IWryY8ZAuk5Pt4ftsmI3
        JjqARbKxa9RNpTU=; b=amB/+fUt2xuOMbLmCpcw52oFfg/UGA3I5jcveDEddjIz
        szF+8XGJvcaJqFyhObiJvFCaXIrAIgdtgotwuIA51O0FCPuSkBE+QrVESCCCJ1A1
        03Oyptl8kNLSbztTdqzyUCpRf7im84rIiokLxKrt3f1oqG2Y+RpAzHsitLXaP8/0
        BbSaE2RCNE5gujccF+fXFwDItx39SbDbceuFYzJButjVPRCB5ny4IjKAhoXPNttN
        iFwCp8vCUZzVy/TH2udvurHIdVkPlZxTUEnO8Nznlq37/VuziBLF2hWyNRmz5WDH
        sPuZgdSUEP6KzOgyhnsTrBwognVS0S9FJVHeL1vT4A==
X-ME-Sender: <xms:UfQVY3Nhw6he0JejgWKlSkmldPgFiropl6IJ8mWLnhdtf_0Ficse5A>
    <xme:UfQVYx_stzxs8FyOqWwe7S0bWA6AUO_9v97i6ASvsw-75J85PXoevK-qRTfb9JpTC
    PYL04ajBSZjus-QE1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeliedgiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
    nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
    htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
    teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:UfQVY2S7Z57W-Cife8RERGVwZ8x_O4kHAJPjHUAqQ9Bp5kLwq4GYIg>
    <xmx:UfQVY7sNmmFzI3KYs-KziO_sJfDcLavPeGEdebDGGUH5ZfpgZbxLXw>
    <xmx:UfQVY_eelQWhz5nerzz5d5QzG-vT-pvNC45fOvmukis0qCWOpM8tsg>
    <xmx:UfQVYwr0gsVIu1zAmKcjxiJvByRoC_iklIXC42Hx4C-mFWlFsvRmMQ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id F2F52B60083; Mon,  5 Sep 2022 09:06:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-927-gf4c98c8499-fm-20220826.002-gf4c98c84
Mime-Version: 1.0
Message-Id: <c587279a-8444-4ffc-b30f-af17d92604d2@www.fastmail.com>
In-Reply-To: <20220905125343.2769117-1-saproj@gmail.com>
References: <20220905125343.2769117-1-saproj@gmail.com>
Date:   Mon, 05 Sep 2022 15:06:04 +0200
From:   "Arnd Bergmann" <arnd@arndb.de>
To:     "Sergei Antonov" <saproj@gmail.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        "Jonas Jensen" <jonas.jensen@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: fix Moxa SDIO 'compatible', remove 'sdhci' misnomer
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

On Mon, Sep 5, 2022, at 2:53 PM, Sergei Antonov wrote:
> Driver moxart-mmc.c has .compatible = "moxa,moxart-mmc".
>
> But moxart .dts/.dtsi and the documentation file moxa,moxart-dma.txt
> contain compatible = "moxa,moxart-sdhci".
>
> Change moxart .dts/.dtsi files and moxa,moxart-dma.txt to match the driver.
>
> Replace 'sdhci' with 'mmc' in names too, since SDHCI is a different
> controller from FTSDC010.
>
> Signed-off-by: Sergei Antonov <saproj@gmail.com>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Cc: Jonas Jensen <jonas.jensen@gmail.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

> v1 -> v2:
> Per Arnd Bergmann's suggestion, replaced sdhci with mmc in names too.

Looks good to me now. Let's wait for more comments, or possibly
for Jonas to pick it up into his tree. If everyone is fine with this
version, can you send it to soc@kernel.org so I can pick it
up into the soc tree?

     Arnd
