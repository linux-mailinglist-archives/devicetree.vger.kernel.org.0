Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 304B6429CD0
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 06:56:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231866AbhJLE6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 00:58:53 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48462
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229733AbhJLE6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 00:58:53 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 894EB3F2FF
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634014610;
        bh=BCyxVEf5Gp0uM4KfbTjyQDlhtbT74n2HOTEb9vV8RKU=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=SGE2u3v0+ZYgbeubZ9KTDjW0yrG6mC96i8C0ZBsJsS+q15cCOlozr07Q2AIlz12/4
         3smJeJaHRwU6EoHNK5Saa9hcovQONcfmawhiTjXY9cdFeescek9Ui0ZPac7ExcS3n/
         VrAkMwXyhehTPdZ86XWgwOVn5IH9L1ebvvPVuO/bEApiR1eRfzv8ZAig/hhZcn0Spi
         n1Oj+cyDrW8n4spZylsIJJOgtRg41wg6Nf0jwWCCBz9pRSnGWk1XfupjVllnIcTQdQ
         gB8fMSQJo96kHGyZbvlfkKrjlLF02G9HnW4utB0PwEgCVaBlM2+m8Nhhwr4b4yuaso
         8Yje8La/gG8Ew==
Received: by mail-ed1-f69.google.com with SMTP id v2-20020a50f082000000b003db24e28d59so17787215edl.5
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 21:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BCyxVEf5Gp0uM4KfbTjyQDlhtbT74n2HOTEb9vV8RKU=;
        b=mX472/4D+/zdzGEDAuiaxrzBTZkNw0JQRy9ipDYvdrcSYzi8B2gPv0MjNizJRpO19H
         NGvgXzIfHrcNl840KlLoyvHiz2iZXLLsgTW6TlEt5CnzqeHB1zTzyBgPGWkfrctHbN8c
         myA3hrLuQnF2Lt6HQJ7wMIiu9cuz28Sq8e41pegKP+3PhvkbepSehOeAosr9qsJvs7U3
         uU2XYKwQPVfpfwbjVkxAHck2X0ID7DoTIuYghnW+YgHVVJOpGbUFN8HcjxanXbbxvqgx
         r2p1vGyrxRVh0PWMId90ZQrvp80Pb4Ye389goyBnFRnn6CiU3eAcFyFyA2eNFL2QJUy9
         HXfg==
X-Gm-Message-State: AOAM533TMGF49nAT3nAn8R/42dJJgZ5DT6dJgQ6ixo/EbnvhfPc9ed91
        DA+Nq/W6scQyMvrK7Xi7h+PEEH74Y+AJSFLRiDCbRx7G2Cb4XUMfVpizYD2khEt01NdrgFSM/fY
        EMVtruRQpOSfKc/6hrcIaGf9aZ7WfyscE/kKgVbV9v57n+YqyHN/EGog=
X-Received: by 2002:a17:906:9414:: with SMTP id q20mr31344874ejx.241.1634014609951;
        Mon, 11 Oct 2021 21:56:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfX0PyiKdpuHUayAwncldug3i/rdZwjBSq4PyX9ATI6GhXFboX9vjkwh4+o6rNFZcu+ZPtQZmAMuoSunAduXw=
X-Received: by 2002:a17:906:9414:: with SMTP id q20mr31344867ejx.241.1634014609793;
 Mon, 11 Oct 2021 21:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com> <20210920130248.145058-3-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210920130248.145058-3-krzysztof.kozlowski@canonical.com>
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
Date:   Tue, 12 Oct 2021 06:56:38 +0200
Message-ID: <CA+zEjCvhBYW5-QSRtanQjUsbB2Oqx79WaVpmRWnb+qOLU9pZqg@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 3/5] riscv: dts: sifive: drop duplicated nodes
 and properties in sifive
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
> The DTSI file defines soc node and address/size cells, so there is no
> point in duplicating it in DTS file.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
> ---
>
> Changes since v1:
> 1. None
> ---
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 5 -----
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 -----
>  2 files changed, 10 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 2b4af7b4cc2f..ba304d4c455c 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -8,8 +8,6 @@
>  #define RTCCLK_FREQ            1000000
>
>  / {
> -       #address-cells = <2>;
> -       #size-cells = <2>;
>         model = "SiFive HiFive Unleashed A00";
>         compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000",
>                      "sifive,fu540";
> @@ -27,9 +25,6 @@ memory@80000000 {
>                 reg = <0x0 0x80000000 0x2 0x00000000>;
>         };
>
> -       soc {
> -       };
> -
>         hfclk: hfclk {
>                 #clock-cells = <0>;
>                 compatible = "fixed-clock";
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> index 9b0b9b85040e..4f66919215f6 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> @@ -8,8 +8,6 @@
>  #define RTCCLK_FREQ            1000000
>
>  / {
> -       #address-cells = <2>;
> -       #size-cells = <2>;
>         model = "SiFive HiFive Unmatched A00";
>         compatible = "sifive,hifive-unmatched-a00", "sifive,fu740-c000",
>                      "sifive,fu740";
> @@ -27,9 +25,6 @@ memory@80000000 {
>                 reg = <0x0 0x80000000 0x4 0x00000000>;
>         };
>
> -       soc {
> -       };
> -
>         hfclk: hfclk {
>                 #clock-cells = <0>;
>                 compatible = "fixed-clock";
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
