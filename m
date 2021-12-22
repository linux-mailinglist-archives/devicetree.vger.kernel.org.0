Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 852E447D7E1
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 20:40:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbhLVTkL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 14:40:11 -0500
Received: from gloria.sntech.de ([185.11.138.130]:42506 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231352AbhLVTkK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 14:40:10 -0500
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1n07Sx-00053n-LH; Wed, 22 Dec 2021 20:39:59 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
Date:   Wed, 22 Dec 2021 20:39:58 +0100
Message-ID: <8156864.jFcTpQmkuZ@diego>
In-Reply-To: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211222104736.GZ6003@pengutronix.de> <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 22. Dezember 2021, 14:52:51 CET schrieb Rob Herring:
> On Wed, Dec 22, 2021 at 6:47 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Tue, Dec 21, 2021 at 10:31:23AM -0400, Rob Herring wrote:
> > > On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> > > > "vpll" is a misnomer. A clock input to a device should be named after
> > > > the usage in the device, not after the clock that drives it. On the
> > > > rk3568 the same clock is driven by the HPLL.
> > > > To fix that, this patch renames the vpll clock to ref clock.
> > >
> > > The problem with this series is it breaks an old kernel with new dt. You
> > > can partially mitigate that with stable kernel backport, but IMO keeping
> > > the old name is not a burden to maintain.
> >
> > As suggested I only removed vpll from the binding document, but not from
> > the code. The code still handles the old binding as well.
> 
> The problem is updating rk3399.dtsi. That change won't work with old
> kernels because they won't look for 'ref'. Since you shouldn't change
> it, the binding needs to cover both the old and new cases.

is "newer dt with old kernel" really a case these days?

I do understand the new kernel old dt case - for example with the
dtb being provided by firmware.

But which user would get the idea of updating only the devicetree
while staying with an older kernel?



