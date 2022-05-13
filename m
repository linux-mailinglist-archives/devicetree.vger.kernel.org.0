Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75C68526CD4
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 00:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbiEMWNE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 18:13:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbiEMWND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 18:13:03 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF9196EB17
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 15:13:00 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id i38so17483732ybj.13
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 15:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hPXr8pV9dZF9B1BXNKQfXMsYbL4rZ6nKjrUwBZQ0KMo=;
        b=DHMa15fitu2r/PPB1WyddaTAumAftS6vsCOF9zBC7o5tUDhku++ZAFZdAjLZqkR/4O
         KX9pgu0nhyXarktf2F7egfxAdIkEjn1nrLIaAu1dscNjoQdsOaEbg9rlVjOSSR/9U+W7
         fF9/0uIVsF1CKnclqxUFYK03LSRWHwMpuJQWV03jnnNCj8HLOTb8XQOC03TzlHXrd11e
         Pvk0073QqoqJT4IY6nBATQGIfOg66LqbvK0hQ3wY6V9R2LkXW3Z7VSxjgZhcZbgicNTf
         /YHRakDlnlyqJTFdMZcjl4omUdTi+VyA/ZkrWY28MxiBc5wnvSeUXOgDzGII6NX6XYlh
         iOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hPXr8pV9dZF9B1BXNKQfXMsYbL4rZ6nKjrUwBZQ0KMo=;
        b=PNom1dAMgku45zk39Cai9mdJGvptu7QdO34fZ/AX3EMsb1Is/soVbH5L3kwg4YqZsI
         kcjpI8xv9t+cZ3m6UkXJ2xrwe1HJPWBBOUerxmbzBBEdFYmGFdKjRN98o4jIVrmMEI7f
         TCem4T1vnm1/5DxhVCiXoR5a/H6AWsWEEJ/gn+5AaGsk0XrjZrUS2c6N6UrYDyZqeaqT
         +7B8CQOy4nZoOKYN63vj5I61R7TzqAbLB6BhaBYcw5g6yVXgS2vPisBsSFgLVJytGiiQ
         aOU4CuU68i1jJPpQc8J4Mort8Njq5FCGsz2Q9FBcRJ/euzA7nvwUFMnHqSQDmU0E0xpY
         cGcg==
X-Gm-Message-State: AOAM5323EkY8HUHWrZXcaIlMkjQmge/feazdX2D0PYsTpjFrSnEGlFBO
        bRV1onvRtU0alwUSpzRecZp8+SW4scPAY6wQ0woF6w==
X-Google-Smtp-Source: ABdhPJwdDBtD5whluJHsM54nTP7gGqxuqR862sxqevyBOecVN1RSRe8qZZNMWPlXtgaeaFPIGj9+/FwhHzKHQLS55y0=
X-Received: by 2002:a5b:302:0:b0:64b:a20a:fcd9 with SMTP id
 j2-20020a5b0302000000b0064ba20afcd9mr4121428ybp.492.1652479980153; Fri, 13
 May 2022 15:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220509050953.11005-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20220509050953.11005-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20220509050953.11005-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 14 May 2022 00:12:48 +0200
Message-ID: <CACRpkdafrkyQjmyoa4CAJXJ8JdT3owapq10=yBQLyPp0EwO6AQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] gpio: gpiolib: Add ngirq member to struct gpio_irq_chip
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 9, 2022 at 7:10 AM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:

> Supported GPIO IRQs by the chip is not always equal to the number of GPIO
> pins. For example on Renesas RZ/G2L SoC where it has GPIO0-122 pins but at
> a give point a maximum of only 32 GPIO pins can be used as IRQ lines in
> the IRQC domain.
>
> This patch adds ngirq member to struct gpio_irq_chip and passes this as a
> size to irq_domain_create_hierarchy()/irq_domain_create_simple() if it is
> being set in the driver otherwise fallbacks to using ngpio.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

As mentioned in some other patch, try to use .valid_mask for this instead.

Yours,
Linus Walleij
