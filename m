Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C00D267994
	for <lists+devicetree@lfdr.de>; Sat, 12 Sep 2020 12:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725888AbgILKgn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 06:36:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725857AbgILKgg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 06:36:36 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEFFFC0613ED
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 03:36:34 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id b22so4841296lfs.13
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 03:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RF8m2xC4JB4qyW3nCqkmJE2v3IVbH777DHP9r98chVU=;
        b=ZdAifYhj2ckBuaqC7gwZR7Hupf7v18XeH6Ksh6kg+yA5O8P0Qnbfx9ZEFfkqW0fTOy
         lNszaKVc2NrsIDl1Egk7zLIrGNG0Ldo9UZJUcVS9IZVJkzXjn8CU8VVFivI17aeYfd+T
         Jw9pNYWslgFu/FSgrEuYYb4RkkkzEPjBhUexfGTSPM0KnPb3qZxqBmZdq/2k3u04i6Qs
         4Kst372V4IhEqb/0UqRTctNzZNV3duEfTaf7tKIlJl1AgMGryVizSQvmm6QuyWqLotes
         ToifTRd3uH4Bz/BY28YZp5rWMeB9KXGmdnWQn1rhIugm5IKnafz7O0t1dTBhevtbIr6X
         wZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RF8m2xC4JB4qyW3nCqkmJE2v3IVbH777DHP9r98chVU=;
        b=axWtwpkXZHH7vfbhSOTLAbMwr3T6DK1L0cfk+13uT4xOKo9Zp83aU/zBp0ekHCO9Pt
         m7TY56jYirDcMLCw3xZcnHngm9ubEH98csAyjFInHKX/dyxBEF/T9Sa9xWoI3J5qOu9e
         VIopkf7IXx2ifghj7eWTkMkQ24N/njn+Bp5CcUQcz86WWImuuPhiDBlHos+zL4oYbFHi
         FCrNcj0LS1PgJcUdJvFszQ5rJC+3+1lnqoePwf5bFUHSDh1X5rPSgZGy6eNw2jMwAJCZ
         tvTYmViRAqC2cixsbCcuQcEoR14/JZOo/6ZMcGx+PF9xQurml/ZPLxZOI7yrW7r4fvkZ
         oU3A==
X-Gm-Message-State: AOAM5304T0B3buPBpDbAJR/a0FeG4bq+LSgLuc72DUIYawAMZuWGXTso
        VDUgLVyfpJOBPqK0TMJL86qQqRio2Popvi3O3ap9og==
X-Google-Smtp-Source: ABdhPJyoD2XPyfxM3troBciEM2Mczg6M+QUgoHKVC37fUndkhJdOxvWEyjUmNDBgtw0N6y9hRBKROUhaDN/qwicI9KA=
X-Received: by 2002:a05:6512:370b:: with SMTP id z11mr1453851lfr.571.1599906993330;
 Sat, 12 Sep 2020 03:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1595572867.git.frank@allwinnertech.com>
In-Reply-To: <cover.1595572867.git.frank@allwinnertech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Sep 2020 12:36:22 +0200
Message-ID: <CACRpkdZqNSGkDCm6HGpS63iWp5b4WrZpdqz8QEeu4CVzkhGQ=Q@mail.gmail.com>
Subject: Re: [PATCH v5 00/16] Allwinner A100 Initial support
To:     Frank Lee <frank@allwinnertech.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <maz@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Frank Lee <tiny.windzz@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Lee Jones <lee.jones@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ondrej Jirman <megous@megous.com>,
        Corentin Labbe <clabbe@baylibre.com>, bage@linutronix.de,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 24, 2020 at 8:53 AM Frank Lee <frank@allwinnertech.com> wrote:

>   dt-bindings: pinctrl: sunxi: Get rid of continual nesting
>   dt-bindings: pinctrl: sunxi: Add A100 pinctrl bindings
>   pinctrl: sunxi: add support for the Allwinner A100 pin controller

These three patches (3,4,5) are now applied to the pinctrl tree.

Yours,
Linus Walleij
