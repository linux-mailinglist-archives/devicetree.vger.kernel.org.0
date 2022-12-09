Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BCB6648194
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 12:26:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbiLIL0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 06:26:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiLIL0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 06:26:08 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1854367235
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 03:26:08 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id g4so5133463ybg.7
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 03:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CeH76cIn44BHozvkORl6+VsQ+27Ui3VZGR1dvHq/zpw=;
        b=IY+agMYTzfHBx+3Qkj4f7wSGEXcVTNzwuJ17QNdQUvenElRs5D4sYRUzbCDlz4dqoY
         7ZGU1BWq4Kyz8FchqdvJ6Pj2Ee8jsVKRw5sYsH4aYLAY9IOtXBMfDgPrdzKNK1IcJ1bC
         M0mropxzc4utuKa0eeuQykt9I8qP2aJ6wuVv1lB+ElriT9oRsxWIO9kwX7uB4uSDUSgC
         tAzY0XbBn1ewdGat06eQNwY6+iiLzplRzZ6R3UWhQ2k549n4HI0349rIumKcZuEGjquy
         4TIq4DLSk8qAGThvkLIGC/RosPo0y+FmvkK61h0sPKRESAby048mN+VuvCfCEHoRMFke
         ymWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CeH76cIn44BHozvkORl6+VsQ+27Ui3VZGR1dvHq/zpw=;
        b=ar7pd9fcJMsAykaJyuLs4/+bNwgVUY9X2pSYZBncFyoSLBrSdwyPw4Cjju07dSBYKf
         /mpGgrrFDt43OWuJV3Fcs3hXIOlyFfCuTJ3pTe1RNqT5Gr6W+vxXXJTqcWclkv5UCD4g
         GXleQ9RbBx3BYBTgZFHj4xM38hqmUtELSuAOSS1esZst+n4zx6r+MpFlbVdLZ+gQYi3/
         2vxN4Mf6WBwgiQuLxwA9xkdkPvBgWeW7Zvj/r9qAVKfSj2pW0Auc1fkCxI21/3VzrN8+
         8c24uwE4MVp07HjKVxpREGpk0OQmZW6Duo9wq05IOrOAZ/79tD0Wl54OFt97qStTGBS4
         e59Q==
X-Gm-Message-State: ANoB5plIF87UjMELU2c754T3eyWxXiFtVdGYV4k1+cS2n8X8+7IrEN+C
        w5ODcTf8JTo6bCKP1szs8CyJszTrnm1+r0dDTDl6uQ==
X-Google-Smtp-Source: AA0mqf7jyZWqtibAsNuf2QqSyrQUnzfxgWM+yG68w7fvn6r/Tssjws87Qyze9unNdcrV/6P3sBiLoNu6Lqm6fVGGW3s=
X-Received: by 2002:a25:7648:0:b0:6fe:54d5:2524 with SMTP id
 r69-20020a257648000000b006fe54d52524mr22109411ybc.522.1670585167318; Fri, 09
 Dec 2022 03:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20221128054820.1771-1-clin@suse.com> <20221128054820.1771-3-clin@suse.com>
 <CAOMZO5D0wJcfbFsvUN3K17S5F4zT2Yf8yQB+wMKQPzuMBitrpA@mail.gmail.com>
 <CACRpkdaKYFbXRcV1WgDEiYPEwzNAZq-AqAHpWd1rJyW-h369dw@mail.gmail.com> <Y5K726npjKAO4sIq@linux-8mug>
In-Reply-To: <Y5K726npjKAO4sIq@linux-8mug>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Dec 2022 12:27:28 +0100
Message-ID: <CACRpkdbyfp3FwUfS7aDCLmsyM-3Xc1GfyX7_jFcuF1dhf+knQA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: add NXP S32 SoC family support
To:     Chester Lin <clin@suse.com>, Saravana Kannan <saravanak@google.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>, s32@nxp.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Larisa Grigore <larisa.grigore@nxp.com>,
        Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>,
        Andrei Stefanescu <andrei.stefanescu@nxp.com>,
        Radu Pirea <radu-nicolae.pirea@nxp.com>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Matthias Brugger <mbrugger@suse.com>,
        Matthew Nunez <matthew.nunez@nxp.com>,
        Phu Luu An <phu.luuan@nxp.com>,
        Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 9, 2022 at 5:39 AM Chester Lin <clin@suse.com> wrote:
>
> Hi Linus and Fabio,
>
> Thanks for your time to review this patch!
>
> On Thu, Dec 08, 2022 at 10:37:36PM +0100, Linus Walleij wrote:
> > On Thu, Dec 8, 2022 at 12:04 AM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > > In other imx8m pinctrl drivers we pass:
> > (...)
> > > > +module_platform_driver(s32g_pinctrl_driver);
> > >
> > > And we also register it in arch_initcall() level.
> >
> > Do you really need that though? This driver certainly does not.
> >
> > I was under the impression that recent changes to the probe-order
> > logic has made most explicit arch_ etc initcall orderings surplus.
> >
>
> Could bool/tristate options in the Kconfig be the key point?
>
> Based on current design I prefer to build the s32g2 pinctrl driver as built-in
> rather than a loadable module. IIUC, when the driver is not built as module
> then the initcall ordering should still matter.

It is true that if you compile something into a module then all initicalls
are the same: they are called when the module is loaded.

But the remaining initcalls used to be assigned to core, arch, subsystem
etc in order for resources (such as clocks, regulators or pins) to be
available before the drivers that need them get probed.

However there was first deferred probe to partially solve the problem
and recently a large and refined series that use the dependencies in
the device tree to resolve probe order.

Saravana Kannan has been working tirelessly at this, issueing
git log --oneline --author="Saravana Kannan"
you will see the scope of this work.

Yours,
Linus Walleij
