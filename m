Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F0FC53912A
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245694AbiEaM44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234793AbiEaM44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:56:56 -0400
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71E2455AE
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:56:55 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id x187so1939007vsb.0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/NghuaR1lJCkVq3OsuNl2yOlR0SqsLYCBgF0yg7hfoQ=;
        b=N0iv119/qb3ifGLl4tsNLMnpIhN6nV1XilTkVYF5K+gR1Yu749OXDduvLeYs8R1PIh
         kFJXC+0n4sbAxEDzllFrZ43SW0u2hoP6T6Sn8aTJ5rtMYxvhDWQQ6oehDkkeML98XQ2C
         aKDRmovvRyCj5ed1td6tWDl7Z8nIiIu8bpzjXfKHrzgpjnKjBps9mHDYdvW3BkhUwNQ/
         Z8+R9Mqv2kyMTtyVm2kecuGZV2RZz4YfgLQfzSum/cASeO+6OczHiX9r3LVqw4Dz1r0t
         gC7mMUPdhi6Mw+F2QXQy0EXbjr3qJS2jPLKz65VNhgcakBjejh9J9hmh6KmJXkU+/cVk
         EJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/NghuaR1lJCkVq3OsuNl2yOlR0SqsLYCBgF0yg7hfoQ=;
        b=hJGDXhVN8xB/tJzCK3KLxS3XD0im6PhMI0q0C2MUfFcRmArYfSdqpsXjPqo/fcxUcu
         RI/s8oSGBG+/lgiu1xAdDjrL5zXc6wRiv/5cO88Uh/2aqtkFWLuvTBgUsAY5VXcKe7ma
         Gh0IXmMY5/MRNqwX1FQiu5RzloG2fS37x69UlVWI28LY81HwKU/UI1Cf5OfQ9XOn6DyQ
         bR8rJgOSyBKKvbONOH1tMj7QjxIyHFh2s3Hv/KcQFvnwuske88CC4cDXh5bY+ghMKJPj
         pshg2DgvRFPKtI0otYN5aEWxFBpHtVBeGwDF+F+HvtXrxudojEJZxQF14u8aiaKkOGEt
         Ce9g==
X-Gm-Message-State: AOAM5336ibqMTaxlbVDKX6tZ+HU2rBoN8sDpDhdcVINNsWjbvC4qc5dt
        LJHzEgbb/I0r4Tldq93J79MdHE3aZ8A7ss/d+/U=
X-Google-Smtp-Source: ABdhPJxZmkuNU1afDRfUKW/3Uh36Ee5onR0hIwmM8oP5+0BXYbmfNqn2eJqDkfi9L00JZ8TLB+0RZkEmaeOoS1derZk=
X-Received: by 2002:a05:6102:3f0a:b0:337:cc82:83cf with SMTP id
 k10-20020a0561023f0a00b00337cc8283cfmr16616529vsv.86.1654001814619; Tue, 31
 May 2022 05:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-6-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-6-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 13:56:41 +0100
Message-ID: <CALeDE9OtTJHGLTzZhOmdPLxY_gDf16H=+nmTpvLp2B7_L2F34w@mail.gmail.com>
Subject: Re: [PATCH 05/11] ARM: dts: bcm2711: Use proper compatible in
 PM/Watchdog node
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> A new compatible string was introduced specifically for BCM2711, so make
> use of it.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index cbb47e2c9434..5eca5207c212 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -107,7 +107,7 @@ dma: dma@7e007000 {
>                 };
>
>                 pm: watchdog@7e100000 {
> -                       compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
> +                       compatible = "brcm,bcm2711-pm", "brcm,bcm2835-pm-wdt";
>                         #power-domain-cells = <1>;
>                         #reset-cells = <1>;
>                         reg = <0x7e100000 0x114>,
> --
> 2.25.1
>
