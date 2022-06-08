Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 651C0543A2F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 19:23:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbiFHRXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 13:23:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbiFHRXM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 13:23:12 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 419223D4621
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 10:15:19 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id a10so19163325pju.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 10:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oH5uSEXgacKKfpEHTJJprfTXKBauCCXmjG/dRGDnTp0=;
        b=F2j4EyCRQ4esZS5rbSoSjLJlVg1KyteIP6cE3LN9453W0Yd/gSP6kkCPlhrYoF10ZZ
         c5W6dVkzES8e65A8wNGFtVrk/aiFT2T5JMn8JeZXCeGEdzEiGvdYArUPLJ3tKsvYEQZH
         ggca4mYXT40ImHDmzrKFFaC279eH7JLC3d7b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oH5uSEXgacKKfpEHTJJprfTXKBauCCXmjG/dRGDnTp0=;
        b=dCCWw0OoscGQJpL8Lm0xcUzy07J/ShLwKR1W440mJT1YtWC8DcK8Qq8QhKh5xDBXlZ
         hgdJm0I7979TM99j4bcST29QZkSgn1FA4ppOmciQ82+iY1RYrty6R0OHBf0ptyFrvXmi
         LcLMk/f4qCDPah+UTh+nTmEUPRT/clH7zS/5D3Udl4vELqh04G9X1QUFQ7pVKQwXxRku
         qMbjc7mP8q8FpyWEx6UV/fuJi8RidUZTK6QFVXaSOyucSqTdmo2EHdceLATkmuwbjpBH
         Q5Qze1/VeS0ty9HQ6cmk6N4fywXlQyqlr705U5u201ZeJpmH+/npbeZnPnWTtKgW80bM
         Vcjg==
X-Gm-Message-State: AOAM533yyutYJIrF5louZu5ZsFouxDIS748RPaIHeEALKy9fqN0QEKhY
        sR44iWoO5DGh2fHorMBFmD6hPw==
X-Google-Smtp-Source: ABdhPJzEOdF+hiLQJ76yi5LDmB6MtapdNTYM8JdrFeaUFWEgT0fkKdgiPR7EJyZu6Oz5avgTWxcygQ==
X-Received: by 2002:a17:90a:c981:b0:1e6:75f0:d4ea with SMTP id w1-20020a17090ac98100b001e675f0d4eamr215793pjt.37.1654708518745;
        Wed, 08 Jun 2022 10:15:18 -0700 (PDT)
Received: from chromium.org (157.214.185.35.bc.googleusercontent.com. [35.185.214.157])
        by smtp.gmail.com with ESMTPSA id 190-20020a6219c7000000b005184c9c46dbsm15229447pfz.81.2022.06.08.10.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 10:15:17 -0700 (PDT)
Date:   Wed, 8 Jun 2022 17:15:16 +0000
From:   Prashant Malani <pmalani@chromium.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        bleung@chromium.org, swboyd@chromium.org,
        heikki.krogerus@linux.intel.com,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        =?iso-8859-1?Q?Jos=E9_Exp=F3sito?= <jose.exposito89@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado 
        <nfraprado@collabora.com>, Pin-Yen Lin <treapking@chromium.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Tzung-Bi Shih <tzungbi@google.com>,
        Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH 3/7] dt-bindings: usb: Add Type-C switch binding
Message-ID: <YqDZJFTji5nRs3bk@chromium.org>
References: <20220607190131.1647511-1-pmalani@chromium.org>
 <20220607190131.1647511-4-pmalani@chromium.org>
 <ba499783-1794-1c00-348a-d912c9562e1e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba499783-1794-1c00-348a-d912c9562e1e@linaro.org>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Jun 08 11:18, Krzysztof Kozlowski wrote:
> On 07/06/2022 21:00, Prashant Malani wrote:
> > Introduce a binding which represents a component that can control the
> > routing of USB Type-C data lines as well as address data line
> > orientation (based on CC lines' orientation).
> > 
> > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > ---
> >  .../devicetree/bindings/usb/typec-switch.yaml | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/typec-switch.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/typec-switch.yaml b/Documentation/devicetree/bindings/usb/typec-switch.yaml
> > new file mode 100644
> > index 000000000000..60a600a63fef
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/typec-switch.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/typec-switch.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: USB Type-C Switch
> > +
> > +maintainers:
> > +  - Prashant Malani <pmalani@chromium.org>
> > +
> > +description:
> > +  A USB Type-C switch represents a component which routes USB Type-C data
> > +  lines to various protocol host controllers (e.g USB, VESA DisplayPort,
> > +  Thunderbolt etc.) depending on which mode the Type-C port, port partner
> > +  and cable are operating in. It can also modify lane routing based on
> > +  the orientation of a connected Type-C peripheral.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> 
> Single item, so no need for items.

I tried this initially, but dt_binding_check throws the following
error:
$ make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/typec-switch.yaml

LINT    Documentation/devicetree/bindings
CHKDT   Documentation/devicetree/bindings/processed-schema.json
/foo/linux/Documentation/devicetree/bindings/usb/typec-switch.yaml: properties:compatible: [{'enum': ['typec-switch']}] is not of type 'object', 'boolean'
from schema $id: http://json-schema.org/draft-07/schema#
SCHEMA Documentation/devicetree/bindings/processed-schema.json
/foo/linux/Documentation/devicetree/bindings/usb/typec-switch.yaml: ignoring, error in schema: properties: compatible

> 
> > +      - enum:
> > +          - typec-switch
> > +
> > +  mode-switch:
> > +    type: boolean
> > +    description: Specify that this switch can handle alternate mode switching.
> > +
> > +  orientation-switch:
> > +    type: boolean
> > +    description: Specify that this switch can handle orientation switching.
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    description: OF graph binding modelling data lines to the Type-C switch.
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Link between the switch and a Type-C connector.
> > +
> > +    required:
> > +      - port@0
> > +
> > +required:
> > +  - compatible
> > +  - ports
> > +
> > +anyOf:
> > +  - required:
> > +      - mode-switch
> > +  - required:
> > +      - orientation-switch
> > +
> > +additionalProperties: true
> 
> Why true? I see usb-connector has it from commit 6a0e321ea735
> ("dt-bindings: Explicitly allow additional properties in common schemas")
>  but that looks also weird - this is not a common schema, but a
> complete, generic one.
> 
> > +
> > +examples:
> > +  - |
> > +    anx7625 {
> 
> Generic node name.

Will fix in v2.
> 
> > +      typecswitch {
> 
> I guess here as well, so "usb-switch"?

Same here, will fix with v2, along with 4-space indentation.

> 
> > +        compatible = "typec-switch";
> > +        mode-switch;
> > +        orientation-switch;
> > +        ports {
> > +          #address-cells = <1>;
> > +          #size-cells = <0>;
> > +
> > +          port@0 {
> > +            reg = <0>;
> > +            anx_ep: endpoint {
> > +              remote-endpoint = <&typec_controller>;
> > +            };
> > +          };
> > +        };
> > +      };
> > +    };
> 
> 
> Best regards,
> Krzysztof
