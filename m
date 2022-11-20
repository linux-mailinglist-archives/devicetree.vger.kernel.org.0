Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D7376314B4
	for <lists+devicetree@lfdr.de>; Sun, 20 Nov 2022 15:57:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbiKTO5r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 09:57:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbiKTO5p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 09:57:45 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DD0D639D
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 06:57:37 -0800 (PST)
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D94683F336
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 14:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668956255;
        bh=EAN+jo73jsNjm6NxFzDUZqmJuYIU7qlxt8bnncU4Mvs=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=EweKhtbH0S4qHM3v9TJZWO4zW5LGRlwI3e55xlQOmYfJBZPVcIwG43FJah3h9/Loo
         VUaMHTXJQodT2fa7ASDA+f2Cnn0kyGB8seZ0KGs0dPC/V0Xx1+Lyp+6gaXrL5Ma8V1
         fjPf35TYhk+BVklKXQulT2RPxAAFQ8ZbBfbjSqKKJ6CKkaeaZ+oU3oLTCD+bX2+2Hq
         vzjGc8C1azmt4LubMx3RyAaWd4Wbw/NUSKnj9K5tw4zgM4uXn6TElTwCIaWqLSYwtD
         U5+xOW/shvAzj21CB1VmDChL76vMreGSMBOyyhB2wGccZ9x9Ct23rh3cclEpXu902F
         Oa6dm4htjpYfw==
Received: by mail-yb1-f198.google.com with SMTP id j132-20020a25238a000000b006da635e2073so8907937ybj.2
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 06:57:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EAN+jo73jsNjm6NxFzDUZqmJuYIU7qlxt8bnncU4Mvs=;
        b=qyx4rySRCpZrjsxJK35M3x8DDJ2VfnoCIRaNQtVI8TspAZbRJVyi/UUJFvgoY5mzpZ
         lrPoMieXWkP/zNhoIKvlWbf/klirCR+9zqvkLvnjxsGOGCW7zLJdL7577tzdk1kd64pL
         5dDnD60yD/mz2eqEfY6WJASdA7j23sAjKqjMwxDvdwt4rpUyj3aa7uOO7biMuUFoKDFS
         7RNeEWlOcRhsslUa8q6efTTVaUj9gpBu1zsJCf/2FS90VIVIoQ8bjlHHtCajjTqHOwil
         W4qTf2vUnC2VmZ/nOuZmRygxVTLU+TfBA4gzb5QPgMt9CX4b83VveU8G0IkDCpbbp9aF
         Pkcw==
X-Gm-Message-State: ANoB5pmE7X3aaBw2pKBj/tCP6PyLuXJ9VVIY+NxofsN5WF6VmdebppS4
        xZdLXlmyTfdjyW/Isso407Hl7Qlps8JXj8HgrjAXWKhD9DKiPaEPsF8BmTS/46HqmMR8XzzjiKx
        +2JzxjMpuDmuXtz0F6Ap5zYQNQupyf1LKeXzGAUgjyXQXT6urnbzKB6M=
X-Received: by 2002:a25:ce45:0:b0:6de:39c1:9cb3 with SMTP id x66-20020a25ce45000000b006de39c19cb3mr3991242ybe.469.1668956254620;
        Sun, 20 Nov 2022 06:57:34 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6QE5DtMEWnYNqTxZPXyHbUY3mIe3kVEW/kzSrOH//tkMR00zlzUTh2qwSJqJcuQ+yytC0Ib4Ivku6ASbIQfe0=
X-Received: by 2002:a25:ce45:0:b0:6de:39c1:9cb3 with SMTP id
 x66-20020a25ce45000000b006de39c19cb3mr3991228ybe.469.1668956254419; Sun, 20
 Nov 2022 06:57:34 -0800 (PST)
MIME-Version: 1.0
References: <20221120082114.3030-1-jszhang@kernel.org> <20221120082114.3030-6-jszhang@kernel.org>
In-Reply-To: <20221120082114.3030-6-jszhang@kernel.org>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Sun, 20 Nov 2022 15:57:17 +0100
Message-ID: <CAJM55Z_f=zp3Z=wno_yr7csAUMQ472RiZXD19CrDTTxmGAmU4w@mail.gmail.com>
Subject: Re: [PATCH 5/7] riscv: dts: bouffalolab: add the bl808 SoC base
 device tree
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Jiri Slaby <jirislaby@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 20 Nov 2022 at 09:32, Jisheng Zhang <jszhang@kernel.org> wrote:
>
> Add a baisc dtsi for the bouffalolab bl808 SoC.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/Makefile               |  1 +
>  arch/riscv/boot/dts/bouffalolab/bl808.dtsi | 74 ++++++++++++++++++++++
>  2 files changed, 75 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808.dtsi
>
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index ff174996cdfd..b525467152b2 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> +subdir-y += bouffalolab
>  subdir-y += sifive
>  subdir-y += starfive
>  subdir-$(CONFIG_SOC_CANAAN_K210_DTB_BUILTIN) += canaan
> diff --git a/arch/riscv/boot/dts/bouffalolab/bl808.dtsi b/arch/riscv/boot/dts/bouffalolab/bl808.dtsi
> new file mode 100644
> index 000000000000..c98ebb14ee10
> --- /dev/null
> +++ b/arch/riscv/boot/dts/bouffalolab/bl808.dtsi
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (C) 2022 Jisheng Zhang <jszhang@kernel.org>
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +       compatible = "bouffalolab,bl808";
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +
> +       cpus {
> +               timebase-frequency = <1000000>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               cpu0: cpu@0 {
> +                       compatible = "thead,c906", "riscv";
> +                       device_type = "cpu";
> +                       reg = <0>;
> +                       d-cache-block-size = <64>;
> +                       d-cache-sets = <256>;
> +                       d-cache-size = <32768>;
> +                       i-cache-block-size = <64>;
> +                       i-cache-sets = <128>;
> +                       i-cache-size = <32768>;
> +                       mmu-type = "riscv,sv39";
> +                       riscv,isa = "rv64imafdc";
> +
> +                       cpu0_intc: interrupt-controller {
> +                               compatible = "riscv,cpu-intc";
> +                               interrupt-controller;
> +                               #address-cells = <0>;
> +                               #interrupt-cells = <1>;
> +                       };
> +               };
> +       };
> +
> +       xtal: xtal-clk {
> +               compatible = "fixed-clock";
> +               clock-frequency = <40000000>;

This was discussed many times before, but I think the conclusion was
that the frequency is a property of the crystal on the board, so this
should be 0 in the SoC dtsi, and then overwritten in the board device
tree.

> +               clock-output-names = "xtal";
> +               #clock-cells = <0>;
> +       };
> +
> +       soc {
> +               compatible = "simple-bus";
> +               ranges;
> +               interrupt-parent = <&plic>;
> +               dma-noncoherent;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +
> +               uart0: serial@30002000 {
> +                       compatible = "bouffalolab,uart";
> +                       reg = <0x30002000 0x1000>;
> +                       interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&xtal>;
> +                       status = "disabled";
> +               };
> +
> +               plic: interrupt-controller@e0000000 {
> +                       compatible = "thead,c900-plic";
> +                       reg = <0xe0000000 0x4000000>;
> +                       interrupts-extended = <&cpu0_intc 0xffffffff>,
> +                                             <&cpu0_intc 9>;
> +                       interrupt-controller;
> +                       #address-cells = <0>;
> +                       #interrupt-cells = <2>;
> +                       riscv,ndev = <64>;
> +               };
> +       };
> +};
> --
> 2.37.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
