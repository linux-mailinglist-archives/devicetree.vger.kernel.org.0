Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBB330942
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 09:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbfEaHVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 03:21:35 -0400
Received: from mail-it1-f194.google.com ([209.85.166.194]:40667 "EHLO
        mail-it1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725963AbfEaHVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 03:21:35 -0400
Received: by mail-it1-f194.google.com with SMTP id h11so13658844itf.5
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 00:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QBBKhSbZP7EAiicuPXkBfvJuEZTNKNpMjn27c5MZ3Dc=;
        b=AGwQrFiOCXgty4N4Ai5lLfQQ6Xg6MpVZHZRCHn9hb3ZDqRg/wR45SafGZhZKmmDC8y
         rHi8kv3AK9Dyf1clZUArh8rLaWgNT8PRSYqvMkcfx4hMo41rbMKlE53+ta/onOJtH6oo
         dfsWtjfgGEsFvdUTkgJxMtxVJftBAPsCWuVaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QBBKhSbZP7EAiicuPXkBfvJuEZTNKNpMjn27c5MZ3Dc=;
        b=ViEf3i1+3l1zQsrnjJuzH71T3/8DeL5UWMuUoNVjgLFwQUaYQKaKvYBSxAiCfhQMz4
         05s1yfZjWDS+ps0hVQc2fcsGRETVV9qUAApv8il68PC19j18H5JNv8/9roA433BHYJ9F
         Oyz4ImYbF6wb8b+KxPvLqhR7fB+opUb1s7jiIvvH7rUnhOf5bGFmAMwCK30gG+CqeNfZ
         +/iZQCl+U2vZdbHS3iKFXqLqngRGtnk7P2rLprWH11lnIJaBvgb53ev7qWP9DTwokxyK
         052lKvUbxgZ9g+QLyUQ0vQVp2/6PFxM0a8jCYmmNpXIBASuD9Aezw+C1MSZBhl5b7c0+
         T+jg==
X-Gm-Message-State: APjAAAXOal47QuZCmLyT0FplX2GTGsPckTOfLqs3LFKtgTDPIG3ThNUH
        gRye17RzWhpEbS3yeuPEOJ216HLp3Sh/u5FazEL3CA==
X-Google-Smtp-Source: APXvYqz2PDD+zioaMHLifADW+9kK68f43tOq4Amc0xMgAm0W/t6TnadR93Ukk5QMxHkQCpAl7zFjHTl9o7dS+amRmzU=
X-Received: by 2002:a24:2846:: with SMTP id h67mr6274629ith.94.1559287294453;
 Fri, 31 May 2019 00:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
 <20190529105615.14027-2-jagan@amarulasolutions.com> <20190531065928.4wfr3kjngefy4q2b@flea>
In-Reply-To: <20190531065928.4wfr3kjngefy4q2b@flea>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 31 May 2019 12:51:23 +0530
Message-ID: <CAMty3ZBTu5DqcL+u6KTUC=Ofe9Gwdcu8VT-kSwWb2O3n9gnrWQ@mail.gmail.com>
Subject: Re: [PATCH v9 1/9] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Chen-Yu Tsai <wens@csie.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Sergey Suloev <ssuloev@orpaltech.com>,
        Ryan Pannell <ryan@osukl.com>, Bhushan Shah <bshah@mykolab.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 31, 2019 at 12:29 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Wed, May 29, 2019 at 04:26:07PM +0530, Jagan Teki wrote:
> > The MIPI DSI controller in Allwinner A64 is similar to A33.
> >
> > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > to with separate compatible for A64 on the same driver.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > ---
> >  Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > index 1cc40663b7a2..9877398be69a 100644
> > --- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > +++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > @@ -12,6 +12,7 @@ The DSI Encoder generates the DSI signal from the TCON's.
> >  Required properties:
> >    - compatible: value must be one of:
> >      * allwinner,sun6i-a31-mipi-dsi
> > +    * allwinner,sun50i-a64-mipi-dsi
> >    - reg: base address and size of memory-mapped region
> >    - interrupts: interrupt associated to this IP
> >    - clocks: phandles to the clocks feeding the DSI encoder
>
> We've switch to YAML now, and the compatible should be expressed that
> way now:

Yes, I have seen it few days back will update on top of that, thanks!
