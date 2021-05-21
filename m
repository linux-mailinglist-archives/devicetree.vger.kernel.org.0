Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44E7C38C9C2
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 17:06:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232433AbhEUPHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 11:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232206AbhEUPHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 11:07:30 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1DF7C061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 08:06:06 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id f20-20020a05600c4e94b0290181f6edda88so685334wmq.2
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 08:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=y9rxwucVtJfHpBjLcZc/0w+yWVa9v5oVOodP9oA6NiI=;
        b=p68yuyGdHvcdvvqf8ZYQ3FxLpLxfFgk3yz3/RLbwSRD+gAmlkbPBBLrmDiUMCZzgN8
         axVRqzn5H9WkRxzMQB6P6hT7OXKIihbfor+CGmY2mmIYj+KmRHHxkd1eRJphd5tyF3i0
         OBvLn4GfRF/1Cp2rDIwoNfpiczRcRzej5pSfyr2Cnp3HokgvgFGkfPTq7tsAqo6HaGFZ
         cLse7Djt4Ge2coLSdKOlBk1YxhMzCwMmd0//FNJqx4GEutj+X+588cv5dNA3kwPSh9iO
         XpAhB1aaLAR1DkeD8F1tlQmIrdUavZ64ejNW+FpQ38cpUuKRBs58aVDN1eFcVW4ZNG7E
         qmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=y9rxwucVtJfHpBjLcZc/0w+yWVa9v5oVOodP9oA6NiI=;
        b=eILk++LNY2/oih8f+1NtWpSLDF/1aMphfj73J7G+uzXQfZtRdR+UIP3bqfzX0upXmC
         HBxrjvMKduXFI2DqCXsS3k6OEAb3cFM/j7rhLqH/GLXsv+zwwtUa+Mzzn62cF62gz+3r
         TSq5KfvpzS/fgookU9jsGdCDFjB/kPrENY0dAUQyDsF7POp5hoS7jyq1ocOlmuLuxTe5
         EBaltrsZCLAdbCu1awsiq1Q5aB5txjJ4/BE0++wIvtVBCV/r0vQoMLAdQhozyh9S0UMj
         EM2oc8G+PwFRX+tmWfkheeaw9gvN/9gkd8my5eAtscZkERJMYWwCKhpdvyPvjQbICQvj
         6YEA==
X-Gm-Message-State: AOAM530X+NgjcMY/BGp0qXsWsJ2nOClJT9AVgc0gqB2u4JP6JumN5qxo
        LtHTR+ZadX0jUU7ydWppdInNtg==
X-Google-Smtp-Source: ABdhPJxG1su9ZVmkQyBc4HWjZbYdM3zFbTul02tM4DpsJejq/7QVW+YWiEKfAv3fmYd8/sPB13n7fg==
X-Received: by 2002:a05:600c:1909:: with SMTP id j9mr9370189wmq.100.1621609565285;
        Fri, 21 May 2021 08:06:05 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id r14sm2327477wrx.74.2021.05.21.08.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 08:06:04 -0700 (PDT)
Date:   Fri, 21 May 2021 16:06:03 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Message-ID: <20210521150603.GJ2549456@dell>
References: <20210519082049.30976-1-zajec5@gmail.com>
 <20210519184041.563-1-zajec5@gmail.com>
 <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
 <20210521071221.GU2549456@dell>
 <273988f1-7180-572e-f9e2-4218637d0353@gmail.com>
 <20210521073150.GA2549456@dell>
 <CAL_JsqJKjW9J20z-W2vB1K7C7WKVS=TeDfq468=gH7i4UFUg=g@mail.gmail.com>
 <20210521135137.GG2549456@dell>
 <CAL_JsqL0kP7eBafRkX2eNQ5_ihJgkPhsjdi3vKCzqOXo+C-HUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqL0kP7eBafRkX2eNQ5_ihJgkPhsjdi3vKCzqOXo+C-HUw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 May 2021, Rob Herring wrote:

> On Fri, May 21, 2021 at 8:51 AM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Fri, 21 May 2021, Rob Herring wrote:
> >
> > > On Fri, May 21, 2021 at 2:31 AM Lee Jones <lee.jones@linaro.org> wrote:
> > > >
> > > > On Fri, 21 May 2021, Rafał Miłecki wrote:
> > > >
> > > > > On 21.05.2021 09:12, Lee Jones wrote:
> > > > > > On Thu, 20 May 2021, Rob Herring wrote:
> > > > > >
> > > > > > > On Wed, May 19, 2021 at 1:40 PM Rafał Miłecki <zajec5@gmail.com> wrote:
> > > > > > > >
> > > > > > > > From: Rafał Miłecki <rafal@milecki.pl>
> > > > > > > >
> > > > > > > > CRU is a block used in e.g. Northstar devices. It can be seen in the
> > > > > > > > bcm5301x.dtsi and this binding documents its proper usage.
> > > > > > > >
> > > > > > > > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > > > > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > > > > ---
> > > > > > > > Rob: would you take this patch through your dt/next?
> > > > > > >
> > > > > > > I can't, I don't have the dependencies. It looks like 08e9fdfbb224 is
> > > > > > > already upstream. For ac5f8197d15c, I could get a stable branch from
> > > > > > > Linus, but I can't take some random github branch. Even if I got a
> > > > > > > stable branch for that, that's a lot of extra work for me for 1 patch
> > > > > > > compared to waiting til next cycle.
> > > > > > >
> > > > > > > My suggestion is get a stable branch/tag from Linus, merge that into
> > > > > > > the Broadcom branch and then apply this patch. Though really, Linus
> > > > > > > needed to know the dependency when applying the patch if he doesn't
> > > > > > > rebase his tree. (I realize the dependency probably happened because
> > > > > > > of the review).
> > > > > > >
> > > > > > > >
> > > > > > > > V2: Use complete binding & change additionalProperties to false
> > > > > > > > V3: Use clock-controller@ for clocks
> > > > > > > >
> > > > > > > > NOTICE: this patch is based on top of the linux-next as it requires:
> > > > > > > > ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> > > > > > > > 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> > > > > > > > AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
> > > > > > > > 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> > > > > > > >
> > > > > > > > This is reworked version of the
> > > > > > > > [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> > > > > > > > https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> > > > > > > > ---
> > > > > > > >   .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
> > > > > > > >   1 file changed, 86 insertions(+)
> > > > > > > >   create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> > > > > >
> > > > > > What's the dependency here?  It's a new file that doesn't reference anything.
> > > > >
> > > > > Without dependencies it will cause warnings for those running "dt_binding_check".
> > > >
> > > > No one runs that, it's full of warnings. ;)
> > >
> > > That's dtbs_check on dts files which is full of warnings.
> > > dt_binding_check for the schema does not have warnings (well, there's
> > > a couple typically because either the bindings aren't reviewed or the
> > > dependencies are ignored).
> > >
> > > > > I didn't find it critical so I thought Rob can take in on a promise of
> > > > > what is queued for the next release. It appears Rob has more strict
> > > > > rules so I'll just have to wait for stuff to land in Linus's tree :)
> > >
> > > I care less if other trees break as long as linux-next doesn't.
> > >
> > > > Rob isn't the one taking the patch. :D
> > > >
> > > > I'll apply it in a few days, unless Rob shouts real-loud!
> > >
> > > I've said it before, MFD and their child bindings need to be applied
> > > in 1 tree. If you can't make that happen, then don't apply binding
> > > patches.
> >
> > I'm not aware of MFD patches applied anywhere else.
> >
> > AFAIK, they all come through me.
> 
> Obviously not, or we wouldn't be having this discussion. The key part
> is 'AND their child bindings'.

I see.  That makes more sense.

> The child bindings can't go in via each
> subsystem because they are dependencies of the main MFD binding
> schema.

There is now more of a build-time dependency issue over the
documentation than there is the C-code.

That sounds so wrong to me.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
