Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F82B45D406
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 06:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbhKYFIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 00:08:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229715AbhKYFGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 00:06:31 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74408C061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 21:03:20 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id w1so20214361edc.6
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 21:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ln2UAiZHSVyc5OYXLHIAkU5QHzDETS+mKR2UXZSBbeo=;
        b=c4Fb++MCVhmMgY6zqDDNHF7R0IiAifjq8CiTHc4HD0mbRFLkWJInRR22JLG/zHFMrQ
         OoKOyAuPHZOK0NSxZQd3TRhJSFHEYegaftjsBRUnzsmXuAeqGsrf3iknIEC/UJR7TJ+R
         aoVqo9tGQ/n2szl8udTpEG49La79zbsXbdxeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ln2UAiZHSVyc5OYXLHIAkU5QHzDETS+mKR2UXZSBbeo=;
        b=ZgBShwfaJElgNu+eHAByZaNIjh71hv7NuUwbUfS9cTItJPUnO9/1hOe9WhfUh8IKfe
         yqq+Njpqj6/qxZ6jYBVq2D3rDdLGMM6mOpNmV1TcF/FE3atZMKGrK50LWpIMRzEaVDkH
         usY/NFeRye/gg402ns5En0N1l4n+rCGgXdM7uZRplfyd39iTXAqkfpzkpMmRywfc/B06
         f/OI55GtPEQbZ+teDRM87nksLteWxGzNESLbyT1pqqCrYA5zXK+FfS9atzP3OLhgNChe
         V9gRxxwOip+8uDG3X/RNcHJeZnoSkgv8ekw40V1PmTPS5TABgRufxUtnwlZDMLxjouo7
         71Hw==
X-Gm-Message-State: AOAM530GsMAiZJWw9BEM/gvchww+Cwgf+xe4PYB0uRP9iSvJAz6C/C6a
        9YGlERIm53gEdsm+mqqq6uF68DkEZdQrOAROJMz9Fg==
X-Google-Smtp-Source: ABdhPJzCY+lNVauG0lb3gQ3Tlm/4OVnsElNji6S+5wZZ7b9i1TOyhg38LKEo+D/hBm3DMhpXKVPQeIDIn/zB182VPII=
X-Received: by 2002:a05:6402:5110:: with SMTP id m16mr34989210edd.15.1637816598877;
 Wed, 24 Nov 2021 21:03:18 -0800 (PST)
MIME-Version: 1.0
References: <20211124172553.519309-1-jagan@amarulasolutions.com> <YZ67Pm2vbSyWMIam@pendragon.ideasonboard.com>
In-Reply-To: <YZ67Pm2vbSyWMIam@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 25 Nov 2021 10:33:07 +0530
Message-ID: <CAMty3ZBGtk2RKCHk10fjnC8hST4SmT7yWyLnOz6WPqn+X=bXRg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: Add TI DLPC3433 bindings
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Christopher Vollo <chris@renewoutreach.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Thu, Nov 25, 2021 at 3:53 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Wed, Nov 24, 2021 at 10:55:52PM +0530, Jagan Teki wrote:
> > TI DLPC3433 is a MIPI DSI based display controller bridge
> > for processing high resolution DMD based projectors.
> >
> > It has a flexible configuration of MIPI DSI signal input
> > produces RGB565, RGB666, RGB888 output format with maximum
> > of 720p resolution in 60 and 120 Hz refresh rates.
> >
> > Add dt-bingings for it.
> >
> > Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../bindings/display/bridge/ti,dlpc3433.yaml  | 112 ++++++++++++++++++
> >  MAINTAINERS                                   |   6 +
> >  2 files changed, 118 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> > new file mode 100644
> > index 000000000000..3ade3a575c3e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> > @@ -0,0 +1,112 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/ti,dlpc3433.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI DLPC3433 Display Controller
> > +
> > +maintainers:
> > +  - Jagan Teki <jagan@amarulasolutions.com>
> > +  - Christopher Vollo <chris@renewoutreach.org>
> > +
> > +description: |
> > +  The DLPC3433 or DLPC3438 controllers provide a convenient,
> > +  multi-functional interface between system electronics and
> > +  the DMD, enabling small form factor, low power, and high
> > +  resolution HD displays.
>
> You may want to mention in the title and/or description that this is a
> DSI to DMD bridge. Actually, the device also supports a DPI input, which
> should be modelled in the DT bindings.

How can we model DPI since it is a DSI bridge bindings? Does it mean
we can add another node example to have DPI instead of DSI?

>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ti,dlpc3433
>
> Or just
>
>   compatible:
>     const: ti,dlpc3433
>
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: virtual channel number of a DSI peripheral
>
> I don't think this is right, the reg is the I2C address. You can drop
> the description.
>
> > +
> > +  enable-gpios:
> > +    description: PROJ_EN pin, chip powers up PROJ_EN is high.
>
> It's called PROJ_ON, not PROJ_EN, in the datasheet.
>
> > +
> > +  vcc_intf-supply:
> > +    description: A 1.8V/3.3V supply that power the Host I/O.
> > +
> > +  vcc_flsh-supply:
> > +    description: A 1.8V/3.3V supply that power the Flash I/O.
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: Video port for MIPI DSI input.
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/media/video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              data-lanes:
> > +                description: array of physical DSI data lane indexes.
> > +                minItems: 1
> > +                items:
> > +                  - const: 1
> > +                  - const: 2
> > +                  - const: 3
> > +                  - const: 4
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Video port for DPI output (DMD Projector).
>
> The output isn't DPI, but DMD.
>
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - enable-gpios
>
> Can the chip be used with the PROJ_ON input hardwired to a high logic
> state, or does it need to be controlled ?

PROJ_ON require an explicit enablement via driver in order to have
device out-of-reset.

Thanks,
Jagan.
