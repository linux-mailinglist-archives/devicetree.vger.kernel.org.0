Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 279042C7B68
	for <lists+devicetree@lfdr.de>; Sun, 29 Nov 2020 22:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728071AbgK2Veb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Nov 2020 16:34:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727992AbgK2Vea (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Nov 2020 16:34:30 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54CB4C0613D4
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 13:33:50 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id s9so13985175ljo.11
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 13:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DRks1S+Ljz02h+7aEMkPQyYH0KJUMNRRjQT6vkjrJ6U=;
        b=LzYwWyNh2aq60HnaalbW2E/tfDV3QS5ABPetwv/LjVocBlaMX7p8EW6wSpLS5A+xb6
         3RYtKYPxh3tlC4eQbu6yQKmPtsDYTe+XHrG3aefbkfkGpkyuGSceFP20lxofOmU62OuZ
         jCDZzZvOeeb9rr+liyzgPtp15kW0t5oMmCWPVHMtFmJUzKwYJoSvUw+IOgwl+OIitkEt
         0GYNtHEFzYR21Fqyfr9LrWkLBvuAdd7WcEJWkhAd5/ypnjcyODBcG34cskFi3J5BnKCE
         bwGyj3H502ljkfysjViKkFi0CqGDKaKGdxv8ZMvvVu2cqiGIfoSS8QAhEPPPNcA5KDjB
         cyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DRks1S+Ljz02h+7aEMkPQyYH0KJUMNRRjQT6vkjrJ6U=;
        b=WSe8D2EOqkgf52c15uShBBgCx+fUeGcCvt5rNCflJ3b7+s8M8kmCmmoLWeHu+SI9zY
         5wRS52jWw5uSfsNHxh0168lFTasOuKjsGb8SQQYIkTe+LJ3vXVLIXJZtkcwAmnDC58LZ
         oTUf3vjx2JmD/a1PslDn43DUqJBY9auJuVVGDaahN5Bh+pV8PDNZPcfpiJgcPUQ4Yjwv
         dFWGXHrm/ZbDS5hmVnvYUl5Ak/0LRJ4l1ozTpFxfFtzWQBzKO/01GjwgX8y7HFwRy6nG
         9N6GAbLRctKwPQ1yWGbpdXIsnVs1FTFthyocxpd6a8/CDJxoeLNvviR3x5Z5fiLcKDLG
         mInQ==
X-Gm-Message-State: AOAM53136g1zpXXvVnhonE5bq2+pikMEfB1I0zDMimEzM1RCG2734stI
        2Yy2Hib4guYC7jfRYDGXktf7B6dRwVLnrw6/iD/b2Q==
X-Google-Smtp-Source: ABdhPJytWDlyUMuTJm2jW8TQXYrQA7Ue6rxAsqM+YqSfqeqX2hNWQDHsQOsrBzNYb3DWeZ5mYjjq9y/2I8HLd94BvcY=
X-Received: by 2002:a2e:321a:: with SMTP id y26mr7756884ljy.293.1606685627784;
 Sun, 29 Nov 2020 13:33:47 -0800 (PST)
MIME-Version: 1.0
References: <20201107081420.60325-1-damien.lemoal@wdc.com> <20201107081420.60325-21-damien.lemoal@wdc.com>
 <CACRpkdZhOxz5NhrkFxZ5G4aOrmBoAcQodOvqzNROQtXpHVQGDQ@mail.gmail.com> <CH2PR04MB65228DE061918A4D2A08A0CFE7FB0@CH2PR04MB6522.namprd04.prod.outlook.com>
In-Reply-To: <CH2PR04MB65228DE061918A4D2A08A0CFE7FB0@CH2PR04MB6522.namprd04.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 29 Nov 2020 22:33:36 +0100
Message-ID: <CACRpkdbA_JMiyraKC_3WT26mMUxfuLD=Q_HREmbEB=yNPpuHjw@mail.gmail.com>
Subject: Re: [PATCH 20/32] riscv: Add Kendryte K210 FPIOA pinctrl driver
To:     Damien Le Moal <Damien.LeMoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 24, 2020 at 9:53 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
> On 2020/11/24 17:43, Linus Walleij wrote:

> > Would also be nice if the maintainer could add some comments?
>
> What do you mean ? I do not understand. scripts/get_maintainer.pl indicates that
> you are the maintainer of the pinctrl drivers subsystem.

Sorry I thought we had a RISCV driver already, and we don't
so this is cool.

> Do you mean adding an
> entry to the MAINTAINER file for this driver ? I can do that and put my self as
> maintainer. Or do you mean you would like a comment from Palmer (riscv arch
> maintainer) ?

That would be nice. Whoever will enthusiastically review patches to
this driver and make sure it works and get modernized should ideally
be listed as maintainer. I suggest you list yourself.

The only input I want from the RISCV arch maintainer would
be on this code:

+/*
+ * Most devices on the K210 SoC depend on pin mapping changes to initialize
+ * correctly. So initialize this driver early as part of the post core
+ * initialization.
+ */
+static int __init k210_fpioa_init(void)
+{
+       return platform_driver_register(&k210_fpioa_driver);
+}
+postcore_initcall(k210_fpioa_init);

This is a bit nasty and we do not recommend it. But I will accept it
if the arch maintainer claims it is necessary. What happens if you
just make it initialize at driver level?

Yours,
Linus Walleij
