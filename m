Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E1B327C8A7
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 14:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729333AbgI2MDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 08:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731811AbgI2MDf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 08:03:35 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3477CC0613D3
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 05:03:34 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id n22so6049296edt.4
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=60xpqL1mFMP5mTEXMd+Hf/JbwDeJfK2G/uC8t1br+6k=;
        b=U2ylC5Xqp6u8ik+qLLVYLPja9a6CNN7H2bkCEa//UctRW98qRrcJt5iSmfa7HlRGDa
         EDm/19NA602YOLiGzy8pur/PiSigZOnjiDFPDfp0wDQytj0AVKE9l1GJEsQDPHSaTpWN
         VKjV4VqmYPDpuUP8xoVz5EngrDU4Ndza9QesC6eHUD3jbdE7/xUMMFZhYMSOldDRFI3t
         ZdZxo51YFr3ToZQL3S3K4YVDbUkKbPpvyhMDBjwurhhpkVJ0dBbq+psxbbaZoqMRtKT+
         C5157f+z9w4veodAaTjN6EGUBR216cMGPBpMSLAghcRBokc8uH+foNEF+FhICHvyRD9T
         7rng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=60xpqL1mFMP5mTEXMd+Hf/JbwDeJfK2G/uC8t1br+6k=;
        b=hTYJvPZJYUD7RZM9f5/ZZrJR4U2+acfHET0LNEoKze6mLvpJzWSo3DDZb+Szr9CID7
         u0fdS8F+grahbfXGIWPIsRvU3XKLVfWbZuyTWmGDsGl85jCSeanfi8R+IZ9vbVBSo3nn
         +J0Wq8CJTDrzZlukffq/bRUzboYxuHorR8Y7jS65W/RotQdGKBdWGmfLDREelaOzrXoZ
         Y3G5xw6QIGq8lVQEEiBvp9fs3wVSNHmI8KoL5sH7QCKd8dHqkzt2tkW4f0deYvH1eG7V
         H0faxQTIPky4wYMr0gB3atuUNa4m9JDil21lU/sTA+wFvSQFNi9En9Bs4znwOSWlH/bW
         lshA==
X-Gm-Message-State: AOAM531qErvUtrJolWL2FoIT/O7YQTDt/ge2ifL8ngDDtESX95BVHG4I
        N5I/JR/TK8Y+mBVDZK1EQ0rASkmVkUPiQP2LI+oIAg==
X-Google-Smtp-Source: ABdhPJx9YWw+klvNRqJR45fFUSS6cO52gWk7vHm028tT+rGobO97VJryE+a83/bztKgnEOk/N/ouPUUF0IEqke5ZwL8=
X-Received: by 2002:a50:8e17:: with SMTP id 23mr2797118edw.42.1601381012666;
 Tue, 29 Sep 2020 05:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200916155715.21009-1-krzk@kernel.org> <20200916155715.21009-2-krzk@kernel.org>
 <20200925154804.GB16392@kozik-lap>
In-Reply-To: <20200925154804.GB16392@kozik-lap>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 29 Sep 2020 14:03:21 +0200
Message-ID: <CACRpkdZ8Db+6yf6QG8kNgLBWFUzfogxu-CGjy-jYgXSR_sKoFA@mail.gmail.com>
Subject: Re: [PATCH v3 01/15] dt-bindings: gpio: convert bindings for NXP
 PCA953x family to dtschema
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Michal Simek <michal.simek@xilinx.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux-OMAP <linux-omap@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 25, 2020 at 5:48 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The first two patches (bindings) have Rob's ack/review. Could you pick
> them via GPIO tree?

Yup! Patches 1 & 2 applied to the GPIO tree.

Thanks for doing this schema work, much appreciated.

Yours,
Linus Walleij
