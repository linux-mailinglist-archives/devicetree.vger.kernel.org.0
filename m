Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 504E230E42D
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 21:49:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232114AbhBCUmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 15:42:04 -0500
Received: from mail.kernel.org ([198.145.29.99]:52372 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231951AbhBCUl4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Feb 2021 15:41:56 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E00764F76
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 20:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612384875;
        bh=a155rDiUOTottK3BkpGV7GBGnkCxskQN2uR3TL7Vctw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=hi43SE5VpL/+cZC2xHvp1iDB1HfNWB/jwplmjUvPf1PaeWmLra9S7qAc/fZ+Kcd/F
         e0KFp8e7TA28FbsvGIWn2ZvQDpKj8CmDkcxhZYzMg0oVENlnqBuFXnEHZzOUrX9mGm
         8GmGdyRZGbossbnmqv+TGU8ZDn5g7CV1s962DWN7TcPKgBwJhg0ej5XUCWr8wcJSPN
         uCHiE4dTcff9kqiym+On1aVI3iaKoGm3yFNUdwV61JpYBk9P4AAU0aItD3g8r0gzJA
         epJC8AtZ/2Qreqx/D//5PjD5YQOLrFhr3L0d/M1WKi+goaHc8IHi2ApnLsIzFaWkR7
         j+Sud+9q3UsQw==
Received: by mail-ej1-f53.google.com with SMTP id p20so1256143ejb.6
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 12:41:15 -0800 (PST)
X-Gm-Message-State: AOAM532ISTm5Aiq0NDA1aZVFZIZKyH8rOXQXgsAkTamqC3D85qq4Rqee
        ANRg06Y+TqOXKyOOZtRDFMaYbQs9pLZrhOLpvQ==
X-Google-Smtp-Source: ABdhPJwo6MDaFeVcL5eSWg9cKv2dOm2G3R6qtzjS3WgxrTzbKoMsX4swNQLb31rSbGCbi1pcSPUcmAZ5xShD6BHyT80=
X-Received: by 2002:a17:906:af41:: with SMTP id ly1mr4830556ejb.525.1612384873695;
 Wed, 03 Feb 2021 12:41:13 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com> <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <89cccbae5add85c7bd811f3819ea3db7061e928d.camel@wdc.com>
In-Reply-To: <89cccbae5add85c7bd811f3819ea3db7061e928d.camel@wdc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 3 Feb 2021 14:41:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJeF364bPSNQLGujNHDkA7x8H_H7YXQFNZQ7vDzdAevcA@mail.gmail.com>
Message-ID: <CAL_JsqJeF364bPSNQLGujNHDkA7x8H_H7YXQFNZQ7vDzdAevcA@mail.gmail.com>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Damien Le Moal <Damien.LeMoal@wdc.com>
Cc:     "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "seanga2@gmail.com" <seanga2@gmail.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 3, 2021 at 6:52 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On Tue, 2021-02-02 at 13:02 -0600, Rob Herring wrote:
> > On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
> > >
> > > The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
> > > interrupts property description and maxItems. Also add the standard
> > > ngpios property to describe the number of GPIOs available on the
> > > implementation.
> > >
> > > Also add the "canaan,k210-gpiohs" compatible string to indicate the use
> > > of this gpio controller in the Canaan Kendryte K210 SoC. If this
> > > compatible string is used, do not define the clocks property as
> > > required as the K210 SoC does not have a software controllable clock
> > > for the Sifive gpio IP block.
> > >
> > > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > > Cc: Rob Herring <robh@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> > > ---
> > >  .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
> > >  1 file changed, 18 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> > > index ab22056f8b44..2cef18ca737c 100644
> > > --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> > > +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> > > @@ -16,6 +16,7 @@ properties:
> > >        - enum:
> > >            - sifive,fu540-c000-gpio
> > >            - sifive,fu740-c000-gpio
> > > +          - canaan,k210-gpiohs
> > >        - const: sifive,gpio0
> > >
> > >    reg:
> > > @@ -23,9 +24,9 @@ properties:
> > >
> > >    interrupts:
> > >      description:
> > > -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
> > > +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
> > >      minItems: 1
> > > -    maxItems: 16
> > > +    maxItems: 32
> > >
> > >    interrupt-controller: true
> > >
> > > @@ -38,6 +39,10 @@ properties:
> > >    "#gpio-cells":
> > >      const: 2
> > >
> > > +  ngpios:
> > > +    minimum: 1
> > > +    maximum: 32
> >
> > What's the default as obviously drivers already assume something.
> >
> > Does a driver actually need to know this? For example, does the
> > register stride change or something?
> >
> > Please don't add it if the only purpose is error check your DT (IOW,
> > if it just checks the max cell value in gpios phandles).
>
> If I remove that, make dtbs_check complains. Looking at othe gpio controller
> bindings, they all have it. So isn't it better to be consistent, and avoid make
> dtbs_check errors ?

That would mean you are already using 'ngpios' and it is undocumented
(for this binding). If already in use and possibly having users then
that changes things, but that's not what the commit msg says.

Not *all* gpio controllers have ngpios. It's a good number, but
probably more than need it though. If we wanted it everywhere, there
would be a schema enforcing that.

Rob
