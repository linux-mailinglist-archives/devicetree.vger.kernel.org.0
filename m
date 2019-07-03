Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6D745E66C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 16:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726490AbfGCOUp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 10:20:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:55684 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726305AbfGCOUp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Jul 2019 10:20:45 -0400
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DCA8C218A4
        for <devicetree@vger.kernel.org>; Wed,  3 Jul 2019 14:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562163645;
        bh=QWjT4GzOjH00zyktVm6R55ssb+vT7SE+Ef0O/VxNxHw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=is4xm6ekmXg85NYJusHhNYfy95md+YN0UwFu2dIolvZbuKcJiNhSzT+vgIBj4UhfY
         E0HwUP20s34pUDTkV2AhLCsBdbBukr9vaaS3cS3c5jDR2BBvbTJsUlO9S9FPHms82A
         81ZsRTiXLRb8HNjyMFdqWMaJ5FG1pcl6Vx8pZsvI=
Received: by mail-qk1-f180.google.com with SMTP id m14so2829635qka.10
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 07:20:44 -0700 (PDT)
X-Gm-Message-State: APjAAAXyDQyKP0ci/YV+rOC24Oe6oubp5fgE+NTX0tvCRXGXFipvk3ko
        cbrmD2ToolzcfeftMDoaaLrsmElrfoq657JljQ==
X-Google-Smtp-Source: APXvYqySQzOUFI8HqQPrezXfROcKI0J/xIwPGDWt21SqUJkuixvQ2yl/HbpLbfB3T9z27qslIq2P+vUs7irHBW2JBY0=
X-Received: by 2002:ae9:ebd1:: with SMTP id b200mr31548850qkg.152.1562163644159;
 Wed, 03 Jul 2019 07:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
 <20190703095513.12340-3-maxime.ripard@bootlin.com> <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
 <20190703141300.duhk2qj3m5qpkp3h@flea>
In-Reply-To: <20190703141300.duhk2qj3m5qpkp3h@flea>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 3 Jul 2019 08:20:32 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLr32VK=HSeY52NCkZj-gBfLhTWu5eheXWk--fL16zBYg@mail.gmail.com>
Message-ID: <CAL_JsqLr32VK=HSeY52NCkZj-gBfLhTWu5eheXWk--fL16zBYg@mail.gmail.com>
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

On Wed, Jul 3, 2019 at 8:13 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Jul 03, 2019 at 07:53:43AM -0600, Rob Herring wrote:
> > On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
> > > property. Make sure that's validated as well.
> >
> > I don't think this is always true. I seem to recall there's some
> > timestamping devices connected via mdio.
> >
> > In any case, it's not a long list of names, so we can probably just
> > enumerate them as needed. Does this generate any warnings?
>
> I did a run on both arm and arm64 Allwinner DTS, and it doesn't.
>
> I can do one on multi_v7 / arm64's defconfig, but that's probably
> going to be a bit hard to tell from the noise of warnings.

I do allmodconfig because that will build all dtbs. You can run checks
with a single schema like this:

make dtbs_check DT_SCHEMA_FILES=a-single-schema.yaml

Rob
