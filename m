Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A52F467A89
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 16:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381881AbhLCPwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 10:52:43 -0500
Received: from mail-ua1-f44.google.com ([209.85.222.44]:37693 "EHLO
        mail-ua1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233978AbhLCPwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 10:52:42 -0500
Received: by mail-ua1-f44.google.com with SMTP id o1so6290232uap.4
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 07:49:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5lTP3GYrvp77utQMxLBdQ7RLbq80WIEYhMGIxXVDv2M=;
        b=Q/FFlwpTo0mgOgPrd3r04x5oIusg1KjBoa4vlMmhgt5uUw9phjC6vx3DI8a9xnPnVI
         dYZVDXsZKX3+tHDyPh4+XKWTQ0uVjnFGUGTLDZ2a0vOJsJa3y4uJDEwotr22eH+KW89+
         01H9E84FvNXUhGeU2N3WQ6UvmUSvK6KE7FV0LZhz6R5iQbLX6j1VwbubNUltiLzSDFNg
         oliVQXRS92x8cc1OTD/uPvAu6PNKFsikDHiSgVTebx8NjFDzsginAWd63nIUwRfFFhYJ
         i6giLMbWpy56zmhOtZRXudG0YjVtHAvIsjEuucy4/04W3AKGMeKIbpMlPDeBnHScu8IW
         XUBg==
X-Gm-Message-State: AOAM532fcdUl8SlpLURKZk6B+o76NyxhJ+eZf6px5mzNuWapqpKXhcMf
        rm2M0JT7aycInzq4ILl8fpxTGEXYKod24b6P
X-Google-Smtp-Source: ABdhPJwiYFxYvt6lrlPbQZZM9BJO6GYyyJNRz8hq21ncs+Db/TdHazkTUzjGBaC/PQnwadrFZqBHQQ==
X-Received: by 2002:a67:33d1:: with SMTP id z200mr21209446vsz.1.1638546557815;
        Fri, 03 Dec 2021 07:49:17 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id w11sm506784vkm.14.2021.12.03.07.49.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 07:49:17 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id t13so6242442uad.9
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 07:49:16 -0800 (PST)
X-Received: by 2002:a05:6102:e10:: with SMTP id o16mr20781860vst.5.1638546555292;
 Fri, 03 Dec 2021 07:49:15 -0800 (PST)
MIME-Version: 1.0
References: <20211125153131.163533-1-geert@linux-m68k.org> <20211125153131.163533-7-geert@linux-m68k.org>
 <3b8442c7-fafb-421b-cd5b-4b57d1b545c3@canonical.com> <fc4a0c49-1a3f-68d6-de54-820d3e9c0938@microchip.com>
 <738f161a-038a-b6f1-1ff7-65674ae75d06@microchip.com>
In-Reply-To: <738f161a-038a-b6f1-1ff7-65674ae75d06@microchip.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Fri, 3 Dec 2021 16:49:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWrMBpQCyHiQ-ut5=0p1xKU1RF6bGjWGnOv=kdvCtp+Hw@mail.gmail.com>
Message-ID: <CAMuHMdWrMBpQCyHiQ-ut5=0p1xKU1RF6bGjWGnOv=kdvCtp+Hw@mail.gmail.com>
Subject: Re: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock node
To:     Conor Dooley <Conor.Dooley@microchip.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <Lewis.Hanly@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

On Fri, Dec 3, 2021 at 4:30 PM <Conor.Dooley@microchip.com> wrote:
> On 26/11/2021 10:16, conor wrote:
> > On 26/11/2021 09:48, Krzysztof Kozlowski wrote:
> >> EXTERNAL EMAIL: Do not click links or open attachments unless you know
> >> the content is safe
> >> On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> >>> "make dtbs_check" reports:
> >>>
> >>>      arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml:
> >>> soc: refclk: {'compatible': ['fixed-clock'], '#clock-cells': [[0]],
> >>> 'clock-frequency': [[600000000]], 'clock-output-names':
> >>> ['msspllclk'], 'phandle': [[7]]} should not be valid under {'type':
> >>> 'object'}
> >>>        From schema: dtschema/schemas/simple-bus.yaml
> >>>
> >>> Fix this by moving the node out of the "soc" subnode.
> >>> While at it, rename it to "msspllclk", and drop the now superfluous
> >>> "clock-output-names" property.
> >>>
> >>> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> >>> ---
> >>>   arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 13 ++++++-------
> >>>   1 file changed, 6 insertions(+), 7 deletions(-)
> >>>
> >>
> >> It is also logical because refclk usually is not a property of the SoC.
> >> It actually might be a property of board...
> > This is one of the fun FPGAisms like the GPIO interrupt configuration.
> > This clock setting is determined by what design has been loaded onto the
> > FPGA - the msspll outputs are configurable, I could redo my FPGA design
> > and change this to 500 MHz etc. In turn the msspll clock is set by
> > another clock source that is actually on the board of either 100 or 125
> > MHz.
> >
> > Since it's not set until bitstream programming time, I would agree that
> > that property should be moved to out of mpfs.dtsi. (typo fixed)
>
> Geert/Krzysztof,
> Would the following make sense:
> - Since the refclk hardware is a part of the chip, move the refclk out
> of the soc node but leave it in mfps.dtsi
> - The clk freq itself is set by the fpga bitstream, so move the
> clock-frequency property to mpfs-icicle-kit.dts?

That was exactly what I had in mind when I read your previous email.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
