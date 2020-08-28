Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE2BE255835
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 12:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728760AbgH1KCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 06:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728954AbgH1KCm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 06:02:42 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E144C061232
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 03:02:41 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id 185so641204ljj.7
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 03:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gg8w7FyxS5olNPP0T/p1d8kcV4d3oP7pvIBcK4KxiMA=;
        b=yfZYGfWIaazhZpa4MiIfi8N1UYAwzELWPkKXWkeWzFH0MlcFmqxKiS+EAg2YC5+qd1
         r+P2+8DvIOePVKtMKrUFWOydQlKrMISbi6KPh/K1RN1eF79khiLQGP0aJL4yAEsHZIhu
         mLlsz7S6XqAjgLOoJe2zsL5z8EP92lbJAhoDJ2HAPkQQYf/4PR6erjtyFQvZ69ZDBFo8
         geVZUT/w4DpGsf2+/cq4vAElPCWJeF8mLbiSZcFNQTPNypLVCx/4XEO+h782UOPyvBvx
         6n8lsxYQb+0daon+8trpyWVpJN1BQcYSAou3pR+PM04gn6qcXNkxjP0Uruyr6u8BIUvE
         XuuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gg8w7FyxS5olNPP0T/p1d8kcV4d3oP7pvIBcK4KxiMA=;
        b=FX/tla+tlTOyPH6yYNu4krubbzz2EVKJ3zQj8a9rXmnoZ6N7u1HpTM96NgxmrX2enJ
         gHsUgAy6F6+B8gjSak4AFL4lxhRC9qEB9b/SQN/xRb2klj2BXJgfcsoQi4S1C6OjEmdJ
         LoI9Mk0lUF5OxNPtPFzFAXxcy6Z0Nj9yehAXvM7DEB/7VEOFYbtKPmYdJoRsgbm75fyA
         qUwUHRmR1Z92bPUZ50+DDFsBJetmnPYLJfNA/n2pdoxF4uTfSjKIExdt2Mx6eXfHAbWE
         fRYtNI+JHArarmsE9GGcNEFJ2aeKb9f8zWbwYYIRkmwoEtknB4Gje7id8Kne8l4VNRmS
         lQDw==
X-Gm-Message-State: AOAM531wNXdHLvgyTxEaAQA8fjxFBOFqawnCsOr41p9nkt7VEuIT8KJ3
        JcqBmeR+kOQkrsaqtfeV5+/PxxbBmMQ85TYHKvC92g==
X-Google-Smtp-Source: ABdhPJxGBDDIUGKlDHb7X+U9ZlUuxz6OTVqUpjGGNG25WaTWbUK0lfjyuNiH2UpzdtAP231LGoGkSdCBPbtNK7t7yF8=
X-Received: by 2002:a2e:b80b:: with SMTP id u11mr556502ljo.286.1598608960272;
 Fri, 28 Aug 2020 03:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1595572867.git.frank@allwinnertech.com>
In-Reply-To: <cover.1595572867.git.frank@allwinnertech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Aug 2020 12:02:29 +0200
Message-ID: <CACRpkdYOKOj4r-9U2iHCkdB74fWkm2J0xHqsnH_sE81SV5g1=w@mail.gmail.com>
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

> This patch set adds initial support for allwinner a100 soc,
> which is a 64-bit tablet chip.

Shall I commit the pinctrl patches (if Maxime ACKed) separately
or not? Once Maxime is happy, I am usually happy too.

Yours,
Linus Walleij
