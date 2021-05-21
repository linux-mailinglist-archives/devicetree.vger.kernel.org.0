Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 865CC38C07B
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 09:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234228AbhEUHN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 03:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235551AbhEUHN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 03:13:56 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94508C061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:12:25 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id b7so9926610wmh.5
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=m5vF3TnlPUOycQm/T1L3sPtg7uh074j+F7Vj04o9Y9s=;
        b=HwytcLw2D3QiXLHJVWAq04upELpHAu0g6S0kBnpRSF3ijzzFx7QI7ibuMVhpgxdCC3
         MkfZ9u9w4XqOwh6NBqYyjAAvOunC9CMnsQODZKcLwpnf5tnD0ClB39sgr0nkohTtdHaC
         YHVVSEyip9rHMMJDP+gAky195Fgd39zWv6ejkCklZmDR2Rh30fuZqEBCEh9Sdfs1pzTR
         3KCCjpVlE8fh3Q+S9g6PPDQl9I0qi2H3O1YD9On0RDtiLQs+tc4djY2XkgSuw2V61KRu
         kj2zRbv7YfUOBm4cf2JPm0Upkm/BzSMeRIjzWjAEUI5FWyGARiKKOTh585de7MEyTZf9
         M8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=m5vF3TnlPUOycQm/T1L3sPtg7uh074j+F7Vj04o9Y9s=;
        b=OF5F3i1mhi/oJ3CV2iMA1/h1OzctSZlqm5loWKrSqw96Nhab5zjHnGUde8I+5+2yqI
         wCty00cjXfUPHYOElJSNeigImaNhXY9n54wdfzEhDULv/FQBM+VQmv99FN0pKbFJCFf3
         M3g2CSEZ30tXdKqg0yXLAFiA6u34CfOJ+8XfrnfQelqzksR1wx0pdCLm8YjMX3/XEruV
         jTkFEx/lcrECMh8y5Zo0XgXVua22d30RjjKgb2TuVZQbxPBic1zbbSANpPsn7IcSMt1x
         6erFFUIJHDVZnwXrxHtMkEPvV69kwYlu+3z3FEySSaxiGqacQv6thOe06BYUoOf/YrLp
         rk+g==
X-Gm-Message-State: AOAM5316oFsInk8s4PCYCN8V8yfEbPGBHpwSZqLAaMRX0IImsjHUoCOp
        jPkyxtUTuy7mLmgj3KsF4WFblg==
X-Google-Smtp-Source: ABdhPJwIbC2uYsgSiFr6KeDOEv7cq+J7jkT0AXNAFTGphQY9wqmys1UtjBSi1sdpR7SnFvNfH7JnPA==
X-Received: by 2002:a1c:7501:: with SMTP id o1mr7470780wmc.65.1621581143726;
        Fri, 21 May 2021 00:12:23 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id h14sm12220990wmb.1.2021.05.21.00.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 00:12:23 -0700 (PDT)
Date:   Fri, 21 May 2021 08:12:21 +0100
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
Message-ID: <20210521071221.GU2549456@dell>
References: <20210519082049.30976-1-zajec5@gmail.com>
 <20210519184041.563-1-zajec5@gmail.com>
 <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 May 2021, Rob Herring wrote:

> On Wed, May 19, 2021 at 1:40 PM Rafał Miłecki <zajec5@gmail.com> wrote:
> >
> > From: Rafał Miłecki <rafal@milecki.pl>
> >
> > CRU is a block used in e.g. Northstar devices. It can be seen in the
> > bcm5301x.dtsi and this binding documents its proper usage.
> >
> > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > Rob: would you take this patch through your dt/next?
> 
> I can't, I don't have the dependencies. It looks like 08e9fdfbb224 is
> already upstream. For ac5f8197d15c, I could get a stable branch from
> Linus, but I can't take some random github branch. Even if I got a
> stable branch for that, that's a lot of extra work for me for 1 patch
> compared to waiting til next cycle.
> 
> My suggestion is get a stable branch/tag from Linus, merge that into
> the Broadcom branch and then apply this patch. Though really, Linus
> needed to know the dependency when applying the patch if he doesn't
> rebase his tree. (I realize the dependency probably happened because
> of the review).
> 
> >
> > V2: Use complete binding & change additionalProperties to false
> > V3: Use clock-controller@ for clocks
> >
> > NOTICE: this patch is based on top of the linux-next as it requires:
> > ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> > 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> > AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
> > 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> >
> > This is reworked version of the
> > [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> > https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> > ---
> >  .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

What's the dependency here?  It's a new file that doesn't reference anything.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
