Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 548B85AD248
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 14:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbiIEMUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 08:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230054AbiIEMUt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 08:20:49 -0400
X-Greylist: delayed 440 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 05 Sep 2022 05:20:48 PDT
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C0F3ECE6
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 05:20:48 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 26EA258025B;
        Mon,  5 Sep 2022 08:13:25 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute3.internal (MEProxy); Mon, 05 Sep 2022 08:13:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1662380005; x=1662383605; bh=Iojl2M7WlD
        ZTBsnFT3a1WtL8toeh60+Zr0qEUF1Qhlg=; b=IzFmrWkbgnf/vjnrBvgqEOENr/
        jWlYxObkxiLA4HNRh4k4LRmGVwUwtAe1t8J2fmciHMYUoB1QWwwPKDrTu2+BD5Pk
        tg75HDCDCc+7EkIUhIeCxT3EoLaa4eSTZmBEddGebJAvsOutz9zxs7x2p8mFNo7Q
        aSvcvDbziQZIPl4DdnY4SRHjGN7dRVbfV7us9nENxcc8NcBYM8Cb04v2eofhvOBa
        MB+jI5YBP283wM4W3r3H9RUsvKJa1D/625+JCEBJrMLPmCtvn+Lvt3HuXbt82g0C
        fXHBJkje8o2Vx8OU0Y2Par93bkPyLjbbjRV1Lh4YWB+SbA9BzdbHzZttA0Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; t=1662380005; x=1662383605; bh=Iojl2M7WlDZTBsnFT3a1WtL8toeh
        60+Zr0qEUF1Qhlg=; b=IOhfl4x8YH+Y5qHgZSKyM5dNU0De95rJLqdWAem18vDH
        BvAqqBpeowTMlCwba2GMdQr+8HOMXhw34arL6jUNlACClK0P4wqQqwSuAUM8PcaS
        Q6iXteDO4F9PSMRlbSrhlng1HngPVMHI8VQk/E/Y5dWm0bC7d8IzLWY2h7zdhnSz
        ckDL7yxx0dBlDQKr/491H9q4Kj0xvkETFyj+98FP/mG7m8MKwxxcEjHpHqkhOZGm
        pYJcLwysBf58vhnKPUYxkXBrIoU9mf9sJ5TsWKwHklndSUNgNhkDYBKbJjkz8mbN
        POxvqGasKrSLhjbDVZ2/khpu7HE6Qe/4N4kTkKTLVQ==
X-ME-Sender: <xms:5OcVYwv0RqSqTDj0Aw1AwA5StaCYNm7tw6pWYF6VX7ReFbxgPDlC0A>
    <xme:5OcVY9fmkX2auJzRX6Fo4sC2r2CQujkqOBNXAr5MOa7kf0OKzlQbYUTA_PeWHhcGK
    bJrqBiyCXKQxqz0jvU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeliedghedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
    nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
    htvghrnhepveevhfejheffvdfhteefgfeukeevuddttdfgkeekudetgfekuedvgfekgfei
    hfetnecuffhomhgrihhnpegsihhtsghutghkvghtrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:5OcVY7zLGMR9Y3ttx7DsjLGOL8ckOPvESuMDGDtXJfBF9nnS3rmCyA>
    <xmx:5OcVYzMTzeOlkj1XL6d2xnDwblu3pUPOM6mONbtTVU0dJoGF0tByUg>
    <xmx:5OcVYw_D2GYB-m8oNBbfWQHYAK6V03sW6yK5RH9JTLyP6OcCmOiPzw>
    <xmx:5ecVYyKDDSJPmsS8eiMN365ofEYIsfTxo7Sw2R0Z5hniVE0qjP5-yA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 9ED35B60083; Mon,  5 Sep 2022 08:13:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-927-gf4c98c8499-fm-20220826.002-gf4c98c84
Mime-Version: 1.0
Message-Id: <ca470feb-8030-400f-8201-e3d17dbd52ac@www.fastmail.com>
In-Reply-To: <CABikg9w9k0UUtEBbO=QB4_YVT7BFtzs0id6-g+Xo3HGv8qTvrQ@mail.gmail.com>
References: <20220905104317.2740661-1-saproj@gmail.com>
 <4a0efff9-49a2-4b6c-90c3-b9f5e104450a@www.fastmail.com>
 <CABikg9w9k0UUtEBbO=QB4_YVT7BFtzs0id6-g+Xo3HGv8qTvrQ@mail.gmail.com>
Date:   Mon, 05 Sep 2022 14:13:04 +0200
From:   "Arnd Bergmann" <arnd@arndb.de>
To:     "Sergei Antonov" <saproj@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        "Jonas Jensen" <jonas.jensen@gmail.com>
Subject: Re: [PATCH] ARM: dts: sync Moxa SDIO 'compatible' name with moxart-mmc.c
Content-Type: text/plain
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_SBL_A autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 5, 2022, at 1:24 PM, Sergei Antonov wrote:
> On Mon, 5 Sept 2022 at 14:13, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Mon, Sep 5, 2022, at 12:43 PM, Sergei Antonov wrote:
> I am sure. Witnessing right now that it works with SDHC cards with
> capacity 16 GB and 8 GB.
> Datasheet quote:
> "supports both MMC and SD interface protocol."
> See 
> https://bitbucket.org/Kasreyn/mkrom-uc7112lx/src/master/documents/FIC8120_DS_v1.2.pdf
> , page 367.

Ok, that does make it pretty clear that there is only one
controller.

>> > diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
>> > index f5f070a87482..d69d73930ebe 100644
>> > --- a/arch/arm/boot/dts/moxart.dtsi
>> > +++ b/arch/arm/boot/dts/moxart.dtsi
>> > @@ -94,7 +94,7 @@ watchdog: watchdog@98500000 {
>> >               };
>> >
>> >               sdhci: sdhci@98e00000 {
>> > -                     compatible = "moxa,moxart-sdhci";
>> > +                     compatible = "moxa,moxart-mmc";
>> >                       reg = <0x98e00000 0x5C>;
>> >                       interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
>> >                       clocks = <&clk_apb>;
>>
>> Both the label and the device name still point to "sdhci",
>> so it would be possible that the SoC actually has both
>> an SDHCI compatible device and ftsdc010. In this case the
>> correct fix would be to add a second node for the
>> moxa,moxart-mmc with the correct reg and interrupts
>> properties but to leave this one alone.
>
> SoC contains ftsdc010 which supports SDHC cards. Should be compatible
> with MMC cards too. I will test it to be sure.

Don't worry about MMC cards, that is not the point. Both sdhci
and ftsdc010 can support SD, SDHC, MMC and eMMC devices, probably
other related standards as well.

The only question was whether the ftsdc010 was incorrectly labeled
as an sdhci type controller rather than ftsdc010, or whether the
chip has both sdhci and ftsdc010 controllers that can be used
simultaneously as is common on some other chips.

Please respin the patch though and change the node name to mmc@,
and the change the label to something other than sdhci (e.g.
"mmc", or "ftsdc010", doesn't matter) to make this less
confusing.

      Arnd
