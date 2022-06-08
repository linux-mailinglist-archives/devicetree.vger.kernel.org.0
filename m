Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B70FD543EE9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 23:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234629AbiFHV44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 17:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233456AbiFHV4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 17:56:55 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F5A980B1
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 14:56:54 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-30fdbe7467cso188152247b3.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 14:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o/FxEvZvW1gTJxwxNX2DkDyV7vVmddxl0z+6t//DzGw=;
        b=GfP2IP4Fat3QQOJUQ1zjmZgkYIDYRLt6vRQO45pbcMcGVtU5pBvQcFY5UvJcGk8abd
         +JSzoHHE0NFLzvXxIbPCxL7Mld79vHYVn5PIdyGBgg0FkKvkhTDeiTe8VNdYvnRPSjGO
         KRwPsYoXEKfCPsnJrtFV9ohI5YEFExn5kwhkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o/FxEvZvW1gTJxwxNX2DkDyV7vVmddxl0z+6t//DzGw=;
        b=BWt7M7rhCCrqHNRmrjeF+tmbbLyHxFc4j+Ug7qCF1lKaObkaFREGjZVZaGEGMAeAf/
         HEEZsKBxvGVA6BaRai2viHqyRrEF5rHDc+LLVTDNT6NVNiXKy3vqH904Gmpa/QH3RJAx
         umXicltpxI97dRHnVzDtMDosCNpu2Glsee/epNgHwjTbWm9afUJy7A29+0xnRIYJkXn4
         CX6PQiRliI9/sBeYK1r6qtVPl3eGreGoME5jWn8gOmBoPkxaNZXvIVf5i5Wl+D/Jc43U
         MsHgZkchswnKfqhwxL7Tz/ejEA5namAXEaaCNrx/7lDjLZigHUFSCDdKOHTw6N/hjn0P
         VysA==
X-Gm-Message-State: AOAM531sNOxNi63QjaCAJJ92TwbzsoXD361CCNlUthJZQFPArFw4QHbV
        QmvT+XDOT/dq+JRMcy1RUOrNmmZYwuShj75eb2v/7A==
X-Google-Smtp-Source: ABdhPJyNxCPNzrOQbcyyyd4qjPEc47HfGivnM4HCR4GSlQ1K3nk/S/w0ukyRatBku42k6tv5eQ/gkohhiS9vlMCItdg=
X-Received: by 2002:a81:54c5:0:b0:302:53b8:806b with SMTP id
 i188-20020a8154c5000000b0030253b8806bmr39710077ywb.432.1654725413771; Wed, 08
 Jun 2022 14:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220607190131.1647511-1-pmalani@chromium.org>
 <20220607190131.1647511-5-pmalani@chromium.org> <fbc48d41-b2cc-86f6-5f1c-7cfcbdb41e46@linaro.org>
 <YqDXfGa9bugnLFGH@chromium.org>
In-Reply-To: <YqDXfGa9bugnLFGH@chromium.org>
From:   Prashant Malani <pmalani@chromium.org>
Date:   Wed, 8 Jun 2022 14:56:42 -0700
Message-ID: <CACeCKaeHocnAuY5D-oVt1fhgRGkNT014RcK3JSe6piKoXNtKCQ@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: drm/bridge: anx7625: Add mode-switch support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        bleung@chromium.org, swboyd@chromium.org,
        heikki.krogerus@linux.intel.com,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Pin-Yen Lin <treapking@chromium.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Xin Ji <xji@analogixsemi.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 8, 2022 at 10:08 AM Prashant Malani <pmalani@chromium.org> wrote:
>
> Hi Krzysztof,
>
> Thank you for looking at the patch.
>
> On Jun 08 11:24, Krzysztof Kozlowski wrote:
> > On 07/06/2022 21:00, Prashant Malani wrote:
> > > Analogix 7625 can be used in systems to switch USB Type-C DisplayPort
> > > alternate mode lane traffic between 2 Type-C ports.
> > >
> > > Update the binding to accommodate this usage by introducing a switch
> > > property.
> > >
> > > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > > ---
> > >  .../display/bridge/analogix,anx7625.yaml      | 56 +++++++++++++++++++
> > >  1 file changed, 56 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > index 35a48515836e..7e1f655ddfcc 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > @@ -105,6 +105,26 @@ properties:
> > >        - port@0
> > >        - port@1
> > >
> > > +  switches:
> > > +    type: object
> > > +    description: Set of switches controlling DisplayPort traffic on
> > > +      outgoing RX/TX lanes to Type C ports.
> > > +
> > > +    properties:
> > > +      switch:
> >
> > You allow only one switch with such schema, so no need for "switches"...
>
> See below comment (summary: we'd like to allow 1 or 2 switches).
> >
> > > +        $ref: /schemas/usb/typec-switch.yaml#
> > > +        maxItems: 2
> >
> > Are you sure this works? what are you limiting here with maxItems? I
> > think you wanted patternProperties...
>
> Yeah, I might not have used the DT syntax correctly here.
> What I'm aiming for is:
> "switches" should can contain 1 or 2 "switch" nodes.
> 2 is the maximum (limitation of the hardware).
>
> >
> > > +
> > > +        properties:
> > > +          reg:
> > > +            maxItems: 1
> > > +
> > > +        required:
> > > +          - reg
> > > +
> > > +    required:
> > > +      - switch@0
> >
> > This does not match the property.
> >
> > You also need unevaluatedProperties:false
>
> Ack, will update this in the next version.

Actually, could you kindly clarify which of the two needs this?
"switches" or "switch" ?
I interpreted "switch" as requiring it, but I thought it better to confirm.

>
> >
> >
> > > +
> > >  required:
> > >    - compatible
> > >    - reg
> > > @@ -167,5 +187,41 @@ examples:
> > >                      };
> > >                  };
> > >              };
> > > +            switches {
> > > +                #address-cells = <1>;
> > > +                #size-cells = <0>;
> > > +                switch@0 {
> > > +                    compatible = "typec-switch";
> > > +                    reg = <0>;
> > > +                    mode-switch;
> > > +
> > > +                    ports {
> > > +                        #address-cells = <1>;
> > > +                        #size-cells = <0>;
> > > +                        port@0 {
> > > +                            reg = <0>;
> > > +                            anx_typec0: endpoint {
> > > +                              remote-endpoint = <&typec_port0>;
> >
> > Messed up indentation. Your previous patch should also switch to 4-space
> > as recommended by schema coding style.
>
> Sorry about that, will fix up the indentation in the next version.
>
> >
> > > +                            };
> > > +                        };
> > > +                    };
> > > +                };
> > > +                switch@1 {
> > > +                    compatible = "typec-switch";
> > > +                    reg = <1>;
> > > +                    mode-switch;
> > > +
> > > +                    ports {
> > > +                        #address-cells = <1>;
> > > +                        #size-cells = <0>;
> > > +                        port@0 {
> > > +                            reg = <0>;
> > > +                            anx_typec1: endpoint {
> > > +                              remote-endpoint = <&typec_port1>;
> >
> > Ditto.
> >
> > > +                            };
> > > +                        };
> > > +                    };
> > > +                };
> > > +            };
> > >          };
> > >      };
> >
> >
> > Best regards,
> > Krzysztof
