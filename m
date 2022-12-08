Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B44FA647817
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 22:38:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229940AbiLHViD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 16:38:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbiLHVh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 16:37:58 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD1A27143
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 13:37:48 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id g4so3283306ybg.7
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 13:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G41Op/lXG3g8Cnic6c+y5fMoL1kfzSLedyaKM6ngDWk=;
        b=VpKYfGNZb5NLOpCp/ra9Y2Ulw55z+QsCoke03jVwQYoK9q/V9V4MH4UDvmU/KT5E5y
         xzaa2CrDyT8Rafr7S87MxrWHIp775KtLJccKp/ErlERK1ai8gDR1KucY4E0gS5vrC8ue
         o2a2uxAXzDyaZn6KYzvBhrGGHgU2OYNyhOgLehAiwyGEA2DxZqfqTz/ivnVp8an9p6qf
         4lnkXsUHdIeDkebmwL4Wpu0kkB+/tkL8OqnH0ExiDEFtVN1z8BIeuA4+asytJtsZBt5h
         X5+Cm5oms9BQOlb8Gfa4nskF6afkGCb/Fjw6V5SujsBw7hhQtl9yEJSbcxlJ6kfxjqFg
         m4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G41Op/lXG3g8Cnic6c+y5fMoL1kfzSLedyaKM6ngDWk=;
        b=g6auK9F7BpCilPX/0j5Jo+cIwLsDy9V54qOr4sBJYLcaL9I/A0squlwhsn4Lo+LvId
         rJ4+6t1Zrvd2ILtAMPk4e0SMhe+9wGajSS/7IuzaN+cjSX0aUTg7HV7S28QeUUnDTJT+
         tRJAex6dsqi5a9RMyo8X7ne8tbDcCwOoXd/mRz3W9DqrJWkfEZRc+irzzF+kNkKJpFHY
         P8zw+4xe8i3b3DRB46Ntg4htdQRFS7/1/k+a7n62PDQESk5ctQIsHh986grQT6SVfTel
         yE+d4nnbjoLEoinGH1+/Qh6jABpUWivb/IqlLqqXW9Ir+DfK20YRh2e3rLIH+dTqP8VM
         0TTQ==
X-Gm-Message-State: ANoB5pl2aP9WqgoiZAQSzasvQn+EvEcqSHw03M6GYNOpk1jq4wBtGVrD
        P6pIAxI3upL40QOrgH3DegWMqH7L20e/vpmqqGPRjA==
X-Google-Smtp-Source: AA0mqf7rPAESFFVwhyJ9HkuCCRFFiTbnhyEA/d6xsWGCjrmTSVvR3DD4aRUtEyo49QuIvzEJhbumeD0JLnToI4RKBHw=
X-Received: by 2002:a25:ac2:0:b0:6e9:3d7a:8012 with SMTP id
 185-20020a250ac2000000b006e93d7a8012mr69106030ybk.449.1670535468018; Thu, 08
 Dec 2022 13:37:48 -0800 (PST)
MIME-Version: 1.0
References: <20221128054820.1771-1-clin@suse.com> <20221128054820.1771-3-clin@suse.com>
 <CAOMZO5D0wJcfbFsvUN3K17S5F4zT2Yf8yQB+wMKQPzuMBitrpA@mail.gmail.com>
In-Reply-To: <CAOMZO5D0wJcfbFsvUN3K17S5F4zT2Yf8yQB+wMKQPzuMBitrpA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Dec 2022 22:37:36 +0100
Message-ID: <CACRpkdaKYFbXRcV1WgDEiYPEwzNAZq-AqAHpWd1rJyW-h369dw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: add NXP S32 SoC family support
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Chester Lin <clin@suse.com>, Dong Aisheng <aisheng.dong@nxp.com>,
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

On Thu, Dec 8, 2022 at 12:04 AM Fabio Estevam <festevam@gmail.com> wrote:

> In other imx8m pinctrl drivers we pass:
(...)
> > +module_platform_driver(s32g_pinctrl_driver);
>
> And we also register it in arch_initcall() level.

Do you really need that though? This driver certainly does not.

I was under the impression that recent changes to the probe-order
logic has made most explicit arch_ etc initcall orderings surplus.

Yours,
Linus Walleij
