Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 705BB3D780B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 16:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236609AbhG0OHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 10:07:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:54694 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237043AbhG0OGA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 10:06:00 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB78661AD1
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627394761;
        bh=6phzqLnpm1fFZfoZaAPSWln8yJrUHKX4ycKLdIcXbnM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=K3ZxijIzlG+VM6ofdXcU7jTj+jeh4F4KYDJaTJhXen+LX8Yv8lZK8pcHgaUSNkfpd
         KsSUMmhWg2GQWE3Qx4WqwdONT7rKe7Lkph4P7Ljq8z/qvEeBX41NovxSjcIYtf5LUG
         zaiD9MXLtd3B+pwmqTFw/taofesHMsFF/152M3O3AgxOUoGWOmre8vgudSY42wzuxK
         ahXL/vJIp6ek7crwcMv9W48n8kg1H/Dpeox7J5o7Smz46l1zIn2e65hPCLQIos68wF
         Mc/eSPkIbPP9t1uuUbG7zPiJ6JIvrCE2K5aZfz7gyK5WmHv3qwoejknF6yxzKXbWBF
         EusUaMzflpKrg==
Received: by mail-ej1-f50.google.com with SMTP id ga41so22120349ejc.10
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 07:06:00 -0700 (PDT)
X-Gm-Message-State: AOAM533ZnYezu/ZSOW1wsNrei+gfd0/7BMDdjanO0dYx3MNxpgG3FIWo
        IuAyHF5ICBFqGnfdmjzso5dM2YdcN51UtVUyOw==
X-Google-Smtp-Source: ABdhPJwnLvjUVtduIAuKCXEklaDnbI3iHacCDCVMdJQQM2TtKGtGgTh7KzP9Z8+IwGmv4s9P4Vmkv2fny+E51bRIBr8=
X-Received: by 2002:a17:906:b750:: with SMTP id fx16mr15623421ejb.108.1627394759470;
 Tue, 27 Jul 2021 07:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210722084330.1618239-1-linus.walleij@linaro.org>
 <20210723204233.GA2541746@robh.at.kernel.org> <CACRpkdZ7kh9KYhqa+gsmi2kNE350Zse0SUr23s6MPXXbbs0FVw@mail.gmail.com>
In-Reply-To: <CACRpkdZ7kh9KYhqa+gsmi2kNE350Zse0SUr23s6MPXXbbs0FVw@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 27 Jul 2021 08:05:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKDn0UQOTSQhtG7kJ=v1etaDAH3FcLsSN_C92GmSpJ8Og@mail.gmail.com>
Message-ID: <CAL_JsqKDn0UQOTSQhtG7kJ=v1etaDAH3FcLsSN_C92GmSpJ8Og@mail.gmail.com>
Subject: Re: [PATCH 1/2 v2] bus: ixp4xx: Add DT bindings for the IXP4xx
 expansion bus
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 4:42 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Jul 23, 2021 at 10:42 PM Rob Herring <robh@kernel.org> wrote:
> > On Thu, 22 Jul 2021 10:43:30 +0200, Linus Walleij wrote:
> > > This adds device tree bindings for the IXP4xx expansion bus controller.
> > >
> > > Cc: Marc Zyngier <maz@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > > ---
> > > ChangeLog v1->v2:
> > > - Drop unevaluatedProperties: false from the node match.
> > >   additionalProperties: true will be the default.
> > > ---
> > >  ...intel,ixp4xx-expansion-bus-controller.yaml | 149 ++++++++++++++++++
> > >  1 file changed, 149 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> >
> > AFAICT, there is no patch 2/2. If there is it never made the lists.
>
> I have the habit of occasionally just resending the patch that changed.
> Maybe this is a bad habit :/

It is especially without being a reply to the last version as lore
can't find it. Sending as a reply is not well liked either. So just
send the whole thing.

> > Applied, thanks!
>
> Please drop it if you can, I found problems with the bindings...
> It's always more complex.

Dropped.

Rob
