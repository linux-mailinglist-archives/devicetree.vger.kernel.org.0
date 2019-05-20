Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0CB822A9E
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 06:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726194AbfETEUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 00:20:33 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:35065 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726053AbfETEUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 00:20:33 -0400
Received: by mail-vk1-f193.google.com with SMTP id k1so3540255vkb.2
        for <devicetree@vger.kernel.org>; Sun, 19 May 2019 21:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k6ZY4dlYUgWC9xMv7mBWW2Rp/GiH/mIF5ibb01bxTfc=;
        b=lkT5TGTLMDU8vkjvDn8uYnIiEn1Srn/zCq28Bk3yu05hPFzq/J9WIfb1mz/Cnl3ddv
         1SUJ9vdF+sPLGGg3qdcdoozj6BxD1t8bKnXJpIYaQdqFm9s8ewTI4a5Fxioq385OYrx5
         0B/w+2wh4wkMzgXigoUZ4YNWOae2ih6l6lL0J3Eg+aHFKYI1BbNhqg+zUtcChHcI+gCY
         P3+ZBuoQ8WxqSUb719V21IJFT6itZqAOgUhVHuZiHfBbYfOENKusS4d2DfNk6ErmVxT3
         4dnSK7TYrBATk/uNDMzrgemZzr+oTrcIfN/AJCeMiCRcg/E8H6IKyNvVJLKeiMLE4d/I
         rOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k6ZY4dlYUgWC9xMv7mBWW2Rp/GiH/mIF5ibb01bxTfc=;
        b=gibbJLRATohYz4S+0ao8GueDk8JWQGXETZMSzcyai/eN0rhVtb0KMoeHERp/5owtDV
         GnrzLKoGSq0nSSmUpywY9vHicfSoq5zngFrm4CrenVEEiL8oc2HgOuv3nb0UW/uK9PWK
         HPznzoEagWK5XiTFrJV9/4iOkyQCoYdIiYuQTQJqw5ZxmBNpCBXhu/e8NGmVmjxiKVKQ
         F/cE6HS5Lz6x7I9J5s5eIusTBWx4nX6RuBg7ekqv7DM+OPo++wrTG3u6IBJTmLpVWnc6
         3nW0CFKZPzajSOsgTomwOEaFhV0nm0PqiYFzyUrTeFOwbBmPV6Lwgpvn7XDauOZ+j6m/
         F2IQ==
X-Gm-Message-State: APjAAAXNQbEaDzgbHHGxcY3xrqkQ3pqdhEkdh8YRLLEMIackEAV0hwcD
        cAH0Flsm4B21xxnY2jZTf6E+vX/2Qzgl8i2gCHmGiw==
X-Google-Smtp-Source: APXvYqy7AMlG3BgYDRhZy+4VIWVyd9wPF+kIWSEqvT5b9pFPI1+c1u6xaot/nbRBfv0yjmLCjltat2Eli5Yy4dPibj8=
X-Received: by 2002:a1f:3dc9:: with SMTP id k192mr5787006vka.74.1558326032043;
 Sun, 19 May 2019 21:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
 <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com> <20190516130720.GE14298@lunn.ch>
In-Reply-To: <20190516130720.GE14298@lunn.ch>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Mon, 20 May 2019 09:50:21 +0530
Message-ID: <CAARK3HkPuvsoVh=b2Kn43ubhME6vqpFLoboBM8OGOnb-d3FN8A@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Thu, May 16, 2019 at 6:37 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, May 16, 2019 at 10:38:40AM +0530, Sagar Shrikant Kadam wrote:
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:previous polling mode support in mainline
> >
> >       commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/i2c/busses/i2c-ocores.c | 34 ++++++++++++++++++++++++++++------
> >  1 file changed, 28 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
> > index aee1d86..00ee45c 100644
> > --- a/drivers/i2c/busses/i2c-ocores.c
> > +++ b/drivers/i2c/busses/i2c-ocores.c
> > @@ -27,6 +27,7 @@
> >  #include <linux/jiffies.h>
> >
> >  #define OCORES_FLAG_POLL BIT(0)
> > +#define OCORES_FLAG_BROKEN_IRQ BIT(2) /* Broken IRQ in HiFive Unleashed */
>
> Hi Sigar
>
> BIT(1). Don't leave a gap.

I will remove the gap and update this in V4.

Thanks,
Sagar
>
>         Andrew
