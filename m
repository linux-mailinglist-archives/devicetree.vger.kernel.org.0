Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EEAFB6F4A
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 00:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388427AbfIRWRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 18:17:03 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:40564 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388415AbfIRWRC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 18:17:02 -0400
Received: by mail-qk1-f196.google.com with SMTP id y144so1167192qkb.7
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 15:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0PPXvm1cuehURA0N+v3AsPltzXl1NumjZq3ILhmZMms=;
        b=dMdPuvnuN5vp6xMI9L71hDEjwqbovQsooxEY4jGDiBlLoWo++CWSdUSKnVlCsFoOMZ
         8R76lKikTLgxWytd/PlmDEWQJojn+SgrdcPBATWd0xF0saUzsjEYCqg+8fkJK++UYX6J
         WbNN6250Qr3DBMubRt6RXyQUWvTAnGyKl9g/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0PPXvm1cuehURA0N+v3AsPltzXl1NumjZq3ILhmZMms=;
        b=ogBIkRgng9dACqmRcQb676z6PxOLjC6ZEdAVwBLb6KJj4wwxXJ+/xM/hjlr9+Nc7KF
         B/XZW27ZAn3Uc3yR4v7nXbFPdcEvC+SamfGW7DqlgB573d60ex1j0gFXpPRuzUhK1+5T
         cqWTp5ZkA0+4ssOQIUA3xuOfW2JnxZUN72f9Lc1RRv2U8mKGInz9OsDmnS87sFdg+Eob
         agB9L8EFhl33U74qB78RB4TPAUrUU2U3tW7mH/qaoJWk/K+oFqJ66y9j7VhcFrrjDdFY
         p8+2eD/ifJHzLfU/g5W5jTU/HPUE9MkybmhtQ4FJWgZhf11xseeytjeQYbtfWxc/1JHX
         F4Sg==
X-Gm-Message-State: APjAAAVYNBEpsKsVeQHKjAhh/+fAuFwvC6Q+elOTDnf4kkEmtCQNID6S
        kH7J6unOvj0pDH0FDXms0h8TIDTbE7RESW+eogcl4Q==
X-Google-Smtp-Source: APXvYqy1nYJoXPtXOCXEoxrsdeuTJFjJNPhHGVQajEt2tyc0sllovKQyX5fysKBk+IK5lBpHsUDyK2r1oeZ1s5t/0pc=
X-Received: by 2002:a37:4c54:: with SMTP id z81mr6666386qka.18.1568845019569;
 Wed, 18 Sep 2019 15:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081546.42716-1-drinkcat@chromium.org> <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com> <20190913181729.GB3115@kevin>
In-Reply-To: <20190913181729.GB3115@kevin>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Thu, 19 Sep 2019 06:16:48 +0800
Message-ID: <CANMq1KD++==d0Mb6T2gKU1T7c_MaedswOYdxqEqEKKUL1bxgiw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To:     Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Nick Fan <nick.fan@mediatek.com>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Douglas Anderson <dianders@chromium.org>,
        Dominik Behr <dbehr@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Rob and Alyssa.

+Douglas Anderson +Dominik Behr who may be interested (if not already aware)

On Sat, Sep 14, 2019 at 2:17 AM Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
>
> > > > The binding we use with out-of-tree Mali drivers includes more
> > > > clocks, I assume this would be required eventually if we have an
> > > > in-tree driver:
> > >
> > > We have an in-tree driver...
> >
> > Right but AFAICT it does not support Bifrost GPU (yet?).
>
> By the time MT8183 shows up in more concrete devices, it will, certainly
> in kernel-space and likely in userspace as well. At present, the DDK can
> be modified to run on top of the in-tree Mali drivers, i.e. "Bifrost on
> mainline linux-next (+ page table/compatible patches), with blob
> userspace".
>
> While the open userspace isn't ready here quite yet, I would definitely
> encourage upstream kernel for ChromeOS, since then there's no need to
> maintain the out-of-tree GPU driver.

That's an interesting idea, I had no idea, thanks for the info!

Would that work with midgard as well? We have released hardware with
RK3288/3399, so it might be nice to experiment with these first.

>
> ---
>
> More immediately, per Rob's review, it's important that the bindings
> accepted upstream work with the in-tree Bifrost driver. Conceptually,
> once Mesa supports Bifrost, if I install Debian on a MT8183 board,
> everything should just work. I shouldn't need MT-specific changes / need
> to change names for the DT. Regardless of which kernel driver you end up
> using, minimally sharing the DT is good for everyone :-)

Yes. I'll try to dig further with MTK, but this may take some time.

>
> -Alyssa
