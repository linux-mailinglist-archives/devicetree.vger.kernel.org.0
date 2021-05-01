Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 525E6370726
	for <lists+devicetree@lfdr.de>; Sat,  1 May 2021 14:14:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232053AbhEAMOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 May 2021 08:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231972AbhEAMOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 May 2021 08:14:37 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 938FDC06174A
        for <devicetree@vger.kernel.org>; Sat,  1 May 2021 05:13:47 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id b21so1283039ljf.11
        for <devicetree@vger.kernel.org>; Sat, 01 May 2021 05:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CRiIei4iU9eOLt+6VGICqdff4yVs7VnZIcLiYMXSOVg=;
        b=NmP4LrlfqgqiXwoaAwml0at2WV7mraCZbNWddlk2q8oVvLaaM2j2605TzOqQ0VpkSc
         84zavwow6Bc+rZ/+pp2zIe+o/KUolwWY9HQSpVHZqcu5TWm2sMaI3T9ZbkkK6TleHuz5
         9ZiqpJQ+NGPLbImFS6DByNVCoCYAT1hFulLMBGuTmSfkEmkVasPg07OoguODib13kIZQ
         Q4TAzL/B9P3mhNNZSBhu869XzyUur3wKoBkv8xKfbmypHrEEm0D48lH2yhYx2WSBfwyv
         LgWwjECwAIF7vpGKJb0dn07j9XxaT5XJgLzDDblA+ucT+Msy2fER1Y4gzpqwoEBFTe21
         OXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CRiIei4iU9eOLt+6VGICqdff4yVs7VnZIcLiYMXSOVg=;
        b=KfI9i3vQIKH47150XnbX8bfTsZiR33NLn7J3lP3Zsm2cWg83C94nHkmUTXNHqZGZaM
         eenF3PeuomvHHf5gYmEG/9vRbhQODYFv40wrCtOxQKl2r9qekQapFDKL7KRkWPr4sx5A
         ye9f0KJphAIax+rcP3cysPayWTtE5z2hS3Nq0L2M1pE8xG3CUnYk1CMxskpIOgj7Jl+B
         WI4o9QO07Hzw+QLR5IahE1njXuKby0XSmzmWKnODWf8Q3Wv9AnwSK2O5gbE39/wN9Sq7
         p0fhi8ylfEu96TFQmIon05n8bomxY+9MrWsqtNazS3Pq6xf0DUz2XN+wgJDhM9UiOFeK
         lWJA==
X-Gm-Message-State: AOAM530/ngJSucprftKx2FRq1803YnPtUcFN88grDyZNEK6Qv3wTagYs
        7NkJM2qsjYL++WWxgDz2XwVu2tFFGWDT1NtEhOrLSA==
X-Google-Smtp-Source: ABdhPJwEvZiVUzjL5fiCUWcltqWrkyBzoejxaPSLl+jQo2XqeGW/AGSuOCc28BFe9PZw7LiIvB9x5RqEvOhmPwnPW1M=
X-Received: by 2002:a05:651c:1316:: with SMTP id u22mr184428lja.438.1619871226159;
 Sat, 01 May 2021 05:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210426095426.118356-1-tsbogend@alpha.franken.de> <20210426095426.118356-2-tsbogend@alpha.franken.de>
In-Reply-To: <20210426095426.118356-2-tsbogend@alpha.franken.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 1 May 2021 14:13:35 +0200
Message-ID: <CACRpkda7n3VL-EpwdXDxt47azFo8Wkp67-urUy7--3D6TJs7iA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: gpio: Add devicetree binding for IDT
 79RC32434 GPIO controller
To:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 26, 2021 at 11:54 AM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:

> Add YAML devicetree binding for IDT 79RC32434 GPIO controller
>
> Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> ---
> Changes in v4:
>  - renamed to idt,32434-gpio this time for real

Overall looks good to me.

> +required:
(...)
> +  - ngpios

Is there a *technical* reason why this is required?

Can't the driver just default to 32 gpios when not specified?

> +  - interrupt-controller
> +  - "#interrupt-cells"
> +  - interrupts

Why can't interrupt support be made optional?

It is fine if the driver errors out if not provided, but
for the bindings this feels optional.

Or does the thing break unless you handle the IRQs?

Yours,
Linus Walleij
