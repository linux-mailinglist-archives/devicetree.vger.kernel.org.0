Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F61BAE754
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 11:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391395AbfIJJwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 05:52:45 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:32906 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391340AbfIJJwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 05:52:45 -0400
Received: by mail-lf1-f67.google.com with SMTP id d10so12931191lfi.0
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 02:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UCCxiazzNKm8GfRdBMzix7RqbnKVVm8PwfIPcf8Ud9o=;
        b=ljRKsul0mZVE7hjuRdwu0vDFTakT8JFE/2cyerU5FPgdhHWt1rkLc/XVmzFSuCdPyA
         /G3lIV76GIKLQb3bB+uKUlq6zEOJp1/Jn7Bscc2/jQI6vtCMBKWUsj/fmMSyCEd2qNAL
         V1vG8Se1hHXhwDqAbg8s7vDI3Ibg8uD2ZzkbbiS48Sm3gFFKFoG/OpoGBsMLp+jl42NB
         CX+IqlW87dKEJnQTPMd2wc1doUzIXECqEdcQZZhRlbagUPN5NRb3QL2t3CHNXtubY7Qk
         qdl1LrhsmO8b1M0BjYMm7Z3hO+0+IS7IDQImB+80dHHcpeWxrs8aFoFmvgFMCl1SsLZg
         yH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UCCxiazzNKm8GfRdBMzix7RqbnKVVm8PwfIPcf8Ud9o=;
        b=R6fMuDr1WeEos9sI8pv4NLjVal0NpjZh2F2/NSoUeXdKH8IBkd4Dc+nRgXJojE4e+V
         GT7aeXYmmC3gH9Kpr6sLavTXLkoAbPtstJLzQu7QHPya5RJ4LxrJhjpBlxf5d/0+MlLU
         0YntqBqsCirJr5asIYhWryxE3t1gL56u7YoPLEqhQQSaas2AprxbBTLlY/Xw2UMepfUo
         SnMSQCN5m+aE6WgAh+AZ7kjEpelnYHmyPOQw7lpOei0WGYCiEVsae7THaF+gh+AzlYQH
         21Xx3QdMgz3RVHb8ovZ8Sr0xIU/qd19MN/mkckLcIzcTKyxm+0+tlKPNUXoOdT5HXcVm
         K+bQ==
X-Gm-Message-State: APjAAAWAuveQg0mQ8TH/ZwwDxiRvH3ybjJIm/3iKJy2oi44AP2gpoZ47
        8BN6K/dSR7CsAO7DJJQKgGu4fzlQCU/oye/pSTt9WQ==
X-Google-Smtp-Source: APXvYqx9y3L6l20MO17A9IA6zgodZQShZyGHzkSX5INuMhtqmNR4XtMFHhM2ZZJH9fSmw/HaeCyGmGFqU1WqfGLgg0o=
X-Received: by 2002:a19:770a:: with SMTP id s10mr2194571lfc.30.1568109163186;
 Tue, 10 Sep 2019 02:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <1566379420-26762-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1566379420-26762-1-git-send-email-yash.shah@sifive.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Tue, 10 Sep 2019 15:22:07 +0530
Message-ID: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Cc:     Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Bin Meng <bmeng.cn@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Any comments on this patch?

- Yash

On Wed, Aug 21, 2019 at 2:53 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> Add the PWM DT node in SiFive FU540 soc-specific DT file.
> Enable the PWM nodes in HiFive Unleashed board-specific DT file.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
>  2 files changed, 27 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 42b5ec2..bb422db 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -230,6 +230,25 @@
>                         #size-cells = <0>;
>                         status = "disabled";
>                 };
> +               pwm0: pwm@10020000 {
> +                       compatible = "sifive,pwm0";
> +                       reg = <0x0 0x10020000 0x0 0x1000>;
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <42 43 44 45>;
> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> +                       #pwm-cells = <3>;
> +                       status = "disabled";
> +               };
> +               pwm1: pwm@10021000 {
> +                       compatible = "sifive,pwm0";
> +                       reg = <0x0 0x10021000 0x0 0x1000>;
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <46 47 48 49>;
> +                       reg-names = "control";
> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> +                       #pwm-cells = <3>;
> +                       status = "disabled";
> +               };
>
>         };
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 93d68cb..104d334 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -85,3 +85,11 @@
>                 reg = <0>;
>         };
>  };
> +
> +&pwm0 {
> +       status = "okay";
> +};
> +
> +&pwm1 {
> +       status = "okay";
> +};
> --
> 1.9.1
>
