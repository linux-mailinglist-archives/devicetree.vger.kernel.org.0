Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5117A2CDD02
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 19:03:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731581AbgLCSCZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 13:02:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731532AbgLCSCY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 13:02:24 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDD8DC061A51
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 10:01:43 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id v14so3567057wml.1
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 10:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g41BzesBNMVjRI0HhU50QDseWgr56ls6Pkg43ibZ2Ug=;
        b=BwRoMXiY3HGL4RTvOrlP2DuvmwgWwXqXgUP/eQdWVEdw26qk869WMtmiKNNa8KJxhQ
         FgC7KtGrcht5IXarMgYafsojdME73CnCTlMaf074zdYQDZdvJk3IM72H90/vJlPXUo/U
         CgdJXhRAWANCS0TDUDzBZ4Yg/YidjOfwBInyBZpIfWoKvowv9nXJtmAd9XaTT0PkC+uE
         +/El+vEKNxB2UjTt962UZt+UlRSI+tsSnzVLI9fGuAxzZNYtePOitF8ViTunl73WwsvA
         zIf8YN9G0SuJcXbn3HzazOXSdOLFmIB5AOYCEMB7t+bErh33s2OJisQwnm6sv6fZ9aC0
         NbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g41BzesBNMVjRI0HhU50QDseWgr56ls6Pkg43ibZ2Ug=;
        b=ExZHHaBk9/YQZUl63+wOY8U6Be3o/vjCb0U4ZX7LpMXe6ixh9n6BLmWCCCYOZyDbth
         y0JpTSjNpID8HvMJy4pI4FuZHDw7CRzUf46U2DjO4Ya8Kq7uSj0aki2M8rqwPq2PVZL+
         0CkaiA7b+0JEXlLPGlmsgm0d0jQhrDhgHG+zteXu77EjApQFaAmSxE0NdVcSWddXylKU
         4oaMNAfHyc2tAo8KXiT2tEl6L115WBgNmGWNWdEawjbXtXSklkv6aRM4r5BqOzoGdaYR
         pWGDc0BFl1tJ/pmCaTCoAzqkjqFN7CRHG+Ar4OAIWfaEfsY3s5pAwkFJ5L/L2A1/tgoL
         YYjQ==
X-Gm-Message-State: AOAM533iZzcRfSNXu+16GD0IvFaAf+s4aV++H4/w0a+cbWGAIiXqnqJj
        tvuakunDsGeQgWFiaUKaE7R9+c7s5q3U6DUjc1i/Tw==
X-Google-Smtp-Source: ABdhPJwfyf1QjSuOi8xzPKBhFNEUYwAv4qNiJoakWV7TtBjqd/vSqNNBQSnBb7oNThodX58G+4Ay/wbas+ftfGy9RPg=
X-Received: by 2002:a1c:bc88:: with SMTP id m130mr45361wmf.82.1607018502526;
 Thu, 03 Dec 2020 10:01:42 -0800 (PST)
MIME-Version: 1.0
References: <20200809105705.6334-1-marex@denx.de> <20200812200738.GA651402@ravnborg.org>
In-Reply-To: <20200812200738.GA651402@ravnborg.org>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Thu, 3 Dec 2020 18:01:26 +0000
Message-ID: <CAPY8ntBCsDF+D8EiSrDJ8vn_S6-OGr6p4SMd7_9MHvoFj=f+Fw@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: Add DT bindings for Toshiba TC358762
 DSI-to-DPI bridge
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On Wed, 12 Aug 2020 at 21:07, Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Marek.
>
> On Sun, Aug 09, 2020 at 12:57:04PM +0200, Marek Vasut wrote:
> > Add DT bindings for Toshiba TC358762 DSI-to-DPI bridge, this
> > one is used in the Raspberry Pi 7" touchscreen display unit.
> >
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > To: dri-devel@lists.freedesktop.org
> > Cc: Eric Anholt <eric@anholt.net>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: devicetree@vger.kernel.org
> > ---
> > V2: Fix dt_binding_check errors
> > V3: Add ... at the end of example
>
> With Rob's r-b it is now applied to drm-misc-next.
>
>         Sam
>
> > ---
> >  .../display/bridge/toshiba,tc358762.yaml      | 127 ++++++++++++++++++
> >  1 file changed, 127 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> > new file mode 100644
> > index 000000000000..195025e6803c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> > @@ -0,0 +1,127 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/toshiba,tc358762.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Toshiba TC358762 MIPI DSI to MIPI DPI bridge
> > +
> > +maintainers:
> > +  - Marek Vasut <marex@denx.de>
> > +
> > +description: |
> > +  The TC358762 is bridge device which converts MIPI DSI to MIPI DPI.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - toshiba,tc358762
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: virtual channel number of a DSI peripheral
> > +
> > +  vddc-supply:
> > +    description: Regulator for 1.2V internal core power.
> > +
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      "#address-cells":
> > +        const: 1
> > +
> > +      "#size-cells":
> > +        const: 0
> > +
> > +      port@0:
> > +        type: object
> > +        additionalProperties: false
> > +
> > +        description: |
> > +          Video port for MIPI DSI input
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +        patternProperties:
> > +          endpoint:
> > +            type: object
> > +            additionalProperties: false
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +        required:
> > +          - reg
> > +
> > +      port@1:
> > +        type: object
> > +        additionalProperties: false
> > +
> > +        description: |
> > +          Video port for MIPI DPI output (panel or connector).
> > +
> > +        properties:
> > +          reg:
> > +            const: 1
> > +
> > +        patternProperties:
> > +          endpoint:
> > +            type: object
> > +            additionalProperties: false
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +        required:
> > +          - reg
> > +
> > +    required:
> > +      - "#address-cells"
> > +      - "#size-cells"
> > +      - port@0
> > +      - port@1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - vddc-supply
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c1 {

Minor point.
I've just come to use this and noticed that this example puts the
device under i2c1. Seeing as it's a DSI driver with no I2C
interaction, shouldn't it be under a dsi node?

Thanks
  Dave

> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      bridge@0 {
> > +        reg = <0>;
> > +        compatible = "toshiba,tc358762";
> > +        vddc-supply = <&vcc_1v2_reg>;
> > +
> > +        ports {
> > +          #address-cells = <1>;
> > +          #size-cells = <0>;
> > +
> > +          port@0 {
> > +            reg = <0>;
> > +            bridge_in: endpoint {
> > +              remote-endpoint = <&dsi_out>;
> > +            };
> > +          };
> > +
> > +          port@1 {
> > +            reg = <1>;
> > +            bridge_out: endpoint {
> > +              remote-endpoint = <&panel_in>;
> > +            };
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +...
> > --
> > 2.28.0
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
