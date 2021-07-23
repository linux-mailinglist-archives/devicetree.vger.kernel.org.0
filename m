Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 790A93D3835
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 11:59:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231620AbhGWJS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231304AbhGWJS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 05:18:57 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13304C061757
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:59:31 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id y34so1142151lfa.8
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SpdYc3xSgtWajYNjziQJhjZECPeeHzOqtqZRcb4yQqc=;
        b=J4vXy3PkMvHxHdXmu8xSRDtPSWRGZj4bvC9RE+NDkeFb/PTCBojquyjxYoZngKBukS
         StiIvPkV6z3a4W0B8hsOOpPd56wDC4/LyODf5o51sUjkXGS3ucbtUeYTkr94FeLsZI9I
         d/R2VLKwJQK3bJWZQLXJSN6SLC9IZL6xwfLqxpqKB27esWapnkfxI/ZewCl9USmE1DTo
         kZb5/7oUS8YBZG820r03EGq5+fhpw5hGyE/Qt+x4QpGZ5MjPKM/SHl6GNiSaYRBBDAWC
         bljyLdTixfD+4zsprywxA0yyv73D4hssAtXXAZHB7zNeFMXzeqagJqMleKxY2ih80i8M
         7oiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SpdYc3xSgtWajYNjziQJhjZECPeeHzOqtqZRcb4yQqc=;
        b=JOXQ6qybRtOJUKrLg+fZXUDbjFmnzpwZHuI/orWszpt35Cmud9AdEtY+0V0Kdd/4oL
         aJKq4x7dOye282jn59Qp2mKAfIjbnpj+7Rd96RloTwse20apgt73oVRg92mqTrZjq/Ty
         uOZRv8TtE8+AuteW5vO9bfGpIUKjmVZSEVCrDhNKs5hSk39bFqnBGCPGA5h0DYyb5ECI
         gOudsFtT09Sp2sqGQKWdivgRz/5aDGlNomdAN6q2rqd7I1mcdSAqYMpyHe+YZdGalC8w
         wm1X8tLruAV81q4bP7Qg0ZNGnPwPWv//C3OcvP7/rOeHcwjUN5exdtMFQS7KCJcGM7UY
         kzTw==
X-Gm-Message-State: AOAM532/ihNFCkdXoqsbI3CgrRgvdj4sCZZYWXZv3newCSCCVTNPlYch
        y9VJxEqjwatJE4AFlaJHDKup8cfljT69vxeuUlHRyw==
X-Google-Smtp-Source: ABdhPJx7muHNH1C+xeS6T8GmAgw9HYxGXW+SzTbL9t3ZL9EWXY9r5EfsyJ1gcQxXWpZrxgEPKQxHcPJfogHCjHnb5R4=
X-Received: by 2002:a05:6512:3f1f:: with SMTP id y31mr2589495lfa.29.1627034369078;
 Fri, 23 Jul 2021 02:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210712100317.23298-1-steven_lee@aspeedtech.com> <20210712100317.23298-8-steven_lee@aspeedtech.com>
In-Reply-To: <20210712100317.23298-8-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 11:59:18 +0200
Message-ID: <CACRpkdZh1TW32bqb91+g8OWkXBVDt0vsoObJ6GCX3LL+86_daQ@mail.gmail.com>
Subject: Re: [PATCH v6 7/9] gpio: gpio-aspeed-sgpio: Move irq_chip to
 aspeed-sgpio struct
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-aspeed@lists.ozlabs.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 12, 2021 at 12:04 PM Steven Lee <steven_lee@aspeedtech.com> wrote:

> The current design initializes irq->chip from a global irqchip struct,
> which causes multiple sgpio devices use the same irq_chip.
> The patch moves irq_chip to aspeed_sgpio struct for initializing
> irq_chip from their private gpio struct.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
