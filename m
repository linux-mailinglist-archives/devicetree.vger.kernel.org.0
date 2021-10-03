Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A31E7420447
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 00:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231790AbhJCWX1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 18:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbhJCWX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 18:23:26 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4425C0613EC
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 15:21:37 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id i4so64065745lfv.4
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ha4KPP96c9xEyWBTDtUnjtflOYpKDiaevgMoztxbhBw=;
        b=uh+rwJD+WupkcQ6pMmlQv4BP8AJNpxL9ZngmxF8iDBE87FF6H3RHMBJYjQ3G8JezIA
         pvfNv6Dly/h6UIu45XzjD2oMVOWyArQ4RnNRSuHGDmCulFQMZpLUAfNvDK57l1lxeKvG
         ed/usCqvyRxd61ZZdT7Yd9jnUXThEza6N3CCebmPquq+lSV/ftW14/+cLZGZUtJBXz8D
         RlbV5lXgmx7dxclUUF6yFvJKlE9UbUWFOOdvT7fUY23CQAGdqK6OVFK7462GwPGcXstS
         mgrNAoI64RQSGBFJIBmX2PhTKIFmgi6xCEWaZ6VGxX0Rkhh8F89jvKErgkwhb7Hj0o2U
         3D9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ha4KPP96c9xEyWBTDtUnjtflOYpKDiaevgMoztxbhBw=;
        b=XgkZBKs4d+qEjG0+f92QMzbw5q7t+4KE45hmTb+ofavCV0YCWGtXuluVfk03lzq7Db
         /VfwvLQSj6pYytSCUjhk8YBhuIY6+dkScdinLZbWKfXWbE0QKskG0nNf+zvSpb2TNvXn
         a9GilVml2GI30XPNSWjHCFBLs5Umy9Fzqe5+xuzCBImaTp2rAIse+ZfxBM1w9ZhxA6LE
         rVeki8CvWe+V0UYsawVb/EZx/VrLC7NJhnqDuheO+4gdSt9sbYEtsNh3iiEepW/aUz4B
         fus9aRH8fD5tn29iOJiC+VH1B4pu+e6Gag45NEEbCB4Ng/aMiXEBnhkwSVBeUZE9uQLq
         hyhA==
X-Gm-Message-State: AOAM533MQS+uHNbeYZQfxwhVOKBujVm9AvxXrNHYB+ooLqMFoS5l7Wox
        2LKqv4JkTw4sgVSKl/ag0xdNEfXVH+68rdjt5Z4y6Q==
X-Google-Smtp-Source: ABdhPJzAPjbQzi66RvTKB4i1hR2rwBUGWvCcNMGWE4lsj2AaSK6905q9F7ehlzINjR2URzVKnmYfqMpdoFrR/3Lp7KE=
X-Received: by 2002:a05:6512:706:: with SMTP id b6mr10969524lfs.656.1633299696245;
 Sun, 03 Oct 2021 15:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20211001191209.29988-1-joey.gouly@arm.com> <20211001191209.29988-2-joey.gouly@arm.com>
In-Reply-To: <20211001191209.29988-2-joey.gouly@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Oct 2021 00:21:25 +0200
Message-ID: <CACRpkdZP6=aSDegTrOd2qopUQc-ZbtmSWehs2kSN=50CPN-04w@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] gpio: Allow per-parent interrupt data
To:     Joey Gouly <joey.gouly@arm.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 1, 2021 at 9:12 PM Joey Gouly <joey.gouly@arm.com> wrote:

> From: Marc Zyngier <maz@kernel.org>
>
> The core gpiolib code is able to deal with multiple interrupt parents
> for a single gpio irqchip. It however only allows a single piece
> of data to be conveyed to all flow handlers (either the gpio_chip
> or some other, driver-specific data).
>
> This means that drivers have to go through some interesting dance
> to find the correct context, something that isn't great in interrupt
> context (see aebdc8abc9db86e2bd33070fc2f961012fff74b4 for a prime
> example).
>
> Instead, offer an optional way for a pinctrl/gpio driver to provide
> an array of pointers which gets used to provide the correct context
> to the flow handler.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

This works for me, bonus for the elegant use of union
here to make the array optional.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
