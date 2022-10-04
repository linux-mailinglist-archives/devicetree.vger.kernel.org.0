Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFA05F3F3F
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 11:13:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbiJDJNx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 05:13:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbiJDJNv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 05:13:51 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62D292D1D0
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 02:13:50 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id e18so17960076edj.3
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 02:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=D/eA6dEUnW7Jv9EnsDYTw9oSdfCmrRKnwCSuTK1iLK4=;
        b=Upeevv2LcpXpXijGFw9biyCPf3ooBnzKCnx9HkoRDYEKtBV6wZAnmiBgHDPrfygvy3
         HLqqIldd9MheMe9P3PbURB6hI6XqK+MQbdTD+s0ifyP0YrQSKPn4qTT7nbt/h3xMmhSH
         2X7KmdrP2xZPCBNiqN+oUB0fuUUxUQq6oRJngHHAZ8SlX+h3IRuMk5Ph6YRB3EvqNVun
         +2KVz3uZC0xBa2f8yXMRFQCsNDS8d3dcx6ZK3b7hD55IEepxxFQib50z/5lP7dNgak1i
         mgVeW7dZcJEi+qk0kBGDz0SKSlKZM1Kf6A4I62awY9/kydZad6F4axkLaeQ95ibVc8UN
         1/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=D/eA6dEUnW7Jv9EnsDYTw9oSdfCmrRKnwCSuTK1iLK4=;
        b=CoxpnqSIE6WvCsxbp3V7tKVtWpg72kT0f4OJcRChN3nbg1OX3qvJtB+uOjepDI0ECm
         ZECbluF+X7WnAbMRQCLZiuKU8ajdhnmp9ChFxn2Tr90oILSEn+tU7HyK9+YdNPXl0TMs
         ZyWNoddhvfNMrFzZBLeO+NqCBdE0OKFdIFnTZ5GBaeitpuNwezYBLx8hJ+LFIJ5TVg1W
         OUbQdtEyCvnrdZ2o3MrMZBeSqLwXo87sIbTvczH0IRKg5awS8wWEw+y4dmyIWc36A7TY
         BV4dmJbNglebaweqjDIT8cOpqR8R86rrOoeAj7Sm6viQ+0luBRihywhTG1R0SDhkgW6k
         CNFg==
X-Gm-Message-State: ACrzQf0JUc4+CohticKgK28sUU8RV5qYGjLypmLCVT3KIwvJtx1ZcTDK
        GXSOTo4CAxAif6xDLZdoSaHFC/7Jhjt2cHrpYQpLwg==
X-Google-Smtp-Source: AMsMyM7IDfq5yPgrVEdqWyITqmz5NIGLNtALJWFubooSQ9ADrb1IPN5du4hYEgIYHihv+bGFkluDZNzDXRbFLWqqxRA=
X-Received: by 2002:a05:6402:d0b:b0:458:a244:4e99 with SMTP id
 eb11-20020a0564020d0b00b00458a2444e99mr14608157edb.46.1664874828910; Tue, 04
 Oct 2022 02:13:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220929143225.17907-1-hal.feng@linux.starfivetech.com>
 <20220930061404.5418-1-hal.feng@linux.starfivetech.com> <166457324093.1075476.18009315584754055366.robh@kernel.org>
 <CACRpkdZmmMjVwpHxkJP+Ui0XJgrdZx8kpVybifbwkRB1_uMhAg@mail.gmail.com> <Yzv1uJbGMuFmRsRL@wendy>
In-Reply-To: <Yzv1uJbGMuFmRsRL@wendy>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 11:13:37 +0200
Message-ID: <CACRpkdZYXhc7phDmHrVwNzWWvjiQZHEsaQgdsbPF8JK-Yse_QQ@mail.gmail.com>
Subject: Re: [PATCH v1 23/30] pinctrl: starfive: Rename "pinctrl-starfive" to "pinctrl-starfive-jh7100"
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Rob Herring <robh@kernel.org>,
        Hal Feng <hal.feng@linux.starfivetech.com>,
        Rob Herring <robh+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org,
        Stephen Boyd <sboyd@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 4, 2022 at 10:59 AM Conor Dooley <conor.dooley@microchip.com> wrote:
> On Tue, Oct 04, 2022 at 10:48:38AM +0200, Linus Walleij wrote:
> > On Fri, Sep 30, 2022 at 11:28 PM Rob Herring <robh@kernel.org> wrote:
> > > On Fri, 30 Sep 2022 14:14:04 +0800, Hal Feng wrote:
> > > > From: Jianlong Huang <jianlong.huang@starfivetech.com>
> > > >
> > > > Add the SoC name to make it more clear. Also the next generation StarFive
> > > > SoCs will use "pinctrl-starfive" as the core of StarFive pinctrl driver.
> > > > No functional change.
> > > >
> > > > Signed-off-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> > > > Signed-off-by: Hal Feng <hal.feng@linux.starfivetech.com>
> > > > ---
> > > >  .../bindings/pinctrl/starfive,jh7100-pinctrl.yaml           | 2 +-
> > > >  arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts   | 2 +-
> > > >  drivers/pinctrl/starfive/Kconfig                            | 2 +-
> > > >  drivers/pinctrl/starfive/Makefile                           | 2 +-
> > > >  .../{pinctrl-starfive.c => pinctrl-starfive-jh7100.c}       | 2 +-
> > > >  .../{pinctrl-starfive.h => pinctrl-starfive-jh7100.h}       | 6 +++---
> > > >  6 files changed, 8 insertions(+), 8 deletions(-)
> > > >  rename drivers/pinctrl/starfive/{pinctrl-starfive.c => pinctrl-starfive-jh7100.c} (99%)
> > > >  rename include/dt-bindings/pinctrl/{pinctrl-starfive.h => pinctrl-starfive-jh7100.h} (98%)
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > >
> > > Would be good to pull this out separately and apply for 6.1. It's kind
> > > of messy with cross tree dependencies.
> >
> > OK I applied this for V6.1.
>
> Will this need to be done immutably so it can be pulled into the riscv
> tree in case this gets applied as a late change for 6.1:
> https://lore.kernel.org/linux-riscv/c5169131-486e-9808-ba48-b7abe1be6a99@collabora.com/

Always one finger on the fast-forward button have we? ;)

Rob's point was that I should apply this for v6.1 so that exactly
that kind of cross-dependencies and immutable branches could
be avoided for the v6.2 development cycle.

The merge window is already open, it's a bit late for completely
new stuff I think.

Yours,
Linus Walleij
