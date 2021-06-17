Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73D103AB52A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 15:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232343AbhFQNwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 09:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231656AbhFQNwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 09:52:15 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB72C06175F
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 06:50:07 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id u30so3147014qke.7
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 06:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GK8eHQct43wbLsYBUjGPg3hzzxwNiKpMXoEojlUUWzA=;
        b=OkYv2RdbSVF37r8l4wSmRWSJuSsOaVCxqtLQdtLBKIjI7OkxfwKh2BOvHdtFZn3PoP
         T8b1GONEn2Med5o0yNideznO20cfH3ImIR6wpJDbgWkPS5vXwECCLUB3Rj/HGnc03x+d
         yykDrHpVbf3MGctZ+29lnwctpbotiWT449YyVE9aB9AVlPaxq7jQCNdJYFey37fVCAt5
         /6t04VdalE9z+SrKxrKC0bQtgwC9i3Kt1LRmP1YfUsrLQBdyVzi7MTJ8PFtET5SKMHxC
         wdg8TmR5ycCeGTN1KUxUPI9Pkn+hTrrMInixVRaCcPcnqHFps6cEgpCFL8ZVjzXc4nxI
         anFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GK8eHQct43wbLsYBUjGPg3hzzxwNiKpMXoEojlUUWzA=;
        b=TwwORmiAs462/I/PuvOn48O1PRx8lVeRPXru6Wnw5VbPUYRtRzJbtszSfXRoVDxCxD
         M4oyvFubEPEfPMX53uTWJbr6B18VMANWSp//eBfSMWGpUzBVxhxnIU7pX5yz0VGGo12b
         Lw1HN9fHmuYqcAphJHN6pM0DeygbR6FGT6zZuF/4pRsIMq/bg8VOhOOKA5bd0HDOSMAY
         M+f9H2mPZBtANQzuD2RUiCoF6rQAoOrbMYWLWJ5YVcmBe15urtH7yRfSLcrpcUNY64c8
         49E8dXgSuWCWXtTHDYUtFc1/0ORat0oRmhNJA7YrPklGdlYzMa0tYLXASYsz6dDDeZmF
         oovg==
X-Gm-Message-State: AOAM532JDPcvkVoHRXWuKRRN/peHRm4edOWmtf4GzSEprEOtpcHPWsyE
        Ae0F8KaoqP67n2cmgUfwH6eKKMbYH0wmfvgCFNOcqB+QOkU=
X-Google-Smtp-Source: ABdhPJy32E2Z+NO3V3+PcBDo7cFlWmWlxIiL66KiEt4RIRcOw4GV42DKjNzYVlC/w2roUjM7IAvkpANU4G3tOgVF6fI=
X-Received: by 2002:a37:a041:: with SMTP id j62mr3881289qke.155.1623937806260;
 Thu, 17 Jun 2021 06:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210322003915.3199775-1-mw@semihalf.com> <87k0ms1vmd.fsf@BL-laptop>
In-Reply-To: <87k0ms1vmd.fsf@BL-laptop>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Thu, 17 Jun 2021 15:49:55 +0200
Message-ID: <CAPv3WKcyQc5K5cMYc4POasiExh+usVsyf7007R1rkRiDVgh16A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ensure backward compatibility of the AP807 Xenon
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 17 cze 2021 o 15:14 Gregory CLEMENT
<gregory.clement@bootlin.com> napisa=C5=82(a):
>
> Hi Marcin,
>
> > A recent switch to a dedicated AP807 compatible string for the Xenon
> > SD/MMC controller result in the driver not being probed when
> > using updated device tree with the older kernel revisions.
> > It may also be problematic for other OSs/firmware that use
> > Linux device tree sources as a reference. Resolve the problem
> > with backward compatibility by restoring a previous compatible
> > string as secondary one.
> >
> > Signed-off-by: Marcin Wojtas <mw@semihalf.com>
>
> Applied on mvebu/dt64
>

Thank you!
Marcin

>
> > ---
> >  arch/arm64/boot/dts/marvell/armada-ap807.dtsi | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi b/arch/arm64=
/boot/dts/marvell/armada-ap807.dtsi
> > index d9bbbfa4b4eb..4a23f65d475f 100644
> > --- a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
> > +++ b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
> > @@ -29,6 +29,7 @@ cpu_clk: clock-cpu {
> >  };
> >
> >  &ap_sdhci0 {
> > -     compatible =3D "marvell,armada-ap807-sdhci";
> > +     compatible =3D "marvell,armada-ap807-sdhci",
> > +                  "marvell,armada-ap806-sdhci"; /* Backward compatibil=
ity */
> >  };
> >
> > --
> > 2.29.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> --
> Gregory Clement, Bootlin
> Embedded Linux and Kernel engineering
> http://bootlin.com
