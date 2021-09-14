Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2B5540AE63
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 14:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232929AbhINM6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 08:58:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:59958 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232716AbhINM6o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 08:58:44 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 410756112D
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 12:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631624247;
        bh=cauLhA0x1RF0EX5eyG3TESBUUDun6oKtfMyn9eExmpw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=TW9CCGOTU+iupVQMAfElQlNRV9SUjuRmobMjtfX7PyaEU4cl2IkNiFxJbEAULlQAJ
         2XQ6EntqSsOhSy41DIJTbxyvCDUV0ASIFoxCisCgsDBm8kKM6ediRHSp6pgJJDXSW8
         BQ/QA2ICyd1DIA8Wc4u+b1EiPHOUHZkFmeeZv2EyH37vomus7R8tYKGTAcVjesxnBd
         WH2w78LaYhqCwYiB/QGK0CjjxbYUuFqf4r+S7qN9j8gDCzJcgqe5bhe+ZnbfPuFIog
         U7U+PZGiqaZzPvphi/viP6kK71ls/XfdeWacBGTuoK1ym/ZNap6lWaKFnQ0diCPHj/
         Gj+1rhBkI7GVg==
Received: by mail-ej1-f45.google.com with SMTP id ho42so28658953ejc.9
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 05:57:27 -0700 (PDT)
X-Gm-Message-State: AOAM531MmIc3prTh5f/yb9hF/9peCrrt8N5Ef3kiFoaN3X+HvY8+i++7
        OCje5wZElcmHgaU9byUO3/VvnFNFhQKrRgiABg==
X-Google-Smtp-Source: ABdhPJzmlfdOd8kPqyHKndAMzKDtZW//O7LuukiOSIKBRb9LWJVZP54i7PM0AHhnZ2yXYkaDSBL6z6fl5eDcje+OiU4=
X-Received: by 2002:a17:906:7217:: with SMTP id m23mr18716103ejk.466.1631624245845;
 Tue, 14 Sep 2021 05:57:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-30-maxime@cerno.tech>
 <YTJ7Nf9s1fr3kJny@robh.at.kernel.org> <YTXZIn7d5yrRcO0o@google.com> <20210914071208.7xalrr2qskzdncgs@gilmour>
In-Reply-To: <20210914071208.7xalrr2qskzdncgs@gilmour>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 14 Sep 2021 07:57:13 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK2v4EkFfi9rJeRE5SvONTYKZADLQ79aqoTXQ7ZW74exA@mail.gmail.com>
Message-ID: <CAL_JsqK2v4EkFfi9rJeRE5SvONTYKZADLQ79aqoTXQ7ZW74exA@mail.gmail.com>
Subject: Re: [PATCH v2 29/52] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 2:12 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Mon, Sep 06, 2021 at 10:02:26AM +0100, Lee Jones wrote:
> > On Fri, 03 Sep 2021, Rob Herring wrote:
> >
> > > On Wed, 01 Sep 2021 11:18:29 +0200, Maxime Ripard wrote:
> > > > The X-Powers AXP PMICs are supported by Linux thanks to its device tree
> > > > binding.
> > > >
> > > > Now that we have the DT validation in place, let's convert the device
> > > > tree bindings for that driver over to a YAML schema.
> > > >
> > > > Cc: Chen-Yu Tsai <wens@csie.org>
> > > > Cc: Lee Jones <lee.jones@linaro.org>
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > >
> > > > ---
> > > >
> > > > Changes from v1:
> > > >   - Add GPIO example
> > > >   - Remove the limitation on regulator-ramp-delay
> > > > ---
> > > >  .../i2c/allwinner,sun6i-a31-p2wi.yaml         |   2 +-
> > > >  .../devicetree/bindings/mfd/axp20x.txt        | 273 ------------
> > > >  .../bindings/mfd/x-powers,axp152.yaml         | 400 ++++++++++++++++++
> > > >  3 files changed, 401 insertions(+), 274 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > >
> > > Note that the gpio child schema needs to be applied with this one.
> >
> > Not sure I'm in possession of that.
>
> So, how do you want to merge that? Through the DT tree?

Resend the MFD and child patches in a series to Lee.

Rob
