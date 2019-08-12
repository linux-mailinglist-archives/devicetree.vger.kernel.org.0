Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 644548A6FC
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 21:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbfHLTVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 15:21:16 -0400
Received: from mail.kernel.org ([198.145.29.99]:49538 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726549AbfHLTVQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Aug 2019 15:21:16 -0400
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8457220842
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 19:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565637675;
        bh=zTCVHvVzoCk41i7ZTn9PL1j0I5PzM2dEUwY166PH8GY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=um360vUQISUia4GbR4p2qn8VvXmaFEQM2hYH9ZF/vPoeI+zp34odJjKJXGjWe/ZIz
         pm0AY1zpFKW8tTQdGZAkI350XzWLOycE7DcMVHMNCujFgU81bV2kJ32cLWVUzWPaWJ
         mdj4A99l8xawx7P/zEnG5F5pMj+PkPx0zWlV2Ook=
Received: by mail-qt1-f170.google.com with SMTP id x4so5957757qts.5
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 12:21:15 -0700 (PDT)
X-Gm-Message-State: APjAAAWjdiu/VsUbC0n0Y2DUtKw2uevhhch+pwNDCDvwLuwC+yY7pmxV
        z4Z7tBCE+JeTUhnOr6PhtSvXBR3n95nX4JTIsQ==
X-Google-Smtp-Source: APXvYqzukQLPCpRqyhl2yBg9VDqcLGj27JeP/LpiADUz51AXuwlmEIe3TH1B9NMFhgt0VhH4sIBcsAms6uCG0vdIMz8=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr23708920qtq.136.1565637674680;
 Mon, 12 Aug 2019 12:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
 <20190810231048.1921-4-laurent.pinchart@ideasonboard.com> <20190811165558.GE14660@ravnborg.org>
In-Reply-To: <20190811165558.GE14660@ravnborg.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 12 Aug 2019 13:21:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLkhh7v_h0WKq5WoXEKXHECDcSvvUHPNspgMj15wfNxwQ@mail.gmail.com>
Message-ID: <CAL_JsqLkhh7v_h0WKq5WoXEKXHECDcSvvUHPNspgMj15wfNxwQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] dt-bindings: display: panel: Add bindings for NEC
 NL8048HL11 panel
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 11, 2019 at 10:56 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Laurent.
>
> My meta-schemas foo is very limited, but I noticed a few things.
> Hopefully Rob finds time soon to review.
>
>         Sam
>
> On Sun, Aug 11, 2019 at 02:10:42AM +0300, Laurent Pinchart wrote:
> > The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
> > parallel data interface and an SPI control interface.
> >
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > Changes since v1:
> >
> > - Convert to YAML
> > ---
> >  .../display/panel/nec,nl8048hl11.yaml         | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> > new file mode 100644
> > index 000000000000..cc3d40975828
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/nec,nl8048hl11.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NEC NL8048HL11 4.1" WVGA TFT LCD panel
> > +
> > +description:
> > +  The NEC NL8048HL11 is a 4.1" WVGA TFT LCD panel with a 24-bit RGB parallel
> > +  data interface and an SPI control interface.
> > +
> > +maintainers:
> > +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> I *think* we are missing a reference to spi-controller.yaml here.

No, because this is a SPI slave, not a SPI controller. The example
does need a 'spi' parent node and then spi-controller.yaml will get
applied to the example.

Rob
