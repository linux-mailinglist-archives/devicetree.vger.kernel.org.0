Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB64146F759
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 00:24:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234289AbhLIX1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 18:27:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbhLIX1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 18:27:50 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A9CC0617A1
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 15:24:16 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso7879448otj.11
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 15:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v9nxTGqrdRICpvkQsPbmnD13xDFxVdmSzzLDOAXPlv8=;
        b=L1r3iWYZRcxcJR9rMapow8zqwR4ttCHdDzxTYrB8LYeqJUjgyRGC334CKzn5MWSYN2
         zX1GIfsEegZAvdGIJm1EKSuT6Basev6QkhxLkunFHpICVEklSBvnCGTau9hz7g5T7RSl
         2tiTDu3o9yR0N3cBTifD5621joJGOBfp0/zdhpgq6Dp+KWGFPXQOPR/7sj0duqK6jb34
         1ChOrTCut2Jj/LMUHz2OH+3WSb8H49R2nkUR7DkRPSz+fjF05p/Y73WyM8qZj3YnFXDQ
         TRgUckCyt0y77wuVvlWmNn81vckzQUZqEHX3MItqktIai8z9jJDXVV0VouB3MONX3yLh
         RGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v9nxTGqrdRICpvkQsPbmnD13xDFxVdmSzzLDOAXPlv8=;
        b=D2OF84WnVX0BHg14rlgKDf3oGrwzpTqmebEwetPzhtWyWzIblmAVCBvF0xrZvEvmpS
         Kjc4/J39g6IBa2ejfww8+quEnMba+ZGmUFLnESoVkPDP3buDBW8gLaU/k1Ax8izIHXck
         swy0PcUrmrruuiVjBVaYFjrMP9ONv2pj4YqONht4O4qnl0qYH9FxLntD/jGI0mNSBdxs
         niQwHLFytUKjoRbbQPu1YoTYPoE7fgV8RNXd/4u3IRdj4i2SsJ68mPyYm73DFR1BNn1M
         EqWeLN7ecahxGHoLETfD216n7kKcAEGhZ6kO5Kdx/KW+7BIW20mT74WNBRHYmPWDU4eC
         tH5Q==
X-Gm-Message-State: AOAM530IlsuUS1MhyaQ7dwAWUbtpnMsCy6EhW6R2r0w//y3gaukpv0O8
        pvvmk+aBgO3EMBUpeDLPMzfBk/2HnnwGI1ojHLJ/u5a45E8=
X-Google-Smtp-Source: ABdhPJxAH20nnPjijr1ZwDomiy0VitqEs+B+FZGyYxGmIhbVYIwjCcbC1mIFjUzABE/Y2y2c07Pdzu94bn24eLLhAmQ=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr8386942otj.35.1639092256225;
 Thu, 09 Dec 2021 15:24:16 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com> <20211206092237.4105895-2-phil@raspberrypi.com>
In-Reply-To: <20211206092237.4105895-2-phil@raspberrypi.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 00:24:05 +0100
Message-ID: <CACRpkdZ95bCJVDo4tCXsMnsXax4+ZydoLS7AsM-yzMjXbONk=w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pinctrl: bcm2835: Change init order for gpio hogs
To:     Phil Elwell <phil@raspberrypi.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 6, 2021 at 10:22 AM Phil Elwell <phil@raspberrypi.com> wrote:

> ...and gpio-ranges
>
> pinctrl-bcm2835 is a combined pinctrl/gpio driver. Currently the gpio
> side is registered first, but this breaks gpio hogs (which are
> configured during gpiochip_add_data). Part of the hog initialisation
> is a call to pinctrl_gpio_request, and since the pinctrl driver hasn't
> yet been registered this results in an -EPROBE_DEFER from which it can
> never recover.
>
> Change the initialisation sequence to register the pinctrl driver
> first.
>
> This also solves a similar problem with the gpio-ranges property, which
> is required in order for released pins to be returned to inputs.
>
> Fixes: 73345a18d464b ("pinctrl: bcm2835: Pass irqchip when adding gpiochip")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>

This patch (1/2) applied for fixes.

Yours,
Linus Walleij
