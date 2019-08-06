Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED82B83A37
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 22:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbfHFUYs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 16:24:48 -0400
Received: from h1.radempa.de ([176.9.142.194]:51955 "EHLO mail.cosmopool.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725948AbfHFUYs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Aug 2019 16:24:48 -0400
X-Greylist: delayed 315 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Aug 2019 16:24:46 EDT
Received: from localhost (localhost [127.0.0.1])
        by mail.cosmopool.net (Postfix) with ESMTP id 99B499016E9;
        Tue,  6 Aug 2019 22:19:29 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
        by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id OX_YX0ogUjWU; Tue,  6 Aug 2019 22:19:29 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at (77.117.195.156.wireless.dyn.drei.com [77.117.195.156])
        by mail.cosmopool.net (Postfix) with ESMTPSA id 8F56D900A78;
        Tue,  6 Aug 2019 22:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
        t=1565122768; bh=H7xzku4e2YLqN3SBuk3ijWPNxtTPJhCKGCVBeLEo550=;
        h=From:To:cc:Subject:In-reply-to:References:Date:From;
        b=sXQsEfz/hR7dMhL9l3zWhcHlBiI0vpU230ZFjRbEq9fCaJE4D1bbyhGfswaxBiLU3
         KTVAMd3VBRaM/CCfwAGjFnjs4qCaOfGUJXhAZOJ+gw/B9Mgc0R9m1aqK3J63hvrJIi
         mGd9od4wtzOna19U0rr0ZnqVuKP6puqE3D4ds+BM=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
        (envelope-from <harald@ccbib.org>)
        id 1hv5vZ-0000jN-M8; Tue, 06 Aug 2019 22:19:25 +0200
From:   Harald Geyer <harald@ccbib.org>
To:     Vasily Khoruzhick <anarsoul@gmail.com>
cc:     Robin Murphy <robin.murphy@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
In-reply-to: <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com> <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
Comments: In-reply-to Vasily Khoruzhick <anarsoul@gmail.com>
   message dated "Tue, 06 Aug 2019 07:45:21 -0700."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2811.1565122765.1@stardust.g4.wien.funkfeuer.at>
Date:   Tue, 06 Aug 2019 22:19:25 +0200
Message-Id: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vasily Khoruzhick writes:
> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > as result 'perf top' shows no events.
> >
> > Does something like 'perf stat sleep 1' at least count cycles correctly?
> > It could well just be that the interrupt numbers are wrong...
> 
> Looks like it does, at least result looks plausible:

I'm using perf stat regularly (cache benchmarks) and it works fine.

Unfortunately I wasn't aware that perf stat is a poor test for
the interrupts part of the node, when I added it. So I'm not too
surprised I got it wrong.

However, it would be unfortunate if the node got removed completely,
because perf stat would not work anymore. Maybe we can only remove
the interrupts or just fix them even if the HW doesn't work?

Harald
