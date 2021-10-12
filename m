Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF8F429C98
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 06:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232560AbhJLEiq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 00:38:46 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48130
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232707AbhJLEik (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 00:38:40 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B02C83F338
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634013398;
        bh=cFDVYMnrfSERHChsUSOafRsFEi1MyUR6LNHqzOlq5OI=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=mGWC7i+nYnKJ26isJGMXP4rXSRW2pbFAfkAFCqJ9GBQ0O0itnbo3Ix5dYljYEQ5gC
         ZFMUA1qOtNv6s10jcZRTfKTxem0MdgxJwNj44r/9mTu5eof5NJ3OUJX5gNyXQF487J
         GGTcDki+Bj1nCX4ZKDSOW7/401fX4kPzKk+PfQQ+020gaO0sjzrH0yevrOtaIZaWuw
         RB/nH7/gvcRc/rdNr3J/ww7KXZyoRTzB5WIQXF7+7EgHHXVO7awPf0c49gQq5Erfnk
         HwIErTAQb8BxrLN8Hf+A9JSb1NymNg9RqLT8iOd8XfxSyPl/PE5rZFiVZp8paUyesl
         VCBvMFwi/s31g==
Received: by mail-ed1-f69.google.com with SMTP id c8-20020a50d648000000b003daa53c7518so17716191edj.21
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 21:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cFDVYMnrfSERHChsUSOafRsFEi1MyUR6LNHqzOlq5OI=;
        b=Ky6QaWPbTzk3U66YXO/imgFYU1y1BonJ90c8olk/yMS6oN36xhneSGXnE+X8wfo+Jl
         wGaTrD4IidUREPCEXutEo0HFjJBPUPfPQY8iaxSEW3rJAshhr2YDuOCA9XE7kp3ecoKo
         x0lRISzZTS2eMAS4FlujSqUoKfeT/VliIOTj5zzaAzYt4xEUBuc0AIxIxADYLI4Y4zSf
         RdZr0UQ6XWq8jkbYFS/g+h3DgeGwigs4W7c8bLS4wKs6WPb/S4Jn2ihRzEFvGpplG3tx
         XmaDjcD8vyGf4dSI66bBcn25e1gurbBsyqbbWlU0QS/LSt/yrFVEY4a9SZ2unrAecdgP
         uBKg==
X-Gm-Message-State: AOAM5304WWmFPscD2SJWD27cVOMypVMnv/0szWTziKOsonUkjAwGG5Tc
        9o2d4EXTVSayLmtSj1gFpnjINrIfgdFakhMTOv2M0OaTQhWY7LhQCXD+Mlz6FGRIB68UEdGvQAS
        x7Xu36dkhcpTw8pvp1VEjBHZuzpNcMlnK3Q2vY8vKxM/eywBL+J01UGk=
X-Received: by 2002:a05:6402:190e:: with SMTP id e14mr8901007edz.20.1634013397730;
        Mon, 11 Oct 2021 21:36:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDAwwNTxVTuAVNY2n7n4y7mjZ5+Vt7PQuywm97RBU9A4oXQFDeAQroJkl9fWjqHzLrLVVabbYnoGObk9MrsVI=
X-Received: by 2002:a05:6402:190e:: with SMTP id e14mr8900996edz.20.1634013397600;
 Mon, 11 Oct 2021 21:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com> <20210920130248.145058-2-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210920130248.145058-2-krzysztof.kozlowski@canonical.com>
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
Date:   Tue, 12 Oct 2021 06:36:25 +0200
Message-ID: <CA+zEjCtE6OQEcgV3GG3OxdKL0JB+dBWCij35MMd-XVZnTcbsrA@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 2/5] riscv: dts: sifive: fix Unleashed board compatible
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 20, 2021 at 3:05 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Add missing sifive,fu540 compatible to fix dtbs_check warnings:
>
>   arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: /: compatible: 'oneOf' conditional failed, one must be fixed:
>   ['sifive,hifive-unleashed-a00', 'sifive,fu540-c000'] is too short
>   'sifive,hifive-unleashed-a00' is not one of ['sifive,hifive-unmatched-a00']
>   'sifive,fu740-c000' was expected
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
> ---
>
> Changes since v1:
> 1. None
> ---
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 633b31b6e25c..2b4af7b4cc2f 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -11,7 +11,8 @@ / {
>         #address-cells = <2>;
>         #size-cells = <2>;
>         model = "SiFive HiFive Unleashed A00";
> -       compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
> +       compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000",
> +                    "sifive,fu540";
>
>         chosen {
>                 stdout-path = "serial0";
> --
> 2.30.2
>
>

This looks good to me, you can add:

Reviewed-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
Tested-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>

Thanks,

Alex

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
