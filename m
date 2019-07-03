Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 852C35ED43
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 22:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbfGCUOl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 16:14:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:45146 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726490AbfGCUOl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Jul 2019 16:14:41 -0400
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 42A20218A3
        for <devicetree@vger.kernel.org>; Wed,  3 Jul 2019 20:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562184880;
        bh=oMl/LQyGHN1AF+7Z0LcSUB2ZY6jJhk+OtQa8gTPvMd8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JExDYoUGSIHpp8Ba0Bvyy2oigl8V00RdqmBNTbEIHvVrhuhItqAjNpeb7yrk9fsfK
         jsDkfSGe/kbApy1fmiWiejgHR4IfemyckI2CzR8zIGra0GHuCrub0SHiWTNwiYRPgh
         GRx6O9cqnDG9CelEZeZfLW1926q6zqDYP6hvCZCc=
Received: by mail-qt1-f172.google.com with SMTP id z4so2044852qtc.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 13:14:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUk8i5czI5mmQruXyW8MPV2cjYWA7WplTQy/BqXcyN6gyRMGHrR
        coZkOP1ChwVUmFn/96OHCyVViwGUB+X6oFi+YQ==
X-Google-Smtp-Source: APXvYqzDfM/FmuUxrf8xMBTjWm+aAhJAZQCnB4xKYdbfHIo9y9o1hcT/sOhnyq8m4kCxXIzFduiX56YVVWzcIW9y/8o=
X-Received: by 2002:a0c:baa1:: with SMTP id x33mr34335310qvf.200.1562184879520;
 Wed, 03 Jul 2019 13:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
 <20190703095513.12340-3-maxime.ripard@bootlin.com> <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
 <20190703141300.duhk2qj3m5qpkp3h@flea> <CAL_JsqLr32VK=HSeY52NCkZj-gBfLhTWu5eheXWk--fL16zBYg@mail.gmail.com>
 <20190703195750.vupb3r5xoujjw6pe@flea>
In-Reply-To: <20190703195750.vupb3r5xoujjw6pe@flea>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 3 Jul 2019 14:14:27 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+KKvBhzq3uxuaU6tvoW4Sgu=4UnBP-qAp34FRw6bOkwA@mail.gmail.com>
Message-ID: <CAL_Jsq+KKvBhzq3uxuaU6tvoW4Sgu=4UnBP-qAp34FRw6bOkwA@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: net: mdio: Add child nodes
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 1:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Wed, Jul 03, 2019 at 08:20:32AM -0600, Rob Herring wrote:
> > On Wed, Jul 3, 2019 at 8:13 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Wed, Jul 03, 2019 at 07:53:43AM -0600, Rob Herring wrote:
> > > > On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
> > > > > property. Make sure that's validated as well.
> > > >
> > > > I don't think this is always true. I seem to recall there's some
> > > > timestamping devices connected via mdio.
> > > >
> > > > In any case, it's not a long list of names, so we can probably just
> > > > enumerate them as needed. Does this generate any warnings?
> > >
> > > I did a run on both arm and arm64 Allwinner DTS, and it doesn't.
> > >
> > > I can do one on multi_v7 / arm64's defconfig, but that's probably
> > > going to be a bit hard to tell from the noise of warnings.
> >
> > I do allmodconfig because that will build all dtbs. You can run checks
> > with a single schema like this:
> >
> > make dtbs_check DT_SCHEMA_FILES=a-single-schema.yaml
>
> Right, of course :)
>
> I just did it, and apart from a few arm32 broadcom boards that don't
> have the right address-cells / size-cells (probably false positive due
> to the fact they use mdio@something as node name), there's no other
> warnings.

Actually, they look like real errors in the DT with the values of
address-cells / size-cells swapped. But the node is disabled in the
ones I looked at.

> I'm not sure what you were on about though. If there's another node
> than an ethernet phy, we won' have any warning since we don't have
> additionalProperties to false.

True. I guess I wasn't thinking through it... Anyways, I applied it.

Rob
