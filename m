Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F7E6410D1A
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 21:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231698AbhISTfJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Sep 2021 15:35:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbhISTfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Sep 2021 15:35:08 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38DF9C061574
        for <devicetree@vger.kernel.org>; Sun, 19 Sep 2021 12:33:42 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id g1so58366661lfj.12
        for <devicetree@vger.kernel.org>; Sun, 19 Sep 2021 12:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rwG0cyjmLoqo6KWJPkoebUUL/eGcFniLZjCwbXyHXbY=;
        b=QttFeThvsBKoZD/JJSZUGcnMxxYovmSAcPaoFut8GAFLHLvS3IsTDF2HdKr15LPN9G
         dQm8BvfUECw8XeDSv0m1SrsY5DNjsXO5PhGldlbFPGCmZzLQf5f4vh/pFDbjSFvStSof
         bsHKoK1XDB+jm11SUX3KQZcdBcwrIoJ9zJT7u7lZPKBBvscShFCJI06s8Nc+Cbx5aPk8
         FLEsvge3r+dLL5c8eRyGYCib3lpmVuGEyJOQApoo1BXqM0ORTQDvz1f9o1dc6g3fwHqJ
         sn8PMwx45/tPsdybUcEWbNcsQsIJx3OV8yTmV/E9eKunE7RJcgj2CWzrCIKxFp+jpbCh
         0Qnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rwG0cyjmLoqo6KWJPkoebUUL/eGcFniLZjCwbXyHXbY=;
        b=S1GOy3f5skaQE1FVw73eeE+5PYL/Mb9GBzGKatt2/fcZnILMzyLfk31rJiYtyOrftE
         3ptD22RxXSS/tjXWE0oW8f+TMod4CoYu8O8z47o45gvML36ZmIdbb59FCCKonqF9LJkU
         EhW0SwvRNWiAvMAQEqF9+rn9Wz2PsRScksW/tga5UleY1xSFpbHTWrwgmOFytIq+0Ah7
         5KODsCuPlCpumLLO2ROvDVevcNOEyRFSztywJGzKrWYynd/pqo+NKDRqHE8Z9C0jjNSl
         MJ3L+bgT18A5Ea8zFG8pKZlzzAItjJAxUME/54dHUglWEvt50FUTDH43hfCPVuD0aCuc
         ntMg==
X-Gm-Message-State: AOAM532f+VutO5f56vk3L7lZmmwrZcnmNDYz69G3Pe3H7KiS4Qwd3mcs
        zlAPF9QCtPZniZgHDSz71mgKj/tocSBpW4YcuYYcV0whz5Q=
X-Google-Smtp-Source: ABdhPJzzLzWh+7RmTbVSRRZX4HMrJdrIe97VWJWO+B8mpVmZZvCUE6yjBm+7MlNH7sV61wIx/Rt//VfW14RHiA0ZsuQ=
X-Received: by 2002:a05:6512:10cb:: with SMTP id k11mr6357275lfg.72.1632080020480;
 Sun, 19 Sep 2021 12:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210830003603.31864-1-zhiyong.tao@mediatek.com>
 <20210830003603.31864-5-zhiyong.tao@mediatek.com> <CAGXv+5H5KnskzBYuqniBGQWBLriyFkBvVXEk1Cyg6XSmKMWP8w@mail.gmail.com>
 <b82ae857d8a3acf117721bb83d4dbbc44f612565.camel@mediatek.com>
 <CAGXv+5F=H3C9mB+uYJDmk8vPiKjWixFs8DF3Pk_Xh3x6Jpq6iA@mail.gmail.com> <74a3a96745e93c5a2392b8a39822c872fd468466.camel@mediatek.com>
In-Reply-To: <74a3a96745e93c5a2392b8a39822c872fd468466.camel@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Sep 2021 21:33:29 +0200
Message-ID: <CACRpkdZjqMk_gVpeZ2SqCijuOiiGfPOXHhBOdyL9Y+j750cGsQ@mail.gmail.com>
Subject: Re: [PATCH v11 4/4] pinctrl: mediatek: add rsel setting on MT8195
To:     "zhiyong.tao" <zhiyong.tao@mediatek.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Eddie Huang <eddie.huang@mediatek.com>,
        Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 16, 2021 at 11:31 AM zhiyong.tao <zhiyong.tao@mediatek.com> wrote:
> On Mon, 2021-09-06 at 18:09 +0800, Chen-Yu Tsai wrote:

> > > > > +       if (!found) {
> > > > > +               dev_err(hw->dev, "Not support rsel value %d Ohm
> > > > > for
> > > > > pin = %d (%s)\n",
> > > > > +                       arg, desc->number, desc->name);
> > > > > +               return -EOPNOTSUPP;
> > > >
> > > > I believe ENOTSUPP is the correct one. EOPNOTSUPP seems to be
> > > > network
> > > > related.
> > > >
> > >
> > > if we change it as "ENOTSUPP", it will report warning"ENOTSUPP is
> > > not
> > > SUSV4 error code, prefer EOPNOTSUP" when checking patch.
> >
> > The context surrounding this warning seems to be that ENOTSUPP is
> > hard
> > for userspace to understand. AFAIK the return code here does not get
> > passed to userspace? And the pinctrl core does check for EINVAL or
> > ENOTSUPP, so I think this is a valid use case.
> >
> > Linus?
> >
>
> Hi Linus,
>
> Do you have some suggestion for the warning issue?

Ignore the warning. We use this code in the pinctrl subsystem.

The pinctrl subsystem has no userspace API so that is certainly
not a problem.

Yours,
Linus Walleij
