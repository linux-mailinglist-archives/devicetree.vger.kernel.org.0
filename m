Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB9939396F
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 01:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234985AbhE0XxY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 19:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234925AbhE0XxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 19:53:23 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5BDC061761
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:51:48 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id q1so2659749lfo.3
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=igQk9HIuYQm9nCu5NIGuLrsyKhw3Yali5yjk1GzMK1g=;
        b=x8HVgNcTHMj5JVGKRHW/wCa3LzV4elPUTOyr+cwzxoYv/27GB6Vr5op7LDnUCrQFQo
         WClXOUO77mmSoBaztmYxV8lugmBtCRQACzf+KqoyxqoGDbVxEomeRxcBR4MgVdbD/m5i
         j25ZjBBY4pv64I9XaA0eR9FuybSYgX7dryXNdk8y8qVTsxyR9yV6Djus+gGeRVCxDvPO
         EZyjheDf/tD+dxsik7cLUNYci9rcPmcLz5hzC9h6Uo7Im8AZyZKnkKN+0XCYy4ajfYbZ
         hHJIqjRu9BdZbwuVeDWwXXKiwVex14BZgs29gHFPMxbvAMLfiO7aPGM550kGaBBHNQ4Z
         f8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=igQk9HIuYQm9nCu5NIGuLrsyKhw3Yali5yjk1GzMK1g=;
        b=Kb07V4WEr9PFTqJQlOEP1Yq0cr79XlB73oofcSv0HaQOXEkFG2MEMIDLHRCPar7H3n
         VeErb3BiutXu/w4ATKAOP0VsTUBbfJHyYeU40ISZ56i9rSu/Yv2N6GclX87c6teqCrA+
         F06xzvyjxGooSkZ2nPWrDWle7jixqeaRzDAhqH4zHN36ZJAl+CIImPqFhpKKQBMwhVfz
         jGWGxqcaDrHxhNVW3bhu+YuhLjlIq4pn9CXWqs9u0lCHEYqFxz7IwvGXlkxaRDRm5zGz
         9v3CpE1lq2oYnPN05cGFauPsC4LB7BsOUbP/Zlr+GpJScoHo9zPqMqwixwvJ9UrasIyC
         O0CQ==
X-Gm-Message-State: AOAM530p8oFj3muYPcUcpqSOcT1U2geJ0zM7laYWzc5KW9GQDM+PWeGC
        r7rXyNIAA5LFCDG5yFfQ8cdYWjhc9LlL5KIRdVClzg==
X-Google-Smtp-Source: ABdhPJybPcEZ/Uc2pjQ/Pot5Bu/AWSlrkkKli5p3yYDQa2Q+8qdoEZ6ydt1owgyaEmIRgkW/fdP9HLTgWRAV6Jx6RxU=
X-Received: by 2002:ac2:47e6:: with SMTP id b6mr3824704lfp.649.1622159506776;
 Thu, 27 May 2021 16:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210527005455.25758-1-steven_lee@aspeedtech.com> <20210527005455.25758-2-steven_lee@aspeedtech.com>
In-Reply-To: <20210527005455.25758-2-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 May 2021 01:51:35 +0200
Message-ID: <CACRpkdZFcFuT9rdrc8BfEBmhy0--9uLMSJWfr=A+nU117_BT8A@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: aspeed-sgpio: Convert txt bindings to yaml.
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

On Thu, May 27, 2021 at 2:55 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> SGPIO bindings should be converted as yaml format.
> In addition to the file conversion, a new property max-ngpios is
> added in the yaml file as well.
> The new property is required by the enhanced sgpio driver for
> making the configuration of the max number of gpio pins more flexible.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
(...)
> +  max-ngpios:
> +    description:
> +      represents the number of actual hardware-supported GPIOs (ie,
> +      slots within the clocked serial GPIO data). Since each HW GPIO is both an
> +      input and an output, we provide max_ngpios * 2 lines on our gpiochip
> +      device. We also use it to define the split between the inputs and
> +      outputs; the inputs start at line 0, the outputs start at max_ngpios.
> +    minimum: 0
> +    maximum: 128

Why can this not be derived from the compatible value?

Normally there should be one compatible per hardware variant
of the block. And this should be aligned with that, should it not?

If this is not the case, maybe more detailed compatible strings
are needed, maybe double compatibles with compatible per
family and SoC?

Yours,
Linus Walleij
