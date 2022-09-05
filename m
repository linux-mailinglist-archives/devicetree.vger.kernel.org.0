Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BE455AD181
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 13:25:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237729AbiIELYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 07:24:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238215AbiIELY3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 07:24:29 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 786AA2AFA
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 04:24:28 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id z25so12723390lfr.2
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 04:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=FXrAJhBSyCTWYQD77kNPpgZydtAHXdPsqCEpqfHZiW4=;
        b=NMIEKGGUpwqGX194SrEL7gMKLxonH90IXaj3r1u6CkXWaoxW+tK836oGd3fHSqDZHd
         jXpFyh4n0C6BtFsZKAqDb1dTaoSo7gKY1LcxDh6NIrFYCnP6d7P3XWsQOISlWS2viWRI
         eLjrT1tQKFx7CK8wtl1+msLkHR14wCeS8ved1AAn9TSoxfMMRbBiJvkKjmgLLtO7er3K
         O7UMmM9TCf/PBPFHr70DohrrpoB3G8WoSP4UYnj7OgV2fhLU4BU+dsjeKE9MW1YNbap2
         hQp9pCf7moZkVp2gpZ6TlFaMoaYuqv4Kmdzcmvzvp7rIteQkjMnH4bC/rNkcud1/rMdR
         LD2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=FXrAJhBSyCTWYQD77kNPpgZydtAHXdPsqCEpqfHZiW4=;
        b=SH5vgRrl+vLAP/XWktAS4txL/T+pBlqfOuyOpF7yWvgaIbJolgRj1U/7A+W06R6ZWn
         kjFAsECNvrSmLThGHjyqh2uD4JX7iOPnfjfNuMntNuQn6YHV6MSynm5x+cwzscMacIl3
         YNyNLvWuuvh1P0A57R96zMX04UqwVUZMiQusbzzuxS683Tl0GooZoKNletWM9dq8t3bA
         CYA09sos0pdQL4ePFeugvyxeQGcTr5AZI0guahktf/lfiawZlIKd699ohfX6EHoDitmU
         vLXR735aU92RFG+G4omDSjHcrAmJ/nxv3L/MBdjR8QjDj1+E48kEsiAgTsL1JI+g5GnX
         DKWQ==
X-Gm-Message-State: ACgBeo1FHpfinEOEoK43PUemaLsEfttaw9+k2WOxdjiqtdtl6bI1BK5I
        PvDgBbIbM7cczB/LPTPZhLqoZ/V655ja8C9U40U=
X-Google-Smtp-Source: AA6agR6At30qiKgYmeL7UgCa0l1vprWVlbqxKoeYqu6bwzhLyjtLbLenyp2PpV65FL/asUmhlKhdgqb2fW5z0Ns71ak=
X-Received: by 2002:a05:6512:3501:b0:496:d15:e614 with SMTP id
 h1-20020a056512350100b004960d15e614mr2626267lfs.194.1662377066747; Mon, 05
 Sep 2022 04:24:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220905104317.2740661-1-saproj@gmail.com> <4a0efff9-49a2-4b6c-90c3-b9f5e104450a@www.fastmail.com>
In-Reply-To: <4a0efff9-49a2-4b6c-90c3-b9f5e104450a@www.fastmail.com>
From:   Sergei Antonov <saproj@gmail.com>
Date:   Mon, 5 Sep 2022 14:24:15 +0300
Message-ID: <CABikg9w9k0UUtEBbO=QB4_YVT7BFtzs0id6-g+Xo3HGv8qTvrQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sync Moxa SDIO 'compatible' name with moxart-mmc.c
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Jonas Jensen <jonas.jensen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_SBL_A autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 5 Sept 2022 at 14:13, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Sep 5, 2022, at 12:43 PM, Sergei Antonov wrote:
> > Driver moxart-mmc.c has .compatible = "moxa,moxart-mmc".
> >
> > But moxart.dtsi and the documentation file moxa,moxart-dma.txt
> > contain another name: compatible = "moxa,moxart-sdhci".
> >
> > Change name in moxart.dtsi and moxa,moxart-dma.txt to that from the driver.
> >
> > Signed-off-by: Sergei Antonov <saproj@gmail.com>
> > Cc: Jonas Jensen <jonas.jensen@gmail.com>
>
> Something is clearly wrong here, as the moxart-mmc device is not
> an sdhci at all, but are you sure that this is actually the
> correct device?

I am sure. Witnessing right now that it works with SDHC cards with
capacity 16 GB and 8 GB.
Datasheet quote:
"supports both MMC and SD interface protocol."
See https://bitbucket.org/Kasreyn/mkrom-uc7112lx/src/master/documents/FIC8120_DS_v1.2.pdf
, page 367.

> > diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
> > index f5f070a87482..d69d73930ebe 100644
> > --- a/arch/arm/boot/dts/moxart.dtsi
> > +++ b/arch/arm/boot/dts/moxart.dtsi
> > @@ -94,7 +94,7 @@ watchdog: watchdog@98500000 {
> >               };
> >
> >               sdhci: sdhci@98e00000 {
> > -                     compatible = "moxa,moxart-sdhci";
> > +                     compatible = "moxa,moxart-mmc";
> >                       reg = <0x98e00000 0x5C>;
> >                       interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
> >                       clocks = <&clk_apb>;
>
> Both the label and the device name still point to "sdhci",
> so it would be possible that the SoC actually has both
> an SDHCI compatible device and ftsdc010. In this case the
> correct fix would be to add a second node for the
> moxa,moxart-mmc with the correct reg and interrupts
> properties but to leave this one alone.

SoC contains ftsdc010 which supports SDHC cards. Should be compatible
with MMC cards too. I will test it to be sure.
