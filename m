Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6039656149
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 09:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231918AbiLZItR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 03:49:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbiLZItP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 03:49:15 -0500
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C3191C5
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 00:49:14 -0800 (PST)
Received: by mail-io1-xd35.google.com with SMTP id g20so5444093iob.2
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 00:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2GeevI+7bf+WdnjCpmvJ+ryR3Rl0w6Jx09kir3h8qMo=;
        b=A9q8tX198F/2Z/0BSktVTjH8jcNAq1fdLNcR5/WqXtgUvu36TiKPpvatfDNeleCBNv
         lkNJTFuEQZMnTD9qhgg6HKcGsFqiS9jvvpMSdNyiREwvfRXKbQGuZhkmQAg4Yf9MJBd0
         0a3PRkzf2unQBF24GU5DTrxglocRfR4jJ/8Ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GeevI+7bf+WdnjCpmvJ+ryR3Rl0w6Jx09kir3h8qMo=;
        b=5VJUV5FfiTHD/kCvL82mB3XpxIq6yzdCANblpAjD12jpG61MIaq8rRyXJsrOjRshri
         dAu6CcAQ9oRTDCScgysTVOHX0qkF14gmT1v3Vk1PjfKfpcdTA0wqu+C/zc+/cwaKdjVV
         CkgnQE23JpOIazBd/z8yLhMuWQ46VFsjnwLLwECPVIgHaslHgBTh0VHwGOh1pQ5pNOR8
         bpE8wC/kVo+OcYhbZImeW6ObELgtVsi+l4zk63xsglpTyqd8GWR9YKzxqqwekCz13Ymm
         oPC8uB0/tseAQ8vjQ5NpdTAqSJ/Pr6L8/gAs3njyGKMQO5Pjzv/yQaV1SsHEN1Xwjyji
         Fu1w==
X-Gm-Message-State: AFqh2krulnwn0ys2T89S5viZFydrCGpuxLxCV7nn3kEMahIysLwscaVV
        0HNWSlVs1s1pvS8TXcdKjyyhHTapGmSMO2XBKyh+Yw==
X-Google-Smtp-Source: AMrXdXuoIUzBqmDwKs1PuREjFiXYUco2lpJxyc5dz0d+UodE12xrOWp1ECASRqgdbQyL/HzV1vUTTbOYxbxmKfzXt3E=
X-Received: by 2002:a6b:7a0a:0:b0:6e9:b3db:b5ce with SMTP id
 h10-20020a6b7a0a000000b006e9b3dbb5cemr1327069iom.179.1672044553677; Mon, 26
 Dec 2022 00:49:13 -0800 (PST)
MIME-Version: 1.0
References: <20221124102056.393220-1-treapking@chromium.org>
 <20221124102056.393220-4-treapking@chromium.org> <00cc31a2-39b1-9bb3-5b79-3c6d51cd5d51@linaro.org>
In-Reply-To: <00cc31a2-39b1-9bb3-5b79-3c6d51cd5d51@linaro.org>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Mon, 26 Dec 2022 16:49:02 +0800
Message-ID: <CAEXTbpfhBCWvZCziyc6chR2Vjc=SJSxYfYpdX8gd8PkG4G0+3w@mail.gmail.com>
Subject: Re: [PATCH v6 3/7] dt-bindings: drm/bridge: anx7625: Add mode-switch support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-acpi@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Xin Ji <xji@analogixsemi.com>, Lyude Paul <lyude@redhat.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, Allen Chen <allen.chen@ite.com.tw>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

Thanks for the review.

On Mon, Nov 28, 2022 at 4:58 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 24/11/2022 11:20, Pin-yen Lin wrote:
> > Analogix 7625 can be used in systems to switch the DP traffic between
> > two downstreams, which can be USB Type-C DisplayPort alternate mode
> > lane or regular DisplayPort output ports.
> >
> > Update the binding to accommodate this usage by introducing a
> > data-lanes and a mode-switch property on endpoints.
> >
> > Also include the link to the product brief in the bindings.
> >
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> >
> > ---
> >
> > Changes in v6:
> > - Remove switches node and use endpoints and data-lanes property to
> >   describe the connections.
>
> Except missing testing few things...
>
> >
> >  .../display/bridge/analogix,anx7625.yaml      | 73 ++++++++++++++++++-
> >  1 file changed, 71 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > index 4590186c4a0b..5fdbf1f3bab8 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > @@ -12,7 +12,8 @@ maintainers:
> >
> >  description: |
> >    The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > -  designed for portable devices.
> > +  designed for portable devices. Product brief is available at
> > +  https://www.analogix.com/en/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
> >
> >  properties:
> >    compatible:
> > @@ -112,10 +113,36 @@ properties:
> >                data-lanes: true
> >
> >        port@1:
> > -        $ref: /schemas/graph.yaml#/properties/port
> > +        $ref: /schemas/graph.yaml#/properties/port-base
>
> I don't understand why you are changing this line.

Without this change, the `unevaluatedProperties: false` in
`/schemas/graph.yaml#/properties/port` does not allow me to add new
properties.
>
> >          description:
> >            Video port for panel or connector.
> >
> > +        patternProperties:
> > +          "^endpoint@[01]$":
> > +            $ref: /schemas/media/video-interfaces.yaml#
> > +            type: object
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              reg:
> > +                maxItems: 1
> > +
> > +              remote-endpoint: true
> > +
> > +              data-lanes:
> > +                minItems: 1
> > +                uniqueItems: true
>
> These are confusing... you allow only one item, so why minItems and
> uniqueItems?

What I want to use is something like:
```
items:
  enum: [0,1, 2, 3]
```
That is, all the items should be an integer between 0 and 3. I'll
update this to a stricter version in v7.
>
> > +                items:
> > +                  - enum: [ 0, 1, 2, 3]
> > +
> > +              mode-switch:
> > +                type: boolean
> > +                description: Register this node as a Type-C mode switch or not.
> > +
> > +            required:
> > +              - reg
> > +              - remote-endpoint
> > +
> >      required:
> >        - port@0
> >        - port@1
> > @@ -186,3 +213,45 @@ examples:
> >              };
> >          };
> >      };
> > +  - |
> > +    &i2c3 {
> > +     anx_bridge_dp: anx7625-dp@58 {
>
> Messed up indentation.
I'll fix this in the next version.
>
> > +         compatible = "analogix,anx7625
>
> Node names should be generic.
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
I'll update this in v7.
>
> ";
> > +         reg = <0x58>;
>
> Best regards,
> Krzysztof
>

Best regards,
Pin-yen
