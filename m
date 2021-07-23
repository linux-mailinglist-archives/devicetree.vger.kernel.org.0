Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26E3E3D383B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 12:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231664AbhGWJTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231256AbhGWJTe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 05:19:34 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1AE0C061757
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 03:00:07 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id m13so1091984lfg.13
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 03:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q3A3wcg13DZEjlCLDewUoUp2VK6us3A/bBxLiSdBb/g=;
        b=ANJjpl7NzOK7kQfV2NofKZZL6aTJrGWvKTTPloBDHHVg3B6xAG714RqD03hWe6uq80
         PZNZOc/PjOZiuE9PetDORTDVnG3p8lN5vcySRm8QT4m7XaqVt59XbrpVvbjykfeeihcd
         tmd3chqjQbdHk91ZhJEWKqMhKpii+6mnHI+qbDM4dwA9zF/FuIzNg/Zhxdhg+Tc7UOI/
         46uWhyLPz2bH8AOCjs3QfgQe/+cFANBWXdSnHP5jd/fR9iIbaso43z5GHNvfo3ZtozNb
         vC0yTCteUH9OcxwnTQAASPULIljFvOkiPjQK6xTxu/o3ssRUOckAatfnSPggS+LVfQul
         ef9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q3A3wcg13DZEjlCLDewUoUp2VK6us3A/bBxLiSdBb/g=;
        b=ENT0T0TN7KjREJ9fowCYD3gyrgc6zuyezZlIni6lDD0vEy5boejkQaM+A+LvhjGzAT
         H1MVGwUUK4REvAcz0tl8F2605ZgIkcH+ZzuaEDVVsTIPGR59xFdt6l1Y4lUCUX8/gz+d
         7U/mhdRigu/RK6h4xtbRxpUWw0wLBqx1SdrnqSFuUL/s3kvHvpdWVymm/0a6eMb+Ezu9
         h1imjLuDsbmNVukmZH78h3tzjFAK20hdQJGF1oW5AvuBjmqfIeY+R6t+ZknLYwN0/HwD
         P78LDMciNeR8BeLPRAAYUBiKpLfFQNnhQVdPE1DMuQ3RQo5jirxehEUXOk41b8Ay7tsr
         +NbA==
X-Gm-Message-State: AOAM533FZohTSMmiTJxwCV+6mb/l0D5/lxjbLZad2xPCMaBX/lmad1c8
        6pko4AdT+Cqis9hY9nny5V8JvryJzlE61OIQNTnn6hqy/3g=
X-Google-Smtp-Source: ABdhPJxcpwkaKCEEng7O+N0rUtzYgwgekwY+aOeUQQrJkKShW042z4cuNAEJbb1Pn6WghT80XUFEIu8S0GqeR9yEIfw=
X-Received: by 2002:a05:6512:169e:: with SMTP id bu30mr2459661lfb.291.1627034406022;
 Fri, 23 Jul 2021 03:00:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210712100317.23298-1-steven_lee@aspeedtech.com> <20210712100317.23298-9-steven_lee@aspeedtech.com>
In-Reply-To: <20210712100317.23298-9-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 11:59:55 +0200
Message-ID: <CACRpkdZa696HyQvOssrUK=KiiJGVfvCZZ_7zyOWGoEaB-R_BkA@mail.gmail.com>
Subject: Re: [PATCH v6 8/9] gpio: gpio-aspeed-sgpio: Use generic device
 property APIs
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

> Replace all of_property_read_u32() with device_property_read_u32().
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Acked-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
