Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9621E123A41
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2019 23:52:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbfLQWwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 17:52:01 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:38996 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726296AbfLQWwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 17:52:00 -0500
Received: by mail-ot1-f67.google.com with SMTP id 77so15571184oty.6
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 14:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bgj6GFgx8VThztK4Gu3+BzeDA/NznFDz/pSO11pXhjg=;
        b=Hl2Y8hGQ+0lrr5/hQEqaf+/gbjNx2pyfaxEIghm4QuR3Hf/M3f7QA527VoNpOkY9fo
         4kv2KeUY085H4H0ll6Hu44CmNk5yWK9kQ6RaeIBkekZDmxTOGIMcXisQhW3IJk9o47XG
         1ieCEaj2RGguaP15oOZ0sl1hYp4v9vJyI3dgw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bgj6GFgx8VThztK4Gu3+BzeDA/NznFDz/pSO11pXhjg=;
        b=Ldr9NTjuc9GdgVbluD988baMf04z6PCOvwxJ+0yVwVGN6ekaVoD9DXCr0CjPHvGf93
         Aoo3lVfEM3T3DGtNwbKw3DH7BkiCMjIylviYH7gdp8hmMfifBoQDRMQDVGUjyDqXYCFz
         tTFX+IwHh0tNtboOduCMrJB6pv03RPR1ulzAxPmIRQRaU7sf4zLKdYP1ZxGlwy2fSDnC
         MGcE4oBSQgMdPcUmLpeuc2sQYDyqYN9wQINTNR/4vHUaeHpZiR1xiinssEmJ7KKzhX8f
         FNyXg463FjqIfdGu6/pSBRD+wP9oZpMc5bABa2g2DycvafcRM9uAWB8Wu6LF1HWxKHXY
         5Feg==
X-Gm-Message-State: APjAAAXyaks/WXBD5DKWow2Xme/0YMnkuCjjGWOcJggtQu75EBVAuX9T
        Ner1X2taolCJAekQdzYXaW1fpyr4I1+vf7T1TH4MRQ==
X-Google-Smtp-Source: APXvYqx+R5wFvTkSiUO0y6MYgmRmL50Cn5ck4GRTtls7IdGYcsg8QD5heARFegvJ+0lTn3tHAVoDp2cT7t3IUAtvC8o=
X-Received: by 2002:a05:6830:1415:: with SMTP id v21mr41903346otp.188.1576623118725;
 Tue, 17 Dec 2019 14:51:58 -0800 (PST)
MIME-Version: 1.0
References: <f947d821-8e67-dcc7-d753-5b04d099792d@gmail.com>
In-Reply-To: <f947d821-8e67-dcc7-d753-5b04d099792d@gmail.com>
From:   Yuqing Shen <yuqing.shen@broadcom.com>
Date:   Tue, 17 Dec 2019 15:51:47 -0700
Message-ID: <CALqpNLdtWdrQKyH2DEcnW6vq_pwAEcsve=id0sysddNTE6hVpg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: edac: arm-dmc520.txt
To:     Shiping Ji <shiping.linux@gmail.com>
Cc:     bp@alien8.de, james.morse@arm.com, robh+dt@kernel.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mchehab@kernel.org,
        linux-edac@vger.kernel.org, sashal@kernel.org,
        Hang Li <hangl@microsoft.com>, lewan@microsoft.com,
        ruizhao@microsoft.com, Scott Branden <scott.branden@broadcom.com>,
        Ray Jui <ray.jui@broadcom.com>, shji@microsoft.com,
        wangglei@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Shiping
This commit looks good to me.
Yuqing

On Sun, Nov 17, 2019 at 7:10 PM Shiping Ji <shiping.linux@gmail.com> wrote:
>
> This is the device tree bindings for new EDAC driver dmc520_edac.c.
>
> Signed-off-by: Lei Wang <leiwang_git@outlook.com>
> Reviewed-by: James Morse <james.morse@arm.com>
> Reviewed-by: Yuqing Shen <yuqing.shen@broadcom.com>
>  Tested-by: Yuqing Shen <yuqing.shen@broadcom.com>
> ---
>      Changes in v7:
>          - Added arm prefix to the interrupt-config property
>
> ---
>  .../devicetree/bindings/edac/arm-dmc520.txt   | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/arm-dmc520.txt
>
> diff --git a/Documentation/devicetree/bindings/edac/arm-dmc520.txt b/Documentation/devicetree/bindings/edac/arm-dmc520.txt
> new file mode 100644
> index 000000000000..476cf8b76f2a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/arm-dmc520.txt
> @@ -0,0 +1,26 @@
> +* ARM DMC-520 EDAC node
> +
> +Required properties:
> +- compatible  : "brcm,dmc-520", "arm,dmc-520".
> +- reg   : Address range of the DMC-520 registers.
> +- interrupts  : DMC-520 interrupt numbers. The example below specifies
> +     two interrupt lines for dram_ecc_errc_int and
> +     dram_ecc_errd_int.
> +- arm,interrupt-config : This is an array of interrupt masks. For each of the
> +     above interrupt line, add one interrupt mask element to
> +     it. That is, there is a 1:1 mapping from each interrupt
> +     line to an interrupt mask. An interrupt mask can represent
> +     multiple interrupts being enabled. Refer to interrupt_control
> +     register in DMC-520 TRM for interrupt mapping. In the example
> +     below, the interrupt configuration enables dram_ecc_errc_int
> +     and dram_ecc_errd_int. And each interrupt is connected to
> +     a separate interrupt line.
> +
> +Example:
> +
> +dmc0: dmc@200000 {
> + compatible = "brcm,dmc-520", "arm,dmc-520";
> + reg = <0x200000 0x80000>;
> + interrupts = <0x0 0x349 0x4>, <0x0 0x34B 0x4>;
> + arm,interrupt-config = <0x4>, <0x8>;
> +};
> --
> 2.17.1
>
