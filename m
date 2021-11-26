Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9A5145EAE5
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:59:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376677AbhKZKDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 05:03:01 -0500
Received: from mail-ua1-f51.google.com ([209.85.222.51]:40834 "EHLO
        mail-ua1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376607AbhKZKBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 05:01:01 -0500
Received: by mail-ua1-f51.google.com with SMTP id y5so17469936ual.7
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:57:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bG6fgjmJbjSp2KNyv3Q+XgB3WUkmR4jABwA5ga+KCKI=;
        b=NopkQ9JEQWDxK1jtAtfs+YACkG1yUSC2LpGM8ptFQLsqhApReKDn6+NXBwp08j5Ifa
         5Fv6WmF95T5vwphTPMN3rfKLlp/3HJls8ARyiCccURqqQKoX1Et0s1fx56tKeQ2WWY6D
         otv8+SHPrM63e2S6fFnlX3gS5YyISqtjgTYBPDZRSuZ1puURPiVdO+WmnrP7qybYUIBY
         CLzJ2fzq6le5/vLiIr5sxW0piZ7IEHBOwMlUyhzFb9b0t5eh+uVCtihP4eX+2jjjfDzB
         aGzzbBD5g2M5Wm/7NCW7LnMD4iXRH1C6SbvckCj/z+E235jpBeMVRE5Vc7CFGeEomEi9
         nUUw==
X-Gm-Message-State: AOAM5315SjWNwfv/Mx6KbhVzwM16VWMC/we8bgmgSdfBFx7NK2ZKKSSC
        c4MrEv+n4j/h9iqEpD6cNfeywkpI+UGkZA==
X-Google-Smtp-Source: ABdhPJzry5MtN0MWfQxQAhFAKX67HKO6siiA+t91upa2iSBfbo4hPnGslKmfyZZ4sUNovAKQc2SXCw==
X-Received: by 2002:a67:6783:: with SMTP id b125mr15015248vsc.81.1637920667878;
        Fri, 26 Nov 2021 01:57:47 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id e13sm3137026vkd.21.2021.11.26.01.57.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:57:47 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id y5so17469789ual.7
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:57:46 -0800 (PST)
X-Received: by 2002:a67:c106:: with SMTP id d6mr16323718vsj.77.1637920666777;
 Fri, 26 Nov 2021 01:57:46 -0800 (PST)
MIME-Version: 1.0
References: <20211125153131.163533-1-geert@linux-m68k.org> <20211125153131.163533-4-geert@linux-m68k.org>
 <2d87b40e-9fdf-572a-a194-afc13fc20dba@canonical.com>
In-Reply-To: <2d87b40e-9fdf-572a-a194-afc13fc20dba@canonical.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Fri, 26 Nov 2021 10:57:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU9nqr4ke3eRK7s096EHAfZma++ssjo0jnomf1N7Vy_pw@mail.gmail.com>
Message-ID: <CAMuHMdU9nqr4ke3eRK7s096EHAfZma++ssjo0jnomf1N7Vy_pw@mail.gmail.com>
Subject: Re: [PATCH 3/9] riscv: dts: microchip: mpfs: Drop empty chosen node
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Fri, Nov 26, 2021 at 10:53 AM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
> On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> > It does not make sense to have an (empty) chosen node in an SoC-specific
> > .dtsi, as chosen is meant for system-specific configuration.
> > It is already provided in microchip-mpfs-icicle-kit.dts anyway.
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> >
> > Fixes: 0fa6107eca4186ad ("RISC-V: Initial DTS for Microchip ICICLE board")
> > Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > ---
> >  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > index c9f6d205d2ba1a5e..794da883acb19256 100644
> > --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > @@ -9,9 +9,6 @@ / {
> >       model = "Microchip PolarFire SoC";
> >       compatible = "microchip,mpfs";
> >
> > -     chosen {
> > -     };
> > -
> >       cpus {
> >               #address-cells = <1>;
> >               #size-cells = <0>;
> >
>
> Maybe bootloader expects it? E.g. it looks for node and fills it and
> would fail if the node is missing?

Already present in board DTS.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
