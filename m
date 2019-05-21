Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF0B62485A
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 08:47:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726883AbfEUGrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 02:47:16 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36363 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726318AbfEUGrQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 02:47:16 -0400
Received: by mail-wm1-f68.google.com with SMTP id j187so1590509wmj.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 23:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dtcdsu0fUtok0q96jnMGpWM0fc0NoVZ6NVYcC/TU3EI=;
        b=KeH2Aa8UGeY3ald/vMtEvRNEPoOZgF6ZxP+nhAsZupukHiOm8t0PXqEZS/WBoeHG/0
         7vTSdr7BTbtHz2o2Jqvx7wMH1SmkqwzYd5Gdg/w0hH3eL/OlPpzUlozsZ4rN6E/h7sMd
         bMdDLCwW+K7eQEPgfsVVK5lh7g25N8mZ7wUgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dtcdsu0fUtok0q96jnMGpWM0fc0NoVZ6NVYcC/TU3EI=;
        b=QlaXFuGqJlvEZNXQ7GqnBfFrD33mxFvb7+I7quoE3vQ7AmJO1LD9mfHK9rNTK81Oir
         k1zK5upjpPkfcWSvX35uf2R5U0E/INUM3YwJvPEOnJSQG10ie1Bp+9mZ6C4B+va6GKZO
         fHZzSDpRiENEYbNHpv4bmKazHAKMLeUTJ3A5mspcIWOFfVZ7QshznBjiFJ2Dncj62yNh
         R6ESsrwXO2+afcSVZ1+3ssgLMtlvDlypLz08mmy89+oPJs9CQDMoTG2TzNdlfZVJRhcN
         kaxsC/MR/INbd1CiRVUAn3BW0VKifQRmR/KNiCmF0zQQSimdJl8pzltiAZVhYPCjp56h
         6iyA==
X-Gm-Message-State: APjAAAUfCZw/ZMzdoWI4MP3fqwHUg9HgfsFo84AJKIkdG3VlV3wyDLqt
        5xGD1Z6If2aLn+ItFjh6HrSm3ziOvPhWNLzbs4B5/A==
X-Google-Smtp-Source: APXvYqzfKKX+FWJFZbOOtvY+5rX4F4OJzEUSEX+qaWWcrbh0PkdH/kOZOIQuqFdUHG1hJoLc5d9aCY/fi8EkfoSZ+9Y=
X-Received: by 2002:a1c:7310:: with SMTP id d16mr1907943wmb.65.1558421233660;
 Mon, 20 May 2019 23:47:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190418141658.10868-1-jagan@amarulasolutions.com> <20190418145641.q23tupopz2czjzc5@flea>
In-Reply-To: <20190418145641.q23tupopz2czjzc5@flea>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Tue, 21 May 2019 08:47:02 +0200
Message-ID: <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable CAN
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime

On Thu, Apr 18, 2019 at 4:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Apr 18, 2019 at 07:46:58PM +0530, Jagan Teki wrote:
> > Oceanic 5205 5inMFD has MCP2515 CAN device connected via SPI1.
> >
> > - via SPI1 bus
> > - vdd supplied by 5V supply along with PL2 enable pin
> > - xceiver supply same as vdd
> > - can oscillator connected at 20MHz
> > - PB2 gpio as interrupt pin
> > - PD6 gpio as RX_BUF1_CAN0
> > - PD7 gpio as RX_BUF0_CAN0
> >
> > Tested-by: Tamas Papp <tamas@osukl.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../sun50i-a64-oceanic-5205-5inmfd.dts        | 43 +++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > index f0cd6587f619..22535a297f51 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > @@ -21,6 +21,24 @@
> >       chosen {
> >               stdout-path = "serial0:115200n8";
> >       };
> > +
> > +     can_osc: can-osc {
> > +             compatible = "fixed-clock";
> > +             #clock-cells = <0>;
> > +             clock-frequency = <20000000>;
> > +     };
> > +
> > +     reg_can_v5v: reg-can-v5v {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "reg-can-v5v";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             regulator-boot-on;
> > +             enable-active-high;
> > +             gpio = <&r_pio 0 2 GPIO_ACTIVE_HIGH>; /* CAN_3V3_EN: PL2 */
> > +             status = "okay";
>
> You don't need the status property here.
>

Correct, need to be dropped

> > +     };
> > +
> >  };
> >
> >  &ehci0 {
> > @@ -77,6 +95,31 @@
> >       status = "okay";
> >  };
> >
> > +&pio {
> > +     can_pins: can-pins {
> > +             pins = "PD6",                   /* RX_BUF1_CAN0 */
> > +                    "PD7";                   /* RX_BUF0_CAN0 */
> > +             function = "gpio_in";
> > +     };
> > +};
>
> That isn't needed. What are they used for, you're not tying them to
> anything?

Mux of their function is correct. They are connected in the schematics
but not used right now.
I can garantee that kernel wlll always configurred in the right way
and if I want I can export in userspace
for debug purpose

Michael


>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



--
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
