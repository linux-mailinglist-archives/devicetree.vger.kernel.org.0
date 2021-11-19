Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C415C4567A3
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 02:54:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233192AbhKSB5X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 20:57:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231176AbhKSB5X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 20:57:23 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E94C061748
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 17:54:22 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id 7so18521041oip.12
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 17:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2FxdMMSYOAYAU9KFKnHB4GkxuBsvinpK2Vc/6yFivGc=;
        b=vYmxSd/nIldGJ+S4HR2cLPVGy8eMrqBT2xU1PpQ7aEnwTN6bJZXJDAt45aaAZ1gPOx
         dy4yOi0bpRShwlw5JX1lGwWwByxgRyXI53vM0fhy/O7rk2wMWufVFGML1OIgxFO+psi+
         KVkwcjFf8ynREOddSsWjZSq19sDR053lCZa5A6hwRQ41JIsRYwOE4fEbg/6gfA5/9g+B
         oC1MdqllqoEZMNN9Di7nkaoFqxmCjXqZqaZYoykS6EKY+sFtOvKWK5UyiNC0qFR3rJMt
         aeoIDBKwK7X7w0C9w+MRHhNs5Mmsa7LI+H+wMQi5Cx0VoyFYKUp6gtoWyVkWRzrVbPKA
         cP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2FxdMMSYOAYAU9KFKnHB4GkxuBsvinpK2Vc/6yFivGc=;
        b=CJ9V4AFlKwNYXM56D7vFs4BYDaLpnSMWxttj3WE85utsrWC5GDfO9DY0WrMTJfl8h0
         ik9cq1VJ0O7ARXuWaxeL6lB1hkoUTgPwDaJNsuAsyDi8/sl/qoZcTsbHFzsL+O9c/xC3
         ymUD8yUF990vH0uVVTrqku70IoA7W0xYc/edhjQhzj30ShuHr0BSmCEg8WP8YSKwTfDK
         p6KY0Bf4aseE8QDDTlq4BoJTjjcxquG+rdzWlTTx/L8SziEy8YpgSa29YUrbVKaA95/N
         Z1+vbZpDsoT2wv+3NOAM1pk/k0LAcRRbWd86E9IJ5x7jDUTypkoSLtZ+8HPElvc4PUNC
         UNMA==
X-Gm-Message-State: AOAM530lz52JyN+8KbfFAV4a3VmTyXreJcYpQdejSP2xEoKtBFdO4dbo
        AnD3iWXrHehgjaEeXr7B5n0rN4xZ0E23OVoaeJtBWQ==
X-Google-Smtp-Source: ABdhPJyRBm0fzRDLcJlXEbvREg/ZNXV/7Xm5j6CDTdCOubs2VBCxDSWSKHMSzaj9Lth9V9uE7GejuszIMIjni8F5a6E=
X-Received: by 2002:a05:6808:60e:: with SMTP id y14mr1561686oih.162.1637286861422;
 Thu, 18 Nov 2021 17:54:21 -0800 (PST)
MIME-Version: 1.0
References: <cover.1637061794.git.matti.vaittinen@fi.rohmeurope.com> <26a80d9081382976cec58f9c3bc0ecb181c5836e.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <26a80d9081382976cec58f9c3bc0ecb181c5836e.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 19 Nov 2021 02:54:09 +0100
Message-ID: <CACRpkdYLTvBm4OP+VLKaPDOGzem1fakBBqOF1ZVqXBHCzB6Jyg@mail.gmail.com>
Subject: Re: [RFC PATCH v3 7/9] power: supply: add simple-gauge for SOC
 estimation and CC correction
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, rostokus@gmail.com,
        fan.chen@mediatek.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 1:28 PM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

> Add generic 'simple gauge' helper for performing iterative SOC estimation
> and coulomb counter correction for devices with a (drifting) coulomb
> counter. This should allow few charger/fuel-gauge drivers to use generic
> loop instead of implementing their own.
>
> Charger/fuel-gauge drivers can register 'simple-gauge' which does
> periodically poll the driver and:
>  - get battery state
>  - adjust coulomb counter value (to fix drifting caused for example by ADC
>    offset) if:
>      - Battery is relaxed and OCV<=>SOC table is given
>      - Battery is full charged
>  - get battery age (cycles) from driver
>  - get battery temperature
>  - do battery capacity correction
>      - by battery temperature
>      - by battery age
>      - by computed Vbat/OCV difference at low-battery condition if
>        low-limit is set and OCV table given
>      - by IC specific low-battery correction if provided
>  - compute current State Of Charge (SOC)
>  - do periodical calibration if IC supports that. (Many ICs do calibration
>    of CC by shorting the ADC pins and getting the offset).
>  - provide the user-space a consistent interface for getting/setting the
>    battery-cycle information for ICs which can't store the battery aging
>    information. Uses POWER_SUPPLY_PROP_CYCLE_COUNT for this.
>
> The simple gauge provides the last computed SOC as
> POWER_SUPPLY_PROP_CAPACITY to power_supply_class when requested.
>
> Things that should/could be added but are missing from this commit:
>  - Support starting calibration in HW when entering to suspend. This
>    is useful for ICs supporting delayed calibration to mitigate CC error
>    during suspend - and to make periodical wake-up less critical.
>  - periodical wake-up for performing SOC estimation computation (RTC
>    integration)
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

This is the right ambition, I haven't looked close at it but the way
you use it seem to be what you need, so:
Acked-by: Linus Walleij <linus.walleij@linaro.org>
(and the rest of the patches to the Rohm chips)

Yours,
Linus Walleij
