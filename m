Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03A2253B9C4
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 15:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233283AbiFBNcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 09:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232957AbiFBNcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 09:32:48 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C70765D
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 06:32:47 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id q186so2167513vkh.8
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1jE3omidoDC8ojZ7FhHr9+lAZVHzqEYQnyQPLqfzIME=;
        b=HGoExsnJpq0YlopdoXx3Ur0MkhNtgva2ncdnsR+rNjt09dPOSbt4ytiXjL7GtoiH3V
         ZNw4pZ/17rxW9YpwocHj+6JSMghqJpjZQ1Poaoi35fjgDfSrBVOonnq+wSazLOA/xti1
         rsNMgpf+vM8vs3yCJvQcvW6EPWyLmhWzjm485pgoTOKYC/7OMsPw/Oo13+A2Mx4xQ8EU
         lkm6zw06FY6YoAIY8y6m+cUHn0GC1RQKZuMf4/06VptAOHE51McCLhE+Ctpfzm2Xsg1D
         q5TJC8KQl8vzywMa4o57iERT/Dnn+M/ULj+ctcoH1i1E5K4xpraZwa7zeNLMHMbRMFOL
         Bsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1jE3omidoDC8ojZ7FhHr9+lAZVHzqEYQnyQPLqfzIME=;
        b=yzB895cVtR+ihPe+DAYovZ60Abc7qdlPEbL1KqcEQ/cqUL0q4OCGKmKIfBvSKaOOjC
         4UZly52XWuC3xh5Q7Z7vPbV9yZjnaerLIfCgUeeq6+dG7xUJe4hqngSmssPq0iA7Jrf8
         vW/NqkNX3IaEYVs7oXBVtY3iiJOzePrLNQ+py33P2UEKFL1Qe8ax1l7tsBrjke3qItlF
         PtPBZiTmO5xWfVGvsTHjYVLIzVCAD1cJ/j5mudfGcYaIYz/CbLOvR9+x20vScXhCocfL
         5To+z25MmlpFFeT0THzK1FtYmts9JX/8yseiwXg01W8Y5g1/rZHFpNP6BFwJ5PPLmRVH
         bKNQ==
X-Gm-Message-State: AOAM530qbXKB4osr+bqX3haBY2Lp1wBt4sP2FcN/jElHlLXFZo+sZwwl
        1mUufT1kh9b1kUGkS6KfNB2KYvQiDxkQYzhvuJ8=
X-Google-Smtp-Source: ABdhPJxyDg4FcSw8NEXcWUSdUhwwVo8AlVpTqXszNu4D6lbF6AnIF6xzUiFKSyVTsdaFcNQCGowgnKX4sgRzBmmqapQ=
X-Received: by 2002:a05:6122:981:b0:359:1e72:bfbb with SMTP id
 g1-20020a056122098100b003591e72bfbbmr13892004vkd.2.1654176766134; Thu, 02 Jun
 2022 06:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220601110249.569540-1-pbrobinson@gmail.com> <20220601110249.569540-5-pbrobinson@gmail.com>
 <9e096f63-2c8e-b4b7-6d27-79282ecc4e1b@i2se.com>
In-Reply-To: <9e096f63-2c8e-b4b7-6d27-79282ecc4e1b@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Thu, 2 Jun 2022 14:32:35 +0100
Message-ID: <CALeDE9O8jorjuJQAAUy_bnCnRiq+fWWv+p=K+kM7n6mRHAZb5Q@mail.gmail.com>
Subject: Re: [PATCH v5 4/6] ARM: dts: bcm2711: Enable V3D
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

> Am 01.06.22 um 13:02 schrieb Peter Robinson:
> > This adds the entry for V3D for bcm2711 (used in the Raspberry Pi 4)
> > and the associated firmware clock entry.
> >
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> > Changes since v5:
> > - Move the firmware clock to bcm2711-rpi.dtsi
> >
> >   arch/arm/boot/dts/bcm2711-rpi.dtsi |  4 ++++
> >   arch/arm/boot/dts/bcm2711.dtsi     | 11 +++++++++++
> >   2 files changed, 15 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > index ca266c5d9f9b..98817a6675b9 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > @@ -69,6 +69,10 @@ blconfig: nvram@0 {
> >       };
> >   };
> >
> > +&v3d {
> > +     clocks = <&firmware_clocks 5>;
> > +};
> > +
> >   &vchiq {
> >       interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> >   };
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> > index 89af57482bc8..177662257b16 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -601,6 +601,17 @@ genet_mdio: mdio@e14 {
> >                               #size-cells = <0x0>;
> >                       };
> >               };
> > +
> > +             v3d: gpu@7ec00000 {
> > +                     compatible = "brcm,bcm2711-v3d";
>
> unfortunately this doesn't match with patch #3 anymore. Except of this
> everything looks good here.

Good catch, have updated locally, I'll send out a new rev tomorrow,
will give it a day to see if there's other feedback,

P

> Stefan
>
> > +                     reg = <0x0 0x7ec00000 0x4000>,
> > +                           <0x0 0x7ec04000 0x4000>;
> > +                     reg-names = "hub", "core0";
> > +
> > +                     power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> > +                     resets = <&pm BCM2835_RESET_V3D>;
> > +                     interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
> > +             };
> >       };
> >   };
> >
