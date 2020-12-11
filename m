Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 439082D8298
	for <lists+devicetree@lfdr.de>; Sat, 12 Dec 2020 00:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437002AbgLKXHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 18:07:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437020AbgLKXGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 18:06:39 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7527DC0613D3
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 15:05:59 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id l11so15579905lfg.0
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 15:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VPtMdGDRGuPEDGFmGnMvWlPbwtTye9nLOQ6zo2Mm3+s=;
        b=Tkxo8ubznZ/ihmwdGKwM0mnEC/9Inp+35eFt9HZ4SSZ8hVM2LajmncJVbJ8vVT9g7Y
         Bzevfd9OPqrtR7vCmS+Qyq9Q66deWC7tSue0PfNWMwfZw+4NMc6PVS3sMyL2AEgdJLVQ
         bs5Q8FBifb8fdc0t8MaeXkMsujAtyFcoVR93gBdo3ts2xXxu84uSsSc7nvDA31bMjA0T
         zyDFK0CL+q56OwKRrpoRUSRwndyj0xZxR5Awy2lgC48HQMSVM7YiZzG6POcphjwjahwN
         rIia2uSFw7gU6bSo0F+0LAg6gQCxPIftjemfQbohCg3tLqSw2jxFdpQ51oypEL8ksD+W
         HPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VPtMdGDRGuPEDGFmGnMvWlPbwtTye9nLOQ6zo2Mm3+s=;
        b=Jx6MHt9Yf4cP5G5zqy82luPmjbVPuL/X0EO2jBh1FBfxVv+HFhD2scY/4nDrbzAlA0
         ARAyZJyvfmqShz2JkOUwGTmmfqQd8mSAjNaCcuKEgKK05zWHb7xCSsbYMClu/RUL+20w
         dLxEvsELnA6ym6v0D0n/4b+hbazIx46FKx3VK/5hdm8YvKefsnQpkRzuMBBrczSXyO8k
         1OMXk0AG5m1znJRvT3gKYPQqZDr3hnovOkHirKMUgphlHLJrMXjMYseEuR4+LNf5IjE6
         SOnH3P9Lzgcclq5sdcM2u0PT9z/ZQyOhJIrUgSf1iAw7O6CHsxjJzFWR+7L0w4k7wwsE
         tiXA==
X-Gm-Message-State: AOAM530bZRPxN5FkNi7T4DNQI8fQh2ar3t2qkofkorm0Kv38n1Jy3shh
        ceSWV0b93qNWU1loJYqUMCTJAWMKXyckLUH9ZHoPrw==
X-Google-Smtp-Source: ABdhPJyG4JiWO5sICrhd+prNYw2YnrYATbC3tLV3EewLAZiuaES/S08tUz/dKCFSdAJ+lv7Ji7zysfJtwScFy5P1idI=
X-Received: by 2002:a19:7d84:: with SMTP id y126mr5515292lfc.586.1607727957931;
 Fri, 11 Dec 2020 15:05:57 -0800 (PST)
MIME-Version: 1.0
References: <20201211094138.2863677-1-nobuhiro1.iwamatsu@toshiba.co.jp> <20201211094138.2863677-2-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20201211094138.2863677-2-nobuhiro1.iwamatsu@toshiba.co.jp>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Dec 2020 00:05:47 +0100
Message-ID: <CACRpkdbsELwWeXe1jM1PpBtgo5oiKOx7MwVA06uS1-ZvaLKnRQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: Add bindings for Toshiba
 Visconti GPIO Controller
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Marc Zyngier <maz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Punit Agrawal <punit1.agrawal@toshiba.co.jp>,
        yuji2.ishikawa@toshiba.co.jp,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Looping in Marc here:

On Fri, Dec 11, 2020 at 1:43 AM Nobuhiro Iwamatsu
<nobuhiro1.iwamatsu@toshiba.co.jp> wrote:

> Add bindings for the Toshiba Visconti GPIO Controller.
>
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
(...)
> +          interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
> +              <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;

This is an hierarchical IRQ controller. (These IRQs are mapped 1-to-1
to IRQ lines.)
I was under the impression that we don't encode interrupts into the GPIO
controller like this when we have that.

Instead, hardcode these into the driver. The compatible string gives
away how the
local offsets map to the GIC IRQs.

Add no interrupts to the node but make sure that the GIC is the parent.
(Should be default.)

Compare e.g.
Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt

Which has a similar "some hierarchical IRQs" setup.

Yours,
Linus Walleij
