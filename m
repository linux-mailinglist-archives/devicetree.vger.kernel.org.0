Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41DCE38C0C7
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 09:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236072AbhEUHdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 03:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236007AbhEUHdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 03:33:17 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC3CC061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:31:54 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d11so19979632wrw.8
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9az3YkbEU8zXE5BH8+f3BcjQNB59B70Vga7rmbOV2Sk=;
        b=xLWxcMM5a+OqjAFYveoMZl2FP7m82j6+7nDSe4zsOOwpyJoUW0J2XD3fhUWI1n9Zvf
         S+NZ6lF61vWB1M2rhqwhL1csjCOXNJMcHp6jKNNpYjnL6u4zpPy6SilpB8W6tK6WpjDN
         Xs7tvHCDb6iIJbmfpzO1cvI7R8dPrAGi/CnFG3fyS0oemXuPx+Soo5BFbnsfIytzH5HH
         puIFzhgK9v7W7ztWh2n2rWQB5vsFgKfEvOfOUliVkguaCcTk0Os2NGwXKFq9OOSsGGQN
         vAvn/1A9YFc/04ximoUMcgWw2uR2G1WD9zMRBctRVPS8rT2mTT69pP2Tf0uipQ8tCDvb
         1YNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9az3YkbEU8zXE5BH8+f3BcjQNB59B70Vga7rmbOV2Sk=;
        b=i2K+FKUg/ZS7HMN3NS80Vw9SnoGn7rlB037fATNiF2cXPl2SZe/LTwz6lEf6XusZQ4
         iJB5fbDshmRAGBE/Fzay6KLiJxTtLP32JZ/sYJX5H9JIhoG+Bo1RtegJ6KQwtWY7vMU2
         HcTW4Ls+j3sw4LjxGvFRloErKjsQaL59xiPn9Qu8ePFlhkOb9PFdtcMWQ1KYM6qQRmN0
         eZghWvJGVt14UTvIpGGZs/dZ6AFAuZxzaemFznAXPB9GC8jRtiT/fGIuuvw/Ges44P2y
         JrETJ3HRYwKS/z6yVwhS5k3/QJ+PbUVVHVK691X3jrYJwb4Jy4ouF0h+S+Drw55hIsci
         +J4w==
X-Gm-Message-State: AOAM531xRZbT1onM1JTiL6C0jNPkJv5FFM3YD8Ms1YA4aZbt2wCD/RUR
        I7ervfnrpE7f4bXw1Sl8sDqzBw==
X-Google-Smtp-Source: ABdhPJxXdG6c3yMjghKHjfuQvw+x1Pz1kX5R9zgVww6SfdmtvSHvQ7E/bpsnHluJgDb5wuYc5ssQCQ==
X-Received: by 2002:a5d:64a3:: with SMTP id m3mr7925752wrp.172.1621582312754;
        Fri, 21 May 2021 00:31:52 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id s1sm12420403wmj.8.2021.05.21.00.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 00:31:52 -0700 (PDT)
Date:   Fri, 21 May 2021 08:31:50 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Message-ID: <20210521073150.GA2549456@dell>
References: <20210519082049.30976-1-zajec5@gmail.com>
 <20210519184041.563-1-zajec5@gmail.com>
 <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
 <20210521071221.GU2549456@dell>
 <273988f1-7180-572e-f9e2-4218637d0353@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <273988f1-7180-572e-f9e2-4218637d0353@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 May 2021, Rafał Miłecki wrote:

> On 21.05.2021 09:12, Lee Jones wrote:
> > On Thu, 20 May 2021, Rob Herring wrote:
> > 
> > > On Wed, May 19, 2021 at 1:40 PM Rafał Miłecki <zajec5@gmail.com> wrote:
> > > > 
> > > > From: Rafał Miłecki <rafal@milecki.pl>
> > > > 
> > > > CRU is a block used in e.g. Northstar devices. It can be seen in the
> > > > bcm5301x.dtsi and this binding documents its proper usage.
> > > > 
> > > > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > > Rob: would you take this patch through your dt/next?
> > > 
> > > I can't, I don't have the dependencies. It looks like 08e9fdfbb224 is
> > > already upstream. For ac5f8197d15c, I could get a stable branch from
> > > Linus, but I can't take some random github branch. Even if I got a
> > > stable branch for that, that's a lot of extra work for me for 1 patch
> > > compared to waiting til next cycle.
> > > 
> > > My suggestion is get a stable branch/tag from Linus, merge that into
> > > the Broadcom branch and then apply this patch. Though really, Linus
> > > needed to know the dependency when applying the patch if he doesn't
> > > rebase his tree. (I realize the dependency probably happened because
> > > of the review).
> > > 
> > > > 
> > > > V2: Use complete binding & change additionalProperties to false
> > > > V3: Use clock-controller@ for clocks
> > > > 
> > > > NOTICE: this patch is based on top of the linux-next as it requires:
> > > > ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> > > > 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> > > > AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
> > > > 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> > > > 
> > > > This is reworked version of the
> > > > [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> > > > https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> > > > ---
> > > >   .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
> > > >   1 file changed, 86 insertions(+)
> > > >   create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> > 
> > What's the dependency here?  It's a new file that doesn't reference anything.
> 
> Without dependencies it will cause warnings for those running "dt_binding_check".

No one runs that, it's full of warnings. ;)

> I didn't find it critical so I thought Rob can take in on a promise of
> what is queued for the next release. It appears Rob has more strict
> rules so I'll just have to wait for stuff to land in Linus's tree :)

Rob isn't the one taking the patch. :D

I'll apply it in a few days, unless Rob shouts real-loud!

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
