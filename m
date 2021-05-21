Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C41638C734
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 14:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbhEUM5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 08:57:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:36706 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230383AbhEUMzu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 May 2021 08:55:50 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C3C3613E5
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621601667;
        bh=0ZMtI/mOhMFO2O4PSit98Z29uzYsTWfaDdPt410lF+8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=rgYb/TByOLu7lXEN+G732O9aYgY3rusiXG4FLqpq9iM2LO4qR5YlpZILskjNlnv0f
         j5tcquoBOcnItZWyw4NQ1m5qCqhtfip8aiuPCc6/q1glRMdR6asmvHz7In5ILIa7SO
         n+vCLgIcGr/YGH85yZ1Wi/aOnhb1FyKz/J2UXu7/sWCtHv9LDC55UFiA1F4p8qRtrb
         kZBwxSOUZFBflPfpdrOP4jErIcSJV1CRrek8RV4VBIXNGiNuLwPnCzY8uaxyDj5hOB
         vcE20T15k1lvx1OkHQdFUMQtvkULAXWACSR4kkw/SyWuBRbaLWPLo5uYuKnA1Gyz+G
         /spemBTtp5Nzg==
Received: by mail-ej1-f54.google.com with SMTP id p24so29074589ejb.1
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 05:54:27 -0700 (PDT)
X-Gm-Message-State: AOAM532dSHHVk1/xoxpvn5UWd4BrmhKesP8c8kIc3j3EEKwZCG5B9OP9
        QDWbKMjFivs3OmXmX5HS/gLdYYPmTlRewn/9tg==
X-Google-Smtp-Source: ABdhPJyI5JRTNyaSbEFkS5VDO93srKVd2zyqF37V1BVLhQ2AqdbIALCK2dd+uw96GE4piWbqbViNhdSnNo7Ju7OO0pE=
X-Received: by 2002:a17:907:76b8:: with SMTP id jw24mr10136995ejc.359.1621601666097;
 Fri, 21 May 2021 05:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210519082049.30976-1-zajec5@gmail.com> <20210519184041.563-1-zajec5@gmail.com>
 <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
 <20210521071221.GU2549456@dell> <273988f1-7180-572e-f9e2-4218637d0353@gmail.com>
 <20210521073150.GA2549456@dell>
In-Reply-To: <20210521073150.GA2549456@dell>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 21 May 2021 07:54:13 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJKjW9J20z-W2vB1K7C7WKVS=TeDfq468=gH7i4UFUg=g@mail.gmail.com>
Message-ID: <CAL_JsqJKjW9J20z-W2vB1K7C7WKVS=TeDfq468=gH7i4UFUg=g@mail.gmail.com>
Subject: Re: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
To:     Lee Jones <lee.jones@linaro.org>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 2:31 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> On Fri, 21 May 2021, Rafa=C5=82 Mi=C5=82ecki wrote:
>
> > On 21.05.2021 09:12, Lee Jones wrote:
> > > On Thu, 20 May 2021, Rob Herring wrote:
> > >
> > > > On Wed, May 19, 2021 at 1:40 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
> > > > >
> > > > > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > > > >
> > > > > CRU is a block used in e.g. Northstar devices. It can be seen in =
the
> > > > > bcm5301x.dtsi and this binding documents its proper usage.
> > > > >
> > > > > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > > > Rob: would you take this patch through your dt/next?
> > > >
> > > > I can't, I don't have the dependencies. It looks like 08e9fdfbb224 =
is
> > > > already upstream. For ac5f8197d15c, I could get a stable branch fro=
m
> > > > Linus, but I can't take some random github branch. Even if I got a
> > > > stable branch for that, that's a lot of extra work for me for 1 pat=
ch
> > > > compared to waiting til next cycle.
> > > >
> > > > My suggestion is get a stable branch/tag from Linus, merge that int=
o
> > > > the Broadcom branch and then apply this patch. Though really, Linus
> > > > needed to know the dependency when applying the patch if he doesn't
> > > > rebase his tree. (I realize the dependency probably happened becaus=
e
> > > > of the review).
> > > >
> > > > >
> > > > > V2: Use complete binding & change additionalProperties to false
> > > > > V3: Use clock-controller@ for clocks
> > > > >
> > > > > NOTICE: this patch is based on top of the linux-next as it requir=
es:
> > > > > ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar t=
o the json-schema")
> > > > > 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to =
the json-schema")
> > > > > AND merged git@github.com:Broadcom/stblinux.git devicetree/next a=
s it requires:
> > > > > 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to=
 the json-schema")
> > > > >
> > > > > This is reworked version of the
> > > > > [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> > > > > https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20=
210309142241.16259-1-zajec5@gmail.com/
> > > > > ---
> > > > >   .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 ++++++++++++=
+++++++
> > > > >   1 file changed, 86 insertions(+)
> > > > >   create mode 100644 Documentation/devicetree/bindings/mfd/brcm,c=
ru.yaml
> > >
> > > What's the dependency here?  It's a new file that doesn't reference a=
nything.
> >
> > Without dependencies it will cause warnings for those running "dt_bindi=
ng_check".
>
> No one runs that, it's full of warnings. ;)

That's dtbs_check on dts files which is full of warnings.
dt_binding_check for the schema does not have warnings (well, there's
a couple typically because either the bindings aren't reviewed or the
dependencies are ignored).

> > I didn't find it critical so I thought Rob can take in on a promise of
> > what is queued for the next release. It appears Rob has more strict
> > rules so I'll just have to wait for stuff to land in Linus's tree :)

I care less if other trees break as long as linux-next doesn't.

> Rob isn't the one taking the patch. :D
>
> I'll apply it in a few days, unless Rob shouts real-loud!

I've said it before, MFD and their child bindings need to be applied
in 1 tree. If you can't make that happen, then don't apply binding
patches.

Rob
