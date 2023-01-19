Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24899673E40
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 17:08:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbjASQIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 11:08:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbjASQIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 11:08:23 -0500
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98ADE24100
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:07:56 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
        by mailout.nyi.internal (Postfix) with ESMTP id 0D5345C0055;
        Thu, 19 Jan 2023 11:07:51 -0500 (EST)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Thu, 19 Jan 2023 11:07:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1674144471; x=
        1674230871; bh=PbWLyJhw/iOQwuGvoWBn3gRU7g08AnJRlkgtH2IlX0I=; b=A
        LMbV8sQPjVhfyk9HBTBLymb5/nO2fC/GCx4IlsLkVT2KJRsiwFD075qM9Ilcc8l2
        GoWpQXPYSvnNajAO4ICNvu4sI8XtgfasfZgkQ/ctF0UxCsBRczDVfnxh8g9K+TIn
        xmPuu4cJWcEnTpCcbQev59lFeTAIXkYiINLbGE2ZgG6oJYfcLjN4NmnOB/DREn1H
        C+uMGIAJ2pLzmcbjKn1LxPUqjium2ICQqnGf0lR5LvCWi1IPYtPcjdMTRELnjWzR
        B4eEkH4eh+suGPOt/VsTdXZ8YY+U0afjmwF63xcWrqDnFGDb4Nv+2w8qPXSVnR1b
        UD2pGfML1MMaJIJh1L/kQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1674144471; x=
        1674230871; bh=PbWLyJhw/iOQwuGvoWBn3gRU7g08AnJRlkgtH2IlX0I=; b=i
        SnzL49b6sGeSefWu/AApMexpcDkyz+UFZo81y8J5xyxYgRLPkn+OJoeoEHsnt2zE
        edoInvz1O7LnaGoelmIKHsZZ3q+0mMZIvLjQG805woESpeAqIPFV4dw9FP0BY3pj
        1LvYT8x6HJTg2J6HwO8PY6g8g63j5Kwa8V/Vy/TftLsHQ4ehJFAID/fHuSEoeN5M
        VAdb/1tg7gc7lrcqMS/1qBiSBesDBbHww0piPh9OR+YUe3Nw2awCwAHdHtCWQJth
        zGj9gGcumqEmhdzCGjF6nT7zv9P+FAGoC7c6e6QprPxYkpari2YorPO1PivqFV6k
        JVAYG3LOMuqg1CIE/Y/LA==
X-ME-Sender: <xms:1mrJYyLRbuKaSx2TjSUd4uhmxoh4jTIxNm-ANcDGSf8lFV7OlXbZQw>
    <xme:1mrJY6KzYYjSqycBb9YLboYG5szeWkJvIrMCGEZDxgwNM4NMoG_d36qi-mxEQfq-d
    rkoUvZYhXm1sI7NUoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddutddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:1mrJYytgteWEyV7T3jdA0lsZPwERYFyKqYY1mByOr21i2hKDONm4Cw>
    <xmx:1mrJY3YAKPk9bg55m5JP_G8Dt05nzJA57RLnkfpNLN3ontSiN1kHjw>
    <xmx:1mrJY5b6fQM80HULn5fFmosRZAueiVUY5DGY1fJiGW-gaN5agKznow>
    <xmx:12rJY7kqtiWYhqWgBfqvolU0Pdu9g9wPoFyALhXv_l8W09s8nbthlA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 5F5A6B60089; Thu, 19 Jan 2023 11:07:50 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-85-gd6d859e0cf-fm-20230116.001-gd6d859e0
Mime-Version: 1.0
Message-Id: <9e2aa58c-10dc-49d0-a492-4d724cf29c2b@app.fastmail.com>
In-Reply-To: <2617470.BddDVKsqQX@steina-w>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-10-alexander.stein@ew.tq-group.com>
 <f1de9cd9-a163-4b56-adf8-319eaf85e38e@app.fastmail.com>
 <2617470.BddDVKsqQX@steina-w>
Date:   Thu, 19 Jan 2023 17:07:30 +0100
From:   "Arnd Bergmann" <arnd@arndb.de>
To:     "Alexander Stein" <alexander.stein@ew.tq-group.com>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Olof Johansson" <olof@lixom.net>,
        "Shawn Guo" <shawnguo@kernel.org>, "Li Yang" <leoyang.li@nxp.com>,
        "Russell King" <linux@armlinux.org.uk>,
        "Marek Vasut" <marex@denx.de>,
        "Marcel Ziswiler" <marcel.ziswiler@toradex.com>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 9/9] [DNI] ARM: multi_v7_defconfig: Enable CONFIG_ARM_LPAE for
 multi_v7_config
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023, at 16:27, Alexander Stein wrote:
> Am Donnerstag, 19. Januar 2023, 16:09:05 CET schrieb Arnd Bergmann:
>> On Thu, Jan 19, 2023, at 15:42, Alexander Stein wrote:
>> > This is necessary to support PCIe on LS1021A.
>> >=20
>> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>=20
>> Can you explain why this is actually required? I can see that the
>> ranges in the PCIe device point to a high address (0x4000000000,
>> 2^40), but I can't tell if this is hardwired in the SoC or a
>> setting that is applied by software (either the bootloader or
>> the PCIe driver).
>
> The RM ([1]) memory map (Table 2-1) says that 'PCI Express 1' is locat=
ed at=20
> '400000_0000', 'PCI Express 2' at '480000_0000', so I assume this is h=
ardcoded=20
> in SoC.
> It also explicitly lists in that table PCIe 1&2 is only accessible wit=
h 40-bit=20
> addressing.
>
>> If you can reprogram the memory map, I would expect this to fit
>> easily into the 32-bit address space, with 1GB for DDR3 memory
>> and 1GB for PCIe BARs.
>
> I'm not sure which part of memory map you can reprogram and where, but=
 I guess=20
> this is fixed on this SoC.

Ok, I see it now. It looks like they fell victim to the=20
cursed "Principles of ARM=C2=AE Memory Maps White Paper"
document and messed it up even further ;-)

In particular, it seems that the memory map of the PCI address
spaces is configurable, but only within that area you listed.
I see that section "28.4.2 PEX register descriptions" does list
a 64-bit prefetchable address space in addition to the 32-bit
non-prefetchable memory space, but the 64-bit space is not
listed in the DT. It would be a good idea to configure that
as well in order for devices to work that need a larger BAR,
such as a GPU, but it wouldn't help with fitting the PCIe
into non-LPAE 32-bit CPU address space.

In the datasheet I also see that the chip theoretically
supports 8GB of DDR4, which would definitely put it beyond
the highmem limit, even with the 4G:4G memory split. Do you
know if there are ls1021a devices with more than 4GB of
installed memory?

    Arnd
