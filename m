Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B75F460DA24
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 06:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232832AbiJZEDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 00:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232540AbiJZEDQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 00:03:16 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9754A2868
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 21:03:14 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id a13so39588000edj.0
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 21:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2uOlcqyDGSB4FINYNMxtwAMo4ngxfOnBT6eemWeFWJ4=;
        b=EW9EpFTccPDUI0/2LEeGkX3N0u5lqQu2IUx8wDKOUeqskFQ4tz3dOIwmqhUMbCmBES
         wiFEgbHsQt8NVCcTxbIlUhhxGs/mSxBYq4BV5bzLp/meVmX/R2W6Q34qdGsfkrxVa3Iv
         EFBY+Mm59uimY2pz0lkIxYIlEDCTxGSWm77oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2uOlcqyDGSB4FINYNMxtwAMo4ngxfOnBT6eemWeFWJ4=;
        b=8NHet+La7oV/Csq0Un3r6ERjklS0bmvgIIaOFvrhSu4C6jZWe/Y9yO98Gi819ybIne
         2Zvfrr98tbD0OexpfVxt12e1+v3SlPFB/Nds71/2bDuVum03TYJkU69GQB6GwwwkzKc8
         9UM1wVgNxhRMOHGf0ahes9PxHq3wjw8SOht/EMMrc9YjR3SQHae8BsBaPusc6wbPxw0M
         nF+GwpaghkiTQ/4wdp7rT8IIBx01FH4QwaWe7GiHiBlq6Wl88RxvwD0yGXCTA9ki7NTi
         43UBSKJMM2bw+MR3zwv7z7KFK1bybXRnEb92iRN9CEUQFJQkLhybWjHa0u+a5+gtbstN
         PZdw==
X-Gm-Message-State: ACrzQf1i81ZOb5e1zvDBHCYVF5flfvI2H34nWWWvAlkk1MUiiifUImDK
        eDAOpOpBepkljqTlGK8mFw0y6cF2MNpzHbsfn/Ibjg==
X-Google-Smtp-Source: AMsMyM72JkPtZUBNDSOZ7vAWrHE+Q6xEgcuOJDPIOW7eeHJAyW+j5W/LFwfUClpE53jDCvSgE+EJiU/tu1YGTZD6fFo=
X-Received: by 2002:a05:6402:b0e:b0:461:f7a8:3e3a with SMTP id
 bm14-20020a0564020b0e00b00461f7a83e3amr8968352edb.372.1666756993340; Tue, 25
 Oct 2022 21:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20221019093215.8204-1-allen.chen@ite.com.tw> <20221019093215.8204-2-allen.chen@ite.com.tw>
 <20221024163748.GA1874793-robh@kernel.org>
In-Reply-To: <20221024163748.GA1874793-robh@kernel.org>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Wed, 26 Oct 2022 12:03:02 +0800
Message-ID: <CAEXTbpfpmAAaXOEkirMtuSJLopv-Us6w-46oE+GSxXiMGU-ZfQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
To:     allen <allen.chen@ite.com.tw>
Cc:     Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
        Hermes Wu <Hermes.Wu@ite.com.tw>,
        Kenneth Hung <Kenneth.Hung@ite.com.tw>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Allen,

On Tue, Oct 25, 2022 at 12:37 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Oct 19, 2022 at 05:32:13PM +0800, allen wrote:
> > From: allen chen <allen.chen@ite.com.tw>
> >
> > Add properties to restrict dp output data-lanes and clock.
> >
> > Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
> > Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
> > ---
> >  .../bindings/display/bridge/ite,it6505.yaml   | 89 +++++++++++++++++--
> >  1 file changed, 83 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > index 833d11b2303a7..8e607b6929fc9 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > @@ -52,9 +52,70 @@ properties:
> >      maxItems: 1
> >      description: extcon specifier for the Power Delivery
> >
> > -  port:
> > -    $ref: /schemas/graph.yaml#/properties/port
> > -    description: A port node pointing to DPI host port node
>
> No existing users you are breaking? The commit msg should explain.
>
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: A port node pointing to DPI host port node
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              link-frequencies:
> > +                minItems: 1
> > +                maxItems: 1
> > +                description: Allowed max link frequencies in Hz
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: Video port for DP output
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              data-lanes:
> > +                oneOf:
> > +                  - minItems: 1
> > +                    maxItems: 1
> > +                    uniqueItems: true
> > +                    items:
> > +                      enum:
> > +                        - 0
> > +                        - 1
> > +                    description: For one lane operation.
> > +
> > +                  - minItems: 2
> > +                    maxItems: 2
> > +                    uniqueItems: true
> > +                    items:
> > +                      enum:
> > +                        - 0
> > +                        - 1
> > +                    description: For two lanes operation.
> > +
> > +                  - minItems: 4
> > +                    maxItems: 4
> > +                    uniqueItems: true
> > +                    items:
> > +                      enum:
> > +                        - 0
> > +                        - 1
> > +                        - 2
> > +                        - 3
> > +                    description: For four lanes operation.
>
> I would do just:
>
> data-lanes:
>   minItems: 1
>   items:
>     - enum: [ 0, 1 ]
>     - const: 1
>     - const: 2
>     - const: 3

I believe we also want a `uniqueItems: true` to prevent duplicate
items like `<1 1>`.

Regards,
Pin-yen

>
> It does allow 3 lanes, but I don't think that's a big deal. What it does
> doesn't allow is any order and yours does.
>
> Rob
