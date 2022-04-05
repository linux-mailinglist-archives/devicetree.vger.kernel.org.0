Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ECB04F4174
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 23:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241999AbiDEN6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 09:58:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377244AbiDENX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 09:23:57 -0400
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FBAB43ACC
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 05:27:07 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id c4so10689368qtx.1
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 05:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h6y71UMdppJimJTZBi5WTCZ7XXmCUTqDhxDjDYyVJQA=;
        b=YHMp83YJGQ5KXp84WBoMwZI4c6n/QaXeiqnZBvMrf8KSTXP7/nyxzaB6Ev8GoJIcnF
         zl0otrqjfFPcRaypEw5SKN/cnlvWrcLC+z2BS3gnIGiQZwoq4hwzXjm6nlTolx6RtXWu
         H37tPQuSNYy9HslFXXq/l0pJ5rlNu+FiGpOM1ZB/MDV2vQqEfBRT+4BtufguamlE+J/h
         OmmKH1cO8giG9Jd/pzafKjnAO68NgAB6N/2EXb5cGI7u9nw+Y9Iwo06xl6pVqAmV5gyI
         dThVw5Ujh2kwJXuo9xtH5zhjfdI+FfQVNREU8sBD+VP/SzOxSS/y5dNseRNGPDCtE5rv
         Km/A==
X-Gm-Message-State: AOAM533yYbGBP+C+Vq79kBRP9RiXVEAYY4fB3kO6ic3M7PE6bKi1J7H8
        SD4ama4x6ADaGcgCLz4itwm1+tx1tR1bmQ==
X-Google-Smtp-Source: ABdhPJzRC07Qy9Br9/Reb012UwgOBF/9gTmx/WLdjLtgU+Lp4/usqCK6FzbU1sGq2LhJv73IbdOc/g==
X-Received: by 2002:a05:620a:28c7:b0:67d:6d4e:16ee with SMTP id l7-20020a05620a28c700b0067d6d4e16eemr1928265qkp.59.1649161625827;
        Tue, 05 Apr 2022 05:27:05 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id p16-20020a05620a22b000b0067b7b158985sm7580952qkh.128.2022.04.05.05.27.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 05:27:05 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id z33so18538510ybh.5
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 05:27:04 -0700 (PDT)
X-Received: by 2002:a25:d044:0:b0:63d:b49f:34ae with SMTP id
 h65-20020a25d044000000b0063db49f34aemr2399167ybg.546.1649161624663; Tue, 05
 Apr 2022 05:27:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
In-Reply-To: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Tue, 5 Apr 2022 14:26:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW4BKSxucwgZS0TUAKd26kmrWbpsMbDmDYSs9yo5tWH=A@mail.gmail.com>
Message-ID: <CAMuHMdW4BKSxucwgZS0TUAKd26kmrWbpsMbDmDYSs9yo5tWH=A@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
To:     Niklas Cassel <Niklas.Cassel@wdc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Niklas,

On Tue, Mar 8, 2022 at 2:30 PM Niklas Cassel <Niklas.Cassel@wdc.com> wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> According to the K210 Standalone SDK Programming guide:
> https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf
>
> Section 15.4.3.3:
> SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
> SPI3 supports: standard, dual and quad transfers (octal is not supported).
>
> In order to support quad transfers (Quad SPI), SPI3 must have four IO wires
> connected to the SPI flash.
>
> Update the device tree to specify the correct bus width.
>
> Tested on maix bit, maix dock and maixduino, which all have the same
> SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
> would not make sense for this k210 board to be designed differently.
>
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
> Changes since v1:
> -Add the new properties directly after spi-max-frequency for all DT board
>  files.

Thanks for your patch, which is now commit 6846d656106add3a ("riscv:
dts: canaan: Fix SPI3 bus width") in v5.18-rc1.

> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> @@ -203,6 +203,8 @@ flash@0 {
>                 compatible = "jedec,spi-nor";
>                 reg = <0>;
>                 spi-max-frequency = <50000000>;
> +               spi-tx-bus-width = <4>;
> +               spi-rx-bus-width = <4>;
>                 m25p,fast-read;
>                 broken-flash-reset;
>         };

On MAiX BiT, I get:

    +spi spi1.0: setup: ignoring unsupported mode bits a00
     spi-nor spi1.0: gd25lq128d (16384 Kbytes)

Perhaps this depends on a not-yet-applied patch to add quad support
to the SPI driver?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
