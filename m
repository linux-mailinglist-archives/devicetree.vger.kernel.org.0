Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 486604ACD3E
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 02:07:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344465AbiBHBDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 20:03:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239667AbiBGXVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 18:21:01 -0500
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0CEFC061355
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 15:21:00 -0800 (PST)
Received: by mail-oo1-f48.google.com with SMTP id c7-20020a4ad207000000b002e7ab4185d2so15545097oos.6
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 15:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=KTjBO+D6w51lndsehH7eTffqqV1R65NE8mNByUSg+rQ=;
        b=5N4OWoOEFmQld4z4O8SLRmTC78mq7I65GI7OS7aThyuebKS9XyO62W7eqHuqvV25HF
         Vf0ItYeyDfjelsOd+JBbwy6PmjAJt0wyg6WwvY0YFwt80SiRI7/zBNUHdteVDpH5OKQM
         2JPUg13THxYmsJyxtAY8aIA+QM4dKL32lhqgMrriuvbdJM4sJ9XiETDr0rMdtMb6wl1G
         pvcU7InZ391Q2bThfgvcsLA6DnPaphpSk3mZf43euZPoa3ijn9dbqwbb19dP/RS5UXgF
         ommtHKlBSXJ5yCFSOpUFR/mjGNleHyH1F0dipzYkUQwyXAYasSgD9qCKx6OhIgYWupRB
         oEuQ==
X-Gm-Message-State: AOAM530ebT+ZdIR45rd9SFRSu7fdnrkkbTIzQ6JMxF3uAq44b5Z2BwzC
        9SweqUuaDC22Ku/QqLZSpw==
X-Google-Smtp-Source: ABdhPJy+cQ2hkA1Dm4VG+Ydq/wSJxDHBBmLy0jg6LEw1cMa5lAFvpNYjiXp41aiAt5BOnXDXylKtgA==
X-Received: by 2002:a05:6870:9884:: with SMTP id eg4mr436317oab.80.1644276060289;
        Mon, 07 Feb 2022 15:21:00 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bg10sm332272oib.33.2022.02.07.15.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 15:20:59 -0800 (PST)
Received: (nullmailer pid 1117233 invoked by uid 1000);
        Mon, 07 Feb 2022 23:20:58 -0000
Date:   Mon, 7 Feb 2022 17:20:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
        thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
Message-ID: <YgGpWo80TvfTknhx@robh.at.kernel.org>
References: <20220125175700.37408-1-noralf@tronnes.org>
 <20220125175700.37408-2-noralf@tronnes.org>
 <20220127093722.hsed3ny3gzk55o7w@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220127093722.hsed3ny3gzk55o7w@houat>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 27, 2022 at 10:37:22AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Tue, Jan 25, 2022 at 06:56:58PM +0100, Noralf Trønnes wrote:
> > Add binding for MIPI DBI compatible SPI panels.
> > 
> > v2:
> > - Fix path for panel-common.yaml
> > - Use unevaluatedProperties
> > - Drop properties which are in the allOf section
> > - Drop model property (Rob)
> > 
> > Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> > ---
> >  .../display/panel/panel-mipi-dbi-spi.yaml     | 59 +++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > new file mode 100644
> > index 000000000000..b7cbeea0f8aa
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MIPI DBI SPI Panels Device Tree Bindings
> > +
> > +maintainers:
> > +  - Noralf Trønnes <noralf@tronnes.org>
> > +
> > +description:
> > +  This binding is for display panels using a MIPI DBI controller
> > +  in SPI mode.
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: panel-mipi-dbi-spi
> 
> You need contains here, otherwise it will error out if you have two compatibles.

Shouldn't it always have 2?

Either way, this has to be split up between a common, shareable schema 
and specific, complete schema(s). Like this:

- A schema for everything common (that allows additional properties)

- A schema for 'panel-mipi-dbi-spi' referencing the common schema plus 
  'unevaluatedProperties: false'

- Schemas for panels with their own additional properties (regulators, 
  GPIOs, etc.)

LVDS was restructured like this IIRC.

> > +  write-only:
> > +    type: boolean
> > +    description:
> > +      Controller is not readable (ie. MISO is not wired up).
> > +
> > +  dc-gpios:
> > +    maxItems: 1
> > +    description: |
> > +      Controller data/command selection (D/CX) in 4-line SPI mode.
> > +      If not set, the controller is in 3-line SPI mode.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    spi {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            display@0{
> > +                    compatible = "panel-mipi-dbi-spi";
> 
> We should have two compatibles in the example too
> 
> Maxime


