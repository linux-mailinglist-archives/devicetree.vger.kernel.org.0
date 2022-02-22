Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 973324C0014
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 18:26:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233660AbiBVR0v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 12:26:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231342AbiBVR0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 12:26:50 -0500
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0665A16EABD
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 09:26:25 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id p15so15303707oip.3
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 09:26:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=WgiR2YpZmAw/hGpP8OM/4uHNuAr+9BK7vpKRyeZvptc=;
        b=0GPWk2qZcUQJvBENpFvplMS0jiPdvyLoX3v4yeG5x8/2ByVvujQCyg8YegGtNDJK93
         QDL0saWeu9IBvxRGzXZtTZ6hAsMiQYZIs/K3tFAQGF4f7b2fxFWy/gDhfJGhq+FXtCuz
         Z7KkH3gogIw1gEfkTsyfxdN+wgAFNhAJT6/aGz1Ufw762o+eWgDGdIxTdNSBbPncUhmu
         GgQS1RgHgF+qMPA2NiA47Swk4qao9uZCaHEH9raQmWw5dGSRXtbQWSW42nGlu2n6diRn
         inj02TNN7ZIuKPddY2EtbonRsCdUPW/9z2VMvKN6ZDL7QKpS1qCPNa0O3/Fh7V60aIFx
         jONA==
X-Gm-Message-State: AOAM533IvmHcZvIgBSecGeH5iVHNQUZGF/5V7HoGhEeOHFaW5S3Y525L
        WbxPpMKGLHvcA48TVrwfTw==
X-Google-Smtp-Source: ABdhPJzNdA7WFfoLObV6kc4dOY5eAP+fmcgHshKuVrH/45LJLJErYvDHO2c906gBVR6KUKEHsmopwg==
X-Received: by 2002:aca:f203:0:b0:2d0:706c:8d69 with SMTP id q3-20020acaf203000000b002d0706c8d69mr2515752oih.125.1645550784113;
        Tue, 22 Feb 2022 09:26:24 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s14sm14221734oae.21.2022.02.22.09.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 09:26:23 -0800 (PST)
Received: (nullmailer pid 3264192 invoked by uid 1000);
        Tue, 22 Feb 2022 17:26:22 -0000
Date:   Tue, 22 Feb 2022 11:26:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     maxime@cerno.tech, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v4 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
Message-ID: <YhUcvtbkz8tykLe7@robh.at.kernel.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-2-noralf@tronnes.org>
 <d9ccc11c-0af6-717e-cb3f-514934894180@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d9ccc11c-0af6-717e-cb3f-514934894180@tronnes.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 12:31:08PM +0100, Noralf Trønnes wrote:
> 
> 
> Den 18.02.2022 16.11, skrev Noralf Trønnes:
> > Add binding for MIPI DBI compatible SPI panels.
> > 
> > v4:
> > - There should only be two compatible (Maxime)
> > - s/panel-dbi-spi/panel-mipi-dbi-spi/in compatible
> > 
> > v3:
> > - Move properties to Device Tree (Maxime)
> > - Use contains for compatible (Maxime)
> > - Add backlight property to example
> > - Flesh out description
> > 
> > v2:
> > - Fix path for panel-common.yaml
> > - Use unevaluatedProperties
> > - Drop properties which are in the allOf section
> > - Drop model property (Rob)
> > 
> > Acked-by: Maxime Ripard <maxime@cerno.tech>
> > Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> > ---
> >  .../display/panel/panel-mipi-dbi-spi.yaml     | 125 ++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > new file mode 100644
> > index 000000000000..748c09113168
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - {} # Panel Specific Compatible
> > +      - const: panel-mipi-dbi-spi
> > +
> 
> Rob's bot uses a -m flag I didn't use, and with that the compatible fails:
> 
> $ make DT_CHECKER_FLAGS=-m dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>   CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
>   DTEX
> Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dts
>   DTC
> Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml
>   CHECK
> Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml
> Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml:0:0:
> /example-0/spi/display@0: failed to match any schema with compatible:
> ['sainsmart18', 'panel-mipi-dbi-spi']
> 
> How can I write the compatible property to make the checker happy?

You need to partition the schemas as I outlined before. Given the DBI 
spec does define power and reset, maybe you can get away with 1 schema 
just by changing the '- {}' entry above to an enum with a list of 
compatibles. But as soon as there is a panel with extra or different 
properties, this schema will have to be split. 

Rob
