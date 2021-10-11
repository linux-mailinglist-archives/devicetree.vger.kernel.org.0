Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86CAD429705
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 20:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232202AbhJKSoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 14:44:05 -0400
Received: from mail.kernel.org ([198.145.29.99]:36964 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232137AbhJKSoF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Oct 2021 14:44:05 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0537F60EB1
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 18:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633977725;
        bh=hoYSt9zJ7gblctsTD1xqU6UBG1JIdB6IhQ5HhTiGdN4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=abR3MBV5MYpHe5vwlTDqZFZLxOrA2WTOaCvHYAMinYlmlOrUq4bbZ4Pv8KjX8/Alc
         E9nJ7YoXAS6ETAWB3r9E+Rf7bMamqGBF78v8Mbn+7Im9MtLbeaumwSL4bOAkwrUirC
         i1UxLEiQ1tnuHh0l/uVbdV2qBEX9qau32WrkIpDVjezzaOtmqNX8X4epmdIhSEmMo5
         S2e2K726+24VCEd4GPjglZ5CAdykmTZW8lmevGBG011SeXrHm1//PsomvCU2T2ppwa
         43Pw4FqKxm2CEpLynZ++JhbuFx2bKF3RvTc4jUgY1VDwKLCVKWmG6TX+gZndL8kRjX
         gKbR9bg0FeaKw==
Received: by mail-ed1-f51.google.com with SMTP id i20so54889706edj.10
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 11:42:04 -0700 (PDT)
X-Gm-Message-State: AOAM531yXwNkGSbCkizMo/7ir46wFtSG+pgN5+tDHw7Nwqvo0vduFLxk
        Adc0ZZJTeTd6JRuHL+seh9UHOkgdBzUNoZ5V1g==
X-Google-Smtp-Source: ABdhPJywv8fGmhk1mf+HyQ4w9xB10/jc+wD8EAQOzSfHjr1YBOzCjjO57IbflJOw2WQ2NS6iX0NGP79Mcba9uDjgq64=
X-Received: by 2002:a05:6402:4382:: with SMTP id o2mr8810066edc.271.1633977723437;
 Mon, 11 Oct 2021 11:42:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211011094624.3416029-1-msp@baylibre.com> <20211011094624.3416029-2-msp@baylibre.com>
 <1633959378.242329.504943.nullmailer@robh.at.kernel.org> <20211011134301.rkkblnj4bfowghu7@blmsp>
In-Reply-To: <20211011134301.rkkblnj4bfowghu7@blmsp>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 11 Oct 2021 13:41:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+9YLo2hdu4jyAzfZLdUaHYWQMhc7+h0eE9Qf2KU6Vzng@mail.gmail.com>
Message-ID: <CAL_Jsq+9YLo2hdu4jyAzfZLdUaHYWQMhc7+h0eE9Qf2KU6Vzng@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 11, 2021 at 8:43 AM Markus Schneider-Pargmann
<msp@baylibre.com> wrote:
>
> Hi,
>
> On Mon, Oct 11, 2021 at 08:36:18AM -0500, Rob Herring wrote:
> > On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> > > DP_INTF is a similar functional block to mediatek,dpi but is different
> > > in that it serves the DisplayPort controller on mediatek SoCs and uses
> > > different clocks. Therefore this patch creates a new binding file for
> > > this functional block.
> > >
> > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > ---
> > >
> > > Notes:
> > >     Changes v3 -> v4:
> > >     - Fixed clock names in the example as the clock patch series is merged into
> > >       next now
> > >     - Add missing ports decleration to the example
> > >
> > >     Changes v1 -> v2:
> > >     - Move the devicetree binding from mediatek,dpi into its own binding file.
> > >
> > >  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
> > >  1 file changed, 86 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.example.dts:21:18: fatal error: dt-bindings/clock/mt8195-clk.h: No such file or directory
> >    21 |         #include <dt-bindings/clock/mt8195-clk.h>
> >       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> The mt8195 clock series was already merged and is available in
> linux-next. I checked with make dt_binding_check before sending.

The bot has no way of knowing that, and the dependency is not called
out in this patch for me to know that when reviewing the failures.

Rob
