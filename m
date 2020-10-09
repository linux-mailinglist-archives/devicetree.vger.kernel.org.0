Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62FBA288C3D
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 17:08:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389205AbgJIPID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 11:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389204AbgJIPIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 11:08:02 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67606C0613D5
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 08:08:02 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id o8so9292922otl.4
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EtjLWKJFue0vK7WaUt5mt/PBNN3FQJOzAr2kYHkLPv8=;
        b=gpnctwMTV3eOVEwOX4e5GML8IasYEcTd3Zw0QloPKx2YG8Mf25be+bdRJyNwxDgFmz
         5YJ7C8s3wdDR4kYeqFf4Zu0KJDFpD/7pQhtymKxiDtg7pMiEKr4PuZGmpdZ3Y7WimSzU
         TxTe+R47JswtRQsvkQdL2ULxv56B34fEN/FEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EtjLWKJFue0vK7WaUt5mt/PBNN3FQJOzAr2kYHkLPv8=;
        b=VuGMXcQFGoGEO/BgKpQnO0SeF70qE/M8ldVC/BMYhO2xYu1t4M8FhiPKfe18kLLTSG
         buKJ5lK9B9sKJ4qfjaspI2QzJvqQ+Ncv7jqWkFYMSrSIbKlHr/CzSFqnNx8RxNW580Ny
         z8N19fK+ahCcMfvM+zYhwuukPFC30yds6ARc/cN7KYe0ZYWH8gDXPaw73tJbwWjNMAPv
         xd2QigLFqq1DiaE7EA8l14NEGxTNcea2RR5/gyhsyaeZ3KF/zEA9+FTT6RZ3pvcyaxLO
         zVMLgmlri/IYfGJkuDHPxSMbY/BweYXLzddzNVY4Oddiw9hPjUSTKurdJ2fw5WxW0AQS
         sTgg==
X-Gm-Message-State: AOAM531X9gPphyPUjEYTRr45ExV9pYIcEnepwWK79nJTnacNF2aZz4bw
        xi7uFkFHdoqNIJAbfj1xNtR9wDtzqBJoNq5ug0CvjA==
X-Google-Smtp-Source: ABdhPJxSVBqMhLuz3tJ/EfT/oK3B9JbJoZN04dhP9HE04gSPM7KyTKI890eAZ0aG2QGyOCI5WouGlkh9SRwuY1snJKE=
X-Received: by 2002:a05:6830:1c3c:: with SMTP id f28mr9699129ote.188.1602256081698;
 Fri, 09 Oct 2020 08:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
 <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com> <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
In-Reply-To: <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
From:   Daniel Vetter <daniel@ffwll.ch>
Date:   Fri, 9 Oct 2020 17:07:50 +0200
Message-ID: <CAKMK7uECJVPHSaDepi6J+z-bDNnmO55YFaVPsjG69vryjCdDwQ@mail.gmail.com>
Subject: Re: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "Dea, Edmund J" <edmund.j.dea@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 9, 2020 at 11:09 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 09/10/2020 03:03, Anitha Chrisanthus wrote:
> > This patch adds bindings for Intel KeemBay Display
> >
> > v2: review changes from Rob Herring
> >
> > Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > ---
> >  .../bindings/display/intel,keembay-display.yaml    | 99 ++++++++++++++++++++++
> >  1 file changed, 99 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/intel,keembay-display.yaml b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > new file mode 100644
> > index 0000000..a38493d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > @@ -0,0 +1,99 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/intel,keembay-display.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Devicetree bindings for Intel Keem Bay display controller
> > +
> > +maintainers:
> > +  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > +  - Edmond J Dea <edmund.j.dea@intel.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: intel,kmb_display
> > +
> > +  reg:
> > +    items:
> > +      - description: Lcd registers range
> > +      - description: Mipi registers range
>
> Looking at the registers, the MIPI transceiver seems to be a separate IP,
> same for D-PHY which should have a proper PHY driver instead of beeing handled
> here.
>
> > +      - description: Msscam registers range
>
> MSScam here seems to be a clock and reset controller for the LCD and MIPI IPs,
> thus should be handler out of DRM.
>
> > +
> > +  reg-names:
> > +    items:
> > +      - const: lcd
> > +      - const: mipi
> > +      - const: msscam
> > +
> > +  clocks:
> > +    items:
> > +      - description: LCD controller clock
> > +      - description: Mipi DSI clock
> > +      - description: Mipi DSI econfig clock
> > +      - description: Mipi DSI config clock
> > +      - description: System clock or pll0 clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: clk_lcd
> > +      - const: clk_mipi
> > +      - const: clk_mipi_ecfg
> > +      - const: clk_mipi_cfg
> > +      - const: clk_pll0
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  encoder-slave:
> > +    description: bridge node entry for mipi to hdmi converter
> > +
> > +  port:
> > +    type: object
> > +    description: >
> > +          Port node with one endpoint connected to mipi to hdmi converter node.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +  - encoder-slave
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #define MOVISOC_KMB_MSS_AUX_LCD
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
> > +    #define MOVISOC_KMB_A53_PLL_0_OUT_0
> > +    display@20900000 {
> > +      compatible = "intel,keembay-display";
> > +      reg = <0x20930000 0x3000>,
> > +            <0x20900000 0x4000>,
> > +            <0x20910000 0x30>;
> > +      reg-names = "lcd", "mipi", "msscam";
> > +      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > +      clocks = <&scmi_clk MOVISOC_KMB_MSS_AUX_LCD>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_TX0>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_ECFG>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_CFG>,
> > +               <&scmi_clk MOVISOC_KMB_A53_PLL_0_OUT_0>;
> > +      clock-names = "clk_lcd", "clk_mipi", "clk_mipi_ecfg",
> > +                    "clk_mipi_cfg", "clk_pll0";
> > +
> > +      encoder-slave = <&adv7535>;
> > +
> > +      port {
> > +            dsi_output: endpoint {
> > +                remote-endpoint = <&adv7535_input>;
> > +            };
> > +      };
> > +    };
> >
>
> Anitha, Daniel, this keembay driver should be architectured like other ARM-like display
> controllers, with separate drivers for MIPI DSI bridge and msscam clock & reset controller.

tbh I have no clue about dt, and very little clue about how to do
armsoc drivers properly. My only take in this entire area is that
drm/bridges looks confusing with too many different approaches, and
people should stuck more together and figure out what to do (the
entire component.c vs not so much component.c discussion, and another
one is about creating drm-connector or not doing that).

But how this all should be done I really have not much useful clue, so
please keep me out of that.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
