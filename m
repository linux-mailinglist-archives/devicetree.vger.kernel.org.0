Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9EA2DA986
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 09:58:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726938AbgLOI4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 03:56:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgLOI4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Dec 2020 03:56:08 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB019C06179C
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 00:55:23 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id 23so37312466lfg.10
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 00:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jkI7wzHUxhcji19Pf6MI76MMjESQ6xmrUpkZOt0jNs4=;
        b=GFcJIVuEKBbI8nBa2MR5kNJB8kWgNkfZ5nIr6N6mQ6D5TZqOy7l9bGVMXiWspOZ4++
         ZROI1tW0uMhQzyf7XQl1zf3oAwEefw2frN//V3+RgfJMa+8ZtXk9iP+F4Rrci3qPviw7
         wH8AN5JJdWXtJ2nNAfx41vYtcEmBoD4JRMHEeA4WeXeQj+V+zBNQ2cuPjY2r1x2FrQKL
         cpiEaLeJhJ42zsH4reuqPew0qk9KZnZmiX2oLTFSwidJp3uGh1Qon/fqzc2uqZ2H0w2f
         vWLYArcuLnDb7oSAL7ciuJ1YmvU1pjc3D2jkIDtGx8hvdYCGsZj/U/RtBWZC/eRAw4Ep
         k6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jkI7wzHUxhcji19Pf6MI76MMjESQ6xmrUpkZOt0jNs4=;
        b=cDlLvWTp0cJn1jjF8XQavuSC3GQeaA493iyUXjitVHJunnEXPQ+ehIDh3vO6nmWHOR
         LeyiWpmo/VJrrqY4lXhEl53V7C7P1ihMBENO2/RG9+HoBKuaXNsL0qd980NStNdSd5db
         t1RfIfoEwnUq6wudSgx7T7bnTIxABxevuCm4I16XlCIRfzLPisYukldOjHRWkIpz/odt
         Eg7pUu9OWSzcGk4ByDXk+Px0e82UVcXPnKKPiPEPuFGifnbBrdrKiyYNy0riJkGlnFNk
         pnm8qdJeZ7vAxZ2yl4i1WpIvNgRZj1cs7hcItnTp7ofenK5AbCElOWOkDLaqY7i5Mai3
         8ZdQ==
X-Gm-Message-State: AOAM532Juzs0WpXDVFL8ileW0G6zST7IXuBll96e9Gd14IUDP5V79pNn
        IlpLaq59CyF20TwKayGppAUAajg2fjHLGA==
X-Google-Smtp-Source: ABdhPJxb59ESR+mnYpIzLXVVmeChAnAY0MP5KLvIkdDHCAkXBgrJmvau0XrDCoSMY5YUlJMtBAl9jw==
X-Received: by 2002:a2e:720f:: with SMTP id n15mr11834153ljc.405.1608022522255;
        Tue, 15 Dec 2020 00:55:22 -0800 (PST)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id l17sm133602lfg.205.2020.12.15.00.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Dec 2020 00:55:21 -0800 (PST)
Date:   Tue, 15 Dec 2020 09:55:20 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2 0/6] [PATCH 0/6] arm64: dts: renesas: Add TMU nodes
Message-ID: <20201215085520.GA2051479@oden.dyn.berto.se>
References: <20201210152705.1535156-1-niklas.soderlund+renesas@ragnatech.se>
 <CAMuHMdWPFDLKh_10_D+yfPAoDgLTgR5nKCxy2Qnh23UDbSFKbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdWPFDLKh_10_D+yfPAoDgLTgR5nKCxy2Qnh23UDbSFKbg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On 2020-12-11 13:43:34 +0100, Geert Uytterhoeven wrote:
> Hi Niklas,
> 
> On Thu, Dec 10, 2020 at 4:27 PM Niklas Söderlund
> <niklas.soderlund+renesas@ragnatech.se> wrote:
> > Add TMU nodes to Renesas R-Car H3, M3-W, M3-W+, D3, M3-N and E3. I have
> > tested this on all but D3 and E3 SoCs which I do not have access to. I
> > tested by enabling all TMU nodes in DT and then used the kernel timer
> > selftests located in tools/testing/selftests/timers/
> >
> >     - clocksource-switch.c
> >     - inconsistency-check.c
> >     - nanosleep.c
> >
> > The test passes for all SoCs I have access to and I no reason to believe
> > it would not also work on D3 and E3.
> >
> > Niklas Söderlund (6):
> >   arm64: dts: renesas: r8a77951: Add TMU nodes
> >   arm64: dts: renesas: r8a77960: Add TMU nodes
> >   arm64: dts: renesas: r8a77961: Add TMU nodes
> >   arm64: dts: renesas: r8a77965: Add TMU nodes
> >   arm64: dts: renesas: r8a77990: Add TMU nodes
> >   arm64: dts: renesas: r8a77995: Add TMU nodes
> >
> >  arch/arm64/boot/dts/renesas/r8a77951.dtsi | 65 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/renesas/r8a77960.dtsi | 65 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/renesas/r8a77961.dtsi | 65 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 65 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 65 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/renesas/r8a77995.dtsi | 65 +++++++++++++++++++++++
> >  6 files changed, 390 insertions(+)
> 
> Would you mind if I would squash these into a single commit while applying?
> Thanks!

Not at all, please squash them if you think it makes more sens.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Regards,
Niklas Söderlund
