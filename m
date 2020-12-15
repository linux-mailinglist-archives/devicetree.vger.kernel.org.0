Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 440152DAA05
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 10:25:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbgLOJYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 04:24:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727908AbgLOJYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Dec 2020 04:24:13 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47042C0617A6
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 01:23:33 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id w5so15366678wrm.11
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 01:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=arydaWI6Ofc2fCASwYkyDcbCG50f6mVirTouYJGtvHE=;
        b=ipCE0TFYo5vjtGVXK6r8Nab4DR+qhgV6bPgW79e0TFqKkUDqXZh7A6lts/xOecY7tQ
         Q8+Ck0WwcQ0nxwlbAOnpMA1A2tMGXeqrALZJ7jjmv3wEwHhkEdWmIdXbHkdXGvTOAiZP
         P3EDs+jUyjTtb2g10mtWjboL+Fg5NFDVjEoMx3y8KDU/2/OH3Kt6WLCOf87YIhfWpyeQ
         cTkOIvz/ztr4dSlQWJizJ70zll9OQNPI0qfrf69JooaoCX1ecoAmIGhD3CqmnuekUG1m
         yBJfG14FxyTojGy9ZfkuZ4r/3yxfSlPghTqDZXOXwAjRuS9jCvXQ55uRXkgqw4RP/nyL
         N35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=arydaWI6Ofc2fCASwYkyDcbCG50f6mVirTouYJGtvHE=;
        b=Xb6d4grE8gZIFt8Tdwy+MXZmsBKdt92gwWvADJB2vLbzuTWR2i/FxM497S+ytIVzJu
         Xrey+Rygmuek6eXYZnzTM46ROgs2wooxyjbUGzCZc7zBXRc2QNTuqSxo1Z8ZqIXQBF7f
         lRT/273V5agpmgbAnQZHeaPlAR/I3p0EPnFwz28cmf3pspPujioznV3/2wn416iq0ist
         I1gUPEW8bL03/zWF1vtSiMn//py/Fz2nk1Zv7R4QbRxhFknPeqbknw121SPl917NHv4n
         9zb65dnWQP7em19482fuPGufdtbuu+Kl1iTELSj/gM8lHHEcU1DesZVr90GYbNXuAZ2d
         BHNQ==
X-Gm-Message-State: AOAM533Se8GvdVLXXl/7M6kV34mfhHIrX3kr+BeQFbUJvH3rFIAA2QiL
        CKwjDF9d4fvW2w5op04mwE5dYw==
X-Google-Smtp-Source: ABdhPJyV2XSumHfrWKUU8epURB4kCMlIvs1v2PJBbnu7wTv7C3vAHClnY/J8TEg24rW6ujY6QsWp0Q==
X-Received: by 2002:a5d:4d02:: with SMTP id z2mr33940652wrt.109.1608024212004;
        Tue, 15 Dec 2020 01:23:32 -0800 (PST)
Received: from dell ([91.110.221.168])
        by smtp.gmail.com with ESMTPSA id k18sm41337435wrd.45.2020.12.15.01.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Dec 2020 01:23:31 -0800 (PST)
Date:   Tue, 15 Dec 2020 09:23:29 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Daniel Thompson <daniel.thompson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cy_huang <cy_huang@richtek.com>,
        lkml <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 2/3] backlight: rt4831: Adds DT binding document for
 Richtek RT4831 backlight
Message-ID: <20201215092329.GL5029@dell>
References: <1607704424-16223-1-git-send-email-u0084500@gmail.com>
 <1607704424-16223-2-git-send-email-u0084500@gmail.com>
 <20201214095916.4g47zlueng4wa3hv@holly.lan>
 <CADiBU38wZ+yrfjbggJyY7BHc5-tdV-KWVgWBmZn-q3EY99=PPg@mail.gmail.com>
 <20201214151409.qdqh2i5hr4g3eboe@holly.lan>
 <20201215075308.GI5029@dell>
 <CADiBU3-MesTvXm31+W1szXDnYOm=2E21J=a3nP2LZ0i7Rs+Kkw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADiBU3-MesTvXm31+W1szXDnYOm=2E21J=a3nP2LZ0i7Rs+Kkw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Dec 2020, ChiYuan Huang wrote:

> Hi, Lee:
> 
> Lee Jones <lee.jones@linaro.org> 於 2020年12月15日 週二 下午3:53寫道：
> >
> > On Mon, 14 Dec 2020, Daniel Thompson wrote:
> >
> > > On Mon, Dec 14, 2020 at 10:40:55PM +0800, ChiYuan Huang wrote:
> > > > Hi,
> > > >
> > > > Daniel Thompson <daniel.thompson@linaro.org> 於 2020年12月14日 週一 下午5:59寫道：
> > > > >
> > > > > Hi CY
> > > > >
> > > > > On Sat, Dec 12, 2020 at 12:33:43AM +0800, cy_huang wrote:
> > > > > > From: ChiYuan Huang <cy_huang@richtek.com>
> > > > > >
> > > > > > Adds DT binding document for Richtek RT4831 backlight.
> > > > > >
> > > > > > Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> > > > >
> > > > > This patch got keyword filtered and brought to my attention
> > > > > but the rest of the series did not.
> > > > >
> > > > > If it was a backlight patch series you need to send it To: the
> > > > > all the backlight maintainers.
> > > > >
> > > > Yes, I'm waiting for mfd reviewing.
> > > > Due to mfd patch, I need to add backlight dt-binding patch prior to
> > > > backlight source code.
> > > > Or autobuild robot will said mfd dt-binding build fail from Rob.
> > > > That's why I send the backlight dt-binding prior to the source code.
> > > >
> > > > I still have backlight/regulator source code patch after mfd reviewing.
> > > > Do you want me to send all the patches without waiting for mfd reviewing?
> > >
> > > To some extent it's up to you.
> > >
> > > I think I would have shared all the pieces at once (although not it Lee,
> > > as mfd maintainer, had suggested otherwise).
> >
> > You should not need to concern yourself with patch ordering outside
> > of the realms of the set i.e. [PATCH 1/x], [PATCH 2/x], etc.
> >
> > If you just send the whole patch set and you do not specify otherwise,
> > it will be applied, in order, as a set.
> >
> > Sending subsystem patches without the correct maintainers as recipients
> > is bad form.  Many of us have filters on, so this tactic will seldom
> > work in any case.
> >
> 
> In my case, there're mfd/backlight/regulator for RT4831.
> You mean I can just send the whole patch set directly to whole
> mfd/backlight/regulator maintainers.
> And you can filter like as the keyword to review the related contents, right?
> 
> From my original thought, the order is mfd -> backlight-> regulator,
> one by one due to different maintainers.
> Maybe I think too much about the patch ordering
> 
> If so, after getting the comment from Rob, I'll send the whole patch to you.
> Thanks for the notice.

Simply send them all as a single patch-set.  It's a good idea to add
all maintainers to all patches.  We will then coordinate amongst
ourselves and come up with the best merge strategy.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
