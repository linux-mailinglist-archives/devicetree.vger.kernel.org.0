Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BE5B47D333
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 14:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245485AbhLVNxJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 08:53:09 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:38948 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234159AbhLVNxI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 08:53:08 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 58D64B81CA7
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 13:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F080DC36AEB
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640181186;
        bh=/KzC2xyljtBoaNohEViyGh73ITduqs9Zk/DPszDRrQU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ia0pPt+rlVudpSPeHSpHCLgV00gTuEfnWtKEjzAFbb6CM9b0qDILrebPBuXhlNuak
         wGvfSvBs57gdp/KhjOStDSWAgqqMrnVAdsbH/LXwLeFRwfsYmK6zLMDlNZAEemRiJS
         ax6V+Wi2KgPrXWXJJUBTJIJcIimLzYSDx5ijlmM1FGEPxfkXTd8QHqY4NXF/bBz14v
         3pKjq6AoMlGOTfH1GsIe69/PNgOG9DXTQZx/WLys7AVjLZZXcl/28TmHI6ahLeInOw
         rf2+BdwkV1FYd9yEax9JV6MTi7IJBrHfqoDgFsHvvW5aRU1K5dVJ0hDkDARC2lc/8a
         ux5/LJ5+MMpGg==
Received: by mail-ed1-f42.google.com with SMTP id w16so8916816edc.11
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 05:53:05 -0800 (PST)
X-Gm-Message-State: AOAM531lkYLzPg4wNN33QyH/408RBWjNmSKmfDt851QNlluUDlvlxqZp
        dEe4U0OxLwjuk8Id5KxOvfrf6/HzxNK5WEfcOw==
X-Google-Smtp-Source: ABdhPJwLfi+vd0gUpA9WEffP9MKdcCMUgOls/PZATt71sVDW2zlwKzs9m5myZYELczFdRRkgPlO3+bbg0IhlzRSpnbM=
X-Received: by 2002:a05:6402:350a:: with SMTP id b10mr3000857edd.89.1640181184247;
 Wed, 22 Dec 2021 05:53:04 -0800 (PST)
MIME-Version: 1.0
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-9-s.hauer@pengutronix.de> <YcHlO/m/tGEEMnX9@robh.at.kernel.org>
 <20211222104736.GZ6003@pengutronix.de>
In-Reply-To: <20211222104736.GZ6003@pengutronix.de>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 22 Dec 2021 09:52:51 -0400
X-Gmail-Original-Message-ID: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
Message-ID: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 22, 2021 at 6:47 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Dec 21, 2021 at 10:31:23AM -0400, Rob Herring wrote:
> > On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> > > "vpll" is a misnomer. A clock input to a device should be named after
> > > the usage in the device, not after the clock that drives it. On the
> > > rk3568 the same clock is driven by the HPLL.
> > > To fix that, this patch renames the vpll clock to ref clock.
> >
> > The problem with this series is it breaks an old kernel with new dt. You
> > can partially mitigate that with stable kernel backport, but IMO keeping
> > the old name is not a burden to maintain.
>
> As suggested I only removed vpll from the binding document, but not from
> the code. The code still handles the old binding as well.

The problem is updating rk3399.dtsi. That change won't work with old
kernels because they won't look for 'ref'. Since you shouldn't change
it, the binding needs to cover both the old and new cases.

Rob
